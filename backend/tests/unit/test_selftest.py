"""The self-test's scoring (eval/selftest.py): what counts as right, as a silent error, and as
unknown. Pure - no engine, no cloud model, no truth file."""

from __future__ import annotations

import pytest

from backend.core.models import CommitmentRow, ConfidenceLevel, FieldKey, FieldResult, SourceKind
from eval.selftest import classify, main, score, sender_key, tokens


def _result(key: FieldKey, value: str | None, level: ConfidenceLevel) -> FieldResult:
    return FieldResult(
        field=key,
        value=value,
        display_value=value,
        level=level,
        score=1.0 if level is not ConfidenceLevel.D else 0.0,
        source=SourceKind.printed,
        box=None,
        candidates=[],
        validations=[],
        trail=[],
        reason=None if level is not ConfidenceLevel.D else "שני הקוראים לא הסכימו",
        escalated=False,
    )


def _row(
    fields: dict[FieldKey, tuple[str | None, ConfidenceLevel]], centrals: list[str] | None = None
) -> CommitmentRow:
    return CommitmentRow(
        row_id="r1",
        group_id="g1",
        page_ids=["part1.pdf#3"],
        fields={k: _result(k, v, lv) for k, (v, lv) in fields.items()},
        central_numbers=centrals or [],
        row_level=ConfidenceLevel.B,
        status="auto",
    )


@pytest.mark.parametrize(
    ("text", "key"),
    [
        ("מכבי שירותי בריאות", "מכבי"),
        ("כללית (מרכז רפואי כרמל)", "כרמל"),
        ("שמיר", "אסףהרופא"),  # one hospital, two names
    ],
)
def test_institutions_compare_by_their_name_not_their_wording(text: str, key: str) -> None:
    assert sender_key(text) == key


def test_values_compare_by_meaning() -> None:
    assert tokens(FieldKey.receipt_date, "13.8.26") == tokens(FieldKey.receipt_date, "13/08/2026")
    assert tokens(FieldKey.national_id, "011223344") == tokens(FieldKey.national_id, "11223344")
    assert tokens(FieldKey.central_number, "947468; 947469") == {"947468", "947469"}


@pytest.mark.parametrize(
    ("truth", "shown", "green", "expected"),
    [
        ("7254647", ["7254647"], True, "green_right"),
        ("7254647", ["12043017"], True, "GREEN_WRONG"),  # the silent error
        ("7254647", ["7254647"], False, "orange_right"),
        ("7254647", [], False, "orange_other"),
        ("לא ברור", ["123"], True, "truth_unknown"),  # a draft cell is not scored
        (None, ["123"], True, "truth_unknown"),
    ],
)
def test_every_field_lands_in_exactly_one_bin(
    truth: str | None, shown: list[str], green: bool, expected: str
) -> None:
    assert classify(FieldKey.commitment_number, truth, shown, green) == expected


def test_a_page_is_scored_from_its_final_rows() -> None:
    row = _row(
        {
            FieldKey.commitment_number: ("12043017", ConfidenceLevel.B),
            FieldKey.receipt_date: ("30/08/2026", ConfidenceLevel.D),
            FieldKey.central_number: ("948023", ConfidenceLevel.A),
        },
        centrals=["948023"],
    )
    truth = {"מספר התחייבות": "7254647", "תאריך קבלה": "30/08/2026", "מספר מרכזי": "948023"}

    stats, notes = score({(1, 3): [row]}, {(1, 3): truth})

    assert stats[FieldKey.commitment_number]["GREEN_WRONG"] == 1
    assert stats[FieldKey.receipt_date]["orange_right"] == 1
    assert stats[FieldKey.central_number]["green_right"] == 1
    assert FieldKey.first_name not in stats  # no truth for names: not counted
    assert any("GREEN_WRONG" in n and "12043017" in n for n in notes)


def test_nothing_is_read_without_an_explicit_go_ahead(capsys: pytest.CaptureFixture[str]) -> None:
    """A live run spends paid credit: without --live it stops before building the engine."""
    assert main(["truth.xlsx", "part1.pdf"]) == 2
    assert "--live" in capsys.readouterr().out
