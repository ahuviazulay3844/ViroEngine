import { FileQuestion } from 'lucide-react';

import type { CommitmentRow, FieldKey } from '@/api/types';
import { FieldCell } from '@/components/FieldCell';
import { review } from '@/copy/he';
import { ConfidenceRibbon } from '@/design/ConfidenceRibbon';
import { EmptyState } from '@/design/EmptyState';
import { Table, TBody, Th, THead, Tr } from '@/design/Table';
import { COLUMNS } from '@/lib/columns';
import { isFlagged } from '@/lib/level';
import { ltr } from '@/lib/rtl';

export type RowFilter = 'all' | 'review' | 'verified';

export interface SelectedCell {
  rowId: string;
  field: FieldKey;
}

export interface ReviewTableProps {
  rows: readonly CommitmentRow[];
  filter: RowFilter;
  selected: SelectedCell | null;
  onSelectCell?: (cell: SelectedCell) => void;
}

/** Fields of a row that need the technician. */
export function flaggedFields(row: CommitmentRow): FieldKey[] {
  return COLUMNS.filter((column) => {
    const result = row.fields[column.key];
    return result !== undefined && isFlagged(result.level);
  }).map((column) => column.key);
}

/** Rows visible under a filter: "review" keeps a row with any flagged field, "verified" a row
 * with none. */
export function visibleRows(rows: readonly CommitmentRow[], filter: RowFilter): CommitmentRow[] {
  if (filter === 'all') return [...rows];
  const wantFlagged = filter === 'review';
  return rows.filter((row) => flaggedFields(row).length > 0 === wantFlagged);
}

export function ReviewTable({ rows, filter, selected, onSelectCell }: ReviewTableProps) {
  const shown = visibleRows(rows, filter);

  if (shown.length === 0) {
    return (
      <EmptyState
        illustration={<FileQuestion className="size-8" />}
        title={
          rows.length === 0
            ? review.emptyRows
            : filter === 'verified'
              ? review.filteredVerifiedEmpty
              : review.filteredEmpty
        }
      />
    );
  }

  return (
    <div data-review-grid="">
    <Table caption={review.tableCaption}>
      <THead>
        <Tr>
          <Th>{review.rowHeader}</Th>
          {COLUMNS.map((column) => (
            <Th key={column.key}>{column.label}</Th>
          ))}
        </Tr>
      </THead>
      <TBody>
        {shown.map((row) => (
          <Tr key={row.row_id} data-row-level={row.row_level}>
            <Th scope="row" className="relative ps-5 align-middle font-mono text-ink-base">
              <ConfidenceRibbon level={row.row_level} flaggedCount={flaggedFields(row).length} />
              <span className="flex flex-col leading-tight">
                <span className="font-bold text-ink-strong">{ltr(String(rows.indexOf(row) + 1))}</span>
                <span className="whitespace-nowrap text-[11px] text-ink-muted">
                  {review.pageOf(row.page_ids.map((id) => id.split('#').pop() ?? id).join(', '))}
                </span>
              </span>
            </Th>
            {COLUMNS.map((column) => (
              <FieldCell
                key={column.key}
                rowId={row.row_id}
                field={column.key}
                result={row.fields[column.key]}
                selected={selected?.rowId === row.row_id && selected.field === column.key}
                // In "for review" the verified cells step back so only what needs her stands out.
                quiet={filter === 'review'}
                onSelect={(rowId, field) => onSelectCell?.({ rowId, field })}
              />
            ))}
          </Tr>
        ))}
      </TBody>
    </Table>
    </div>
  );
}
