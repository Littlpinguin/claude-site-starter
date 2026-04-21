# Contributing

Thanks for considering a contribution.

## Adding a module

A module is a self-contained folder under `modules/<name>/` with:
- `README.md` — purpose, options, dependencies.
- Templates (HTML / CSS / JS / PHP `*.example` if needed).
- `install.md` — step-by-step of what the setup wizard does to activate the module.

## Testing changes

Before opening a PR, run the module through `/start-new-site` on a fresh directory and confirm it installs, deploys to a staging URL, and passes `/audit-brand`.

## Commit style

Short imperative subject (`add`, `fix`, `refactor`). Reference the module or phase in the body when relevant.
