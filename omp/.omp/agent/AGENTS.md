# Git

- Do not stage changes (`git add`, `git commit -a`, …) unless the user allowed staging or asked you to commit. `git mv` and `git rm` are fine for moving and deleting files, as long as they stage nothing but the move or deletion itself; leave every other change unstaged.
- When creating a pull request, always use the repository's PR template (e.g. `.github/pull_request_template.md`) and fill in its sections.
- Never push changes without the user's explicit approval for that specific push. Approval for one push does not authorize any later push.
- Do not unstage changes (`git restore --staged`, `git reset`, `git rm --cached`, …) unless the user explicitly tells you to.
- When instructed to commit and commit signing fails, do not investigate. Commit without signing (e.g. `git -c commit.gpgsign=false commit …`). The failure is caused by the sandbox.

# Shell

- Commands the user should execute must use fish syntax, unless stated otherwise.

# Testing

- Do not abstract tests to the same level as production code. The tested logic MUST stay visible from the test case itself, without jumping between helper methods.
- Prefer explicit tests. Some duplication in tests is wanted, up to a point.
- Assert multiple properties of the same result (object, record, collection, …) in one assertion against the full expected value, not one assertion per property, whenever the language and test framework allow it. Most frameworks abort on the first failed assertion, so split assertions only reveal one mismatch per run; a single structural comparison shows every wrong value in one diff. Ignore irrelevant parts explicitly within that assertion (e.g. via matchers or placeholders) rather than leaving them out. Independent results, or guard assertions needed before further access is safe, may stay separate.
- Fix bugs with a red-green procedure: first write a test that reproduces the bug and confirm it fails (red), then fix the bug and confirm the test passes (green). Always attempt this before fixing.

# Environment

- The agent most likely runs inside a sandbox. Docker failures (e.g. socket access, permissions, networking) may be caused by the sandbox rather than by the project.
