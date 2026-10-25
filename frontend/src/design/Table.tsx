import type { HTMLAttributes, ReactNode, TdHTMLAttributes, ThHTMLAttributes } from 'react';

export interface TableProps {
  /** Accessible name of the table, announced by screen readers. */
  caption: string;
  children: ReactNode;
  /** Fit every column into the width and let the page scroll: no inner scroll box. */
  fit?: boolean;
}

/** Real <table> semantics. Columns follow the document direction (right to left in Hebrew). */
export function Table({ caption, children, fit = false }: TableProps) {
  return (
    <div
      className={`rounded-2xl border border-surface-border bg-surface-raised shadow-card ${
        fit ? '' : 'scrollbar-none max-h-[70vh] overflow-auto'
      }`}
    >
      <table
        className={`w-full border-separate border-spacing-0 text-sm ${
          fit
            ? 'table-fixed [&_tbody_tr:last-child>*:first-child]:rounded-es-2xl [&_tbody_tr:last-child>*:last-child]:rounded-ee-2xl'
            : ''
        }`}
      >
        <caption className="sr-only">{caption}</caption>
        {children}
      </table>
    </div>
  );
}

export function THead({ children }: { children: ReactNode }) {
  return (
    <thead className="sticky top-0 z-10 [&_th]:border-b [&_th]:border-surface-border [&_th]:bg-surface-sunken/95 [&_th]:backdrop-blur [&_th:first-child]:rounded-ss-2xl [&_th:last-child]:rounded-se-2xl">
      {children}
    </thead>
  );
}

export function TBody({ children }: { children: ReactNode }) {
  return <tbody>{children}</tbody>;
}

export function Tr({ className, ...rest }: HTMLAttributes<HTMLTableRowElement>) {
  return (
    <tr
      className={className ?? '[&>*]:border-b [&>*]:border-surface-border/70 last:[&>*]:border-b-0'}
      {...rest}
    />
  );
}

export function Th({ scope = 'col', className, ...rest }: ThHTMLAttributes<HTMLTableCellElement>) {
  return (
    <th
      scope={scope}
      className={`whitespace-nowrap px-4 py-3 text-start text-xs font-semibold text-ink-muted ${className ?? ''}`}
      {...rest}
    />
  );
}

export function Td({ className, ...rest }: TdHTMLAttributes<HTMLTableCellElement>) {
  return <td className={`align-top ${className ?? ''}`} {...rest} />;
}
