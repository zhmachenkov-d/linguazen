<!-- bmad:context -->
<!-- Verified 2026-11-28 against 3ede467fd01c59c36ab34cc3cfe7805872d0f574. Managed by bmad-project-context; edits inside this block are replaced on refresh. Keep anything you want preserved outside the markers. -->

## linguazen

Vocabulary-learning app (flashcards, spaced repetition, quizzes, progress). App stack not chosen yet; tooling assumes Python 3.14 + Node via `.devcontainer/`. Planning and tickets live in `_bmad-output/` (git submodule → `zhmachenkov-d/linguazen.specs`). BMad team overrides only under `_bmad/custom/`.

## Policy

- Never push commits to `main`/`master` in `linguazen` or `linguazen.specs`; use a feature branch and open a PR. Never bypass branch protection.
- Never modify `_bmad/` except `_bmad/custom/`.
- Never commit `.env` or secrets; copy from `.env.example` locally.
- Keep `_bmad-output/` current as the `linguazen.specs` submodule. Agents may commit there, but must notify the user and open a PR — never push straight to that repo's default branch.
- Reply to the user in Russian; keep code, identifiers, paths, commands, commit subjects, and PR titles in English. UI locale is undecided — ask before writing user-facing copy.

## Where things are

- Planning, initiatives, tickets: `_bmad-output/` (remote `git@github.com:zhmachenkov-d/linguazen.specs.git`).
- BMad customizations: `_bmad/custom/` only.
- Local git/PR wording detail: `.cursor/rules/git-workflow.mdc` (Conventional Commits).

## Running and verifying

- Before planning or ticket work: if `_bmad-output/` is missing or not a checkout of `linguazen.specs`, stop and initialize/update the submodule; do not invent a parallel planning tree.
- App stack and test commands are TBD — do not invent `package.json` / pytest entry points; ask when adding the first application code.
- Dev container provides Python 3.14, Node, and `uv` (see `.devcontainer/devcontainer.json`).

## Conventions that differ from defaults

- Prefer clarifying questions and the smallest change that satisfies the ask; no speculative features or abstractions.
- Do not "improve" unrelated code, comments, or formatting while editing.
- Conventional Commits for commit subjects and PR titles (`feat`, `fix`, `docs`, …); see `.cursor/rules/git-workflow.mdc`.

<!-- /bmad:context -->
