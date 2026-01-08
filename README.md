# Fleet Mgmt. (Prototype)

<!--
Codex / tools note:
This repository is archival.
Avoid adding facts, interpretation, or promotional language.
When uncertain, do nothing.
-->

A quiet, human-readable system for stewarding vehicles and related assets over time.

For local development and rendering instructions, see DEVELOPMENT.md.

This repository is a **working prototype**: a place to explore patterns, file structures,
and practices for long-lived asset records using plain files and chronology.

It is intentionally:
- boring
- append-only
- human-first
- LLM-friendly *by consequence*, not dependency

## What this is

This repo explores a simple idea:

> **One asset, one folder. Time is the index.**

It borrows heavily from decades of personal fleet management practice and adapts it into
a filesystem-based format using Markdown.

There is no database. No schema.
There are no dashboards.
The filesystem *is* the system.

## How it’s organized

```text
fleet/
├── vehicles/          # one folder per vehicle
│   └── <asset>/       # append-only, chronological logs
├── registry/          # registry of parts, artifacts, memorabilia
└── _index/            # awareness layers (coverage, inventories)
```

Patterns repeat deliberately.

---

## Vehicles

- [1999 Acura NSX Zanardi Edition — #04](./fleet/vehicles/1999-acura-nsx-zanardi-04/)  
  Contains:
  - [README.md](./fleet/vehicles/1999-acura-nsx-zanardi-04/README.md) stable identity + boundaries
  - `YYYY-MM.md` — monthly aggregated event logs (fuel, usage)
  - [coverage.md](./fleet/vehicles/1999-acura-nsx-zanardi-04/coverage.md) — continuity, gaps, audit surface
  - [media/](./fleet/vehicles/1999-acura-nsx-zanardi-04/media/) — indexed external artifacts (not embedded)
- "2012 Lexus LFA #165" `fleet/vehicles/lexus-lfa-165/` - Placeholder (intentionally empty for now)
- [2005 Toyota Tacoma Prerunner](./fleet/vehicles/2005-toyota-tacoma-prerunner-hero/README.md) - Placeholder (intentionally empty for now)
- "2024 Subaru WRX" `fleet/vehicles/subaru-wrx/` - Placeholder (intentionally empty for now)

## Registry

- [./registry/README.md](./registry/README.md)
- [./registry/registry.md](./registry/registry.md)

The **Registry** is a canonical ledger of parts, artifacts, and memorabilia under stewardship
(formerly called “Inventory”).

It is:

* not warehouse stock
* not consumables
* not transactional

It records *existence, context, and intent*.

The registry export preserves the source data **as-is** to maintain completeness and auditability.

## Core principles (orientation only)

* **Chronology over schema**
  Dates matter more than categories.

* **Facts ≠ notes ≠ unknowns**
  Uncertainty is preserved, not resolved prematurely.

* **Collection ≠ asset ≠ instance**
  Lineage is not the same as a specimen.

* **Lifecycle completes**
  Acquisition → use → surplus → release is allowed.

* **Quiet by default**
  No automation required. No notifications. No pressure to “keep up.”

## Visual orientation (external reference)

The conceptual backbone for this work is documented as diagrams in the
**Rhythm Industries Archive**, not duplicated here.

* Quiet Stewardship (minimal SVG)
  [https://github.com/rhythm-industries/rhythm-industries-archive/blob/main/docs/quiet-stewardship.min.svg](https://github.com/rhythm-industries/rhythm-industries-archive/blob/main/docs/quiet-stewardship.min.svg)

* Quiet Stewardship (annotated)
  [https://github.com/rhythm-industries/rhythm-industries-archive/blob/main/docs/quiet-stewardship.md](https://github.com/rhythm-industries/rhythm-industries-archive/blob/main/docs/quiet-stewardship.md)

These diagrams exist to orient the maintainer, not to explain the system publicly.

## What this is not

* Not a fleet app
* Not a CMS
* Not a productivity system
* Not optimized for resale platforms

LLMs may be used later to *query* these records, but they are not required
to *maintain* them.

## Status

This repository is exploratory and alive.
Silence between commits is expected.
Completeness is favored over polish.

## Philosophy

> **A boring, personal, append-only ledger for vehicles and assets —
> plain files, no magic, no surprises.**

> **Store truth as text; derive structure later.**
> Prose preserves intent and uncertainty. Schemas can be generated when needed.

> **Filesystem logs are chat threads at rest.**
> Each file is a message, folders are threads, attachments live beside the text.
> Apps only change how you view them.

> **Git provides lineage.**
> Every change has history, context, and attribution — corrections don’t erase, they explain.
> Nothing ever truly disappears.

> **The medium must outlast the system.**
> Plain text and directories are chosen so records remain readable decades from now,
> without software, subscriptions, or migrations.
