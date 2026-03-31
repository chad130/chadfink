#!/usr/bin/env bash
set -euo pipefail

if [[ $# -eq 0 ]]; then
  echo "Usage: ./scripts/new-post.sh \"My new post\""
  exit 1
fi

TITLE="$*"
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')

hugo new "content/posts/${SLUG}.md"

# Keep title exactly as typed.
sed -i "s/^title: .*/title: \"${TITLE//\"/\\\"}\"/" "content/posts/${SLUG}.md"

echo "Created content/posts/${SLUG}.md"
echo "Next: edit it, then set draft: false"
