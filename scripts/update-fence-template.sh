#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
target="$repo_root/fence/.config/fence/original-templates/code.jsonc"
url="https://raw.githubusercontent.com/fencesandbox/fence/main/internal/templates/code.json"

target_dir="$(dirname "$target")"
mkdir -p "$target_dir"
tmpfile="$(mktemp "$target.XXXXXX")"
trap 'rm -f "$tmpfile"' EXIT

curl --fail --location --silent --show-error --retry 3 "$url" --output "$tmpfile"
test -s "$tmpfile"
mv "$tmpfile" "$target"
printf 'Updated %s from %s\n' "$target" "$url"
