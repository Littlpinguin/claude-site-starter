# Components catalog

Reusable HTML/CSS patterns available in this project. Auto-updated by `/new-page` and `/new-section` when a new pattern is introduced. Keep entries compact — the goal is quick recall for Claude, not a design-system book.

## Layout

| Component | Class | Where | Purpose |
|---|---|---|---|
| Page container | `.container` | `main.css` | Centered max-width wrapper, responsive padding |
| Section defaults | `section` | `main.css` | Vertical rhythm + overflow clip |

## Navigation

| Component | Class | Purpose |
|---|---|---|
| Fixed nav | `nav` + `nav.scrolled` | Header with scroll-triggered glass blur |
| Mobile drawer | `.nav-links.open` | Hamburger-triggered side drawer under 860px |

## CTAs

| Component | Class | Purpose |
|---|---|---|
| Primary button | `.btn-primary` | Filled accent, pill |
| Secondary button | `.btn-secondary` | Outlined, pill |

## Motion

| Component | Class | Purpose |
|---|---|---|
| Reveal on scroll | `.reveal` / `.reveal.visible` | IntersectionObserver fade-up |
| Scroll progress | `#scrollProgress` | Bottom-fixed progress bar |
| Back to top | `#scrollTop` | Fixed button appearing after 600px scroll |

## Utilities

| Class | Purpose |
|---|---|
| `.script` | Apply display font |
| `.accent` | Accent color |
| `.soft` | Secondary text color |
| `.sr-only` | Visually hidden, screen-reader accessible |

## Blog / Projects / Legal

See `home.css`, `blog.css`, `projects.css`, `legal.css`. Components grow per page. Plan 3 adds the full blog component library (callouts, blockquote, code blocks, tables, FAQ, podcast player).
