import { Maximize2 } from 'lucide-react';
import { useState } from 'react';

import type { Box } from '@/api/types';
import { review } from '@/copy/he';
import { Dialog } from '@/design/Dialog';
import { useCrop } from '@/lib/useCrop';
import type { CropClient } from '@/lib/useCrop';

/** Magnification of the enlarged view. A structural default from the plan (×3), not a tuned threshold. */
const DEFAULT_ZOOM = 3;

export interface EvidenceLensProps {
  jobId: string;
  pageId: string;
  box: Box | null;
  /** Default 3. */
  zoom?: number;
  /** Accessible description of what is shown, e.g. the field name. */
  label?: string;
  /** Injected in tests; the app uses the configured client. */
  client?: CropClient;
}

function percent(value: number): string {
  return `${value * 100}%`;
}

/**
 * Shows where a field was read: a page locator whose frame glides to the field's box (the motion
 * is what makes the spatial relationship legible), and the crop beside it, fitted to the panel
 * so it is read at a glance without scrolling; a click opens it large.
 * A missing image or box renders a placeholder, never an error.
 */
export function EvidenceLens({ jobId, pageId, box, zoom = DEFAULT_ZOOM, label = '', client }: EvidenceLensProps) {
  const crop = useCrop(jobId, pageId, box, undefined, client);
  const [enlarged, setEnlarged] = useState(false);

  if (box === null) {
    return (
      <p data-lens="no-box" className="text-sm text-ink-muted">
        {review.lensNoBox}
      </p>
    );
  }

  const [top, left, bottom, right] = box;

  return (
    <figure data-lens="ready" data-zoom={zoom} className="flex flex-col gap-3">
      <div className="flex items-start gap-3">
        {/* The page is not mirrored in RTL, so the locator is explicitly left to right. */}
        <div
          dir="ltr"
          role="img"
          aria-label={review.pageLocator}
          className="relative aspect-[1/1.414] w-20 shrink-0 rounded-sm border border-surface-border bg-surface-sunken"
        >
          <div
            data-testid="lens-frame"
            data-box={box.join(',')}
            className="absolute rounded-sm border-2 border-accent-500 bg-accent-100/60 transition-[top,left,width,height] duration-base ease-token motion-reduce:transition-none"
            style={{
              top: percent(top),
              left: percent(left),
              height: percent(bottom - top),
              width: percent(right - left),
            }}
          />
        </div>

        <div className="min-w-0 flex-1">
          {crop.isError ? (
            <p data-lens="missing" role="status" className="text-sm text-ink-muted">
              {review.lensMissing}
            </p>
          ) : crop.url === null ? (
            <p data-lens="loading" role="status" className="text-sm text-ink-muted">
              {review.lensLoading}
            </p>
          ) : (
            // The whole crop fits the panel: nothing to scroll. A click opens it large.
            <button
              type="button"
              onClick={() => setEnlarged(true)}
              title={review.lensEnlarge}
              className="group relative block w-full cursor-zoom-in overflow-hidden rounded-md border border-surface-border bg-surface-raised"
            >
              <img
                src={crop.url}
                alt={review.lensAlt(label)}
                className="mx-auto block h-auto max-h-80 w-full object-contain"
              />
              <span className="absolute bottom-1 end-1 inline-flex items-center gap-1 rounded-pill bg-primary-900/75 px-2 py-0.5 text-[11px] text-ink-inverse opacity-80 group-hover:opacity-100">
                <Maximize2 aria-hidden="true" className="size-3" />
                {review.lensEnlarge}
              </span>
            </button>
          )}
        </div>
      </div>
      {crop.url !== null ? (
        <Dialog open={enlarged} onOpenChange={setEnlarged} title={label || review.lensRegion} wide>
          <img
            src={crop.url}
            alt={review.lensAlt(label)}
            className="mx-auto block max-h-[75vh] w-full object-contain"
          />
        </Dialog>
      ) : null}
    </figure>
  );
}
