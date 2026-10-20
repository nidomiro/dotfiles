# Git

- Do not stage changes (`git add`, `git commit -a`, …) unless the user allowed staging or asked you to commit. `git mv` and `git rm` are fine for moving and deleting files, as long as they stage nothing but the move or deletion itself; leave every other change unstaged.
- When creating a pull request, always use the repository's PR template (e.g. `.github/pull_request_template.md`) and fill in its sections.
- Never push changes without the user's explicit approval for that specific push. Approval for one push does not authorize any later push.

# Shell

- Commands the user should execute must use fish syntax, unless stated otherwise.

# Environment

- The agent most likely runs inside a sandbox. Docker failures (e.g. socket access, permissions, networking) may be caused by the sandbox rather than by the project.
