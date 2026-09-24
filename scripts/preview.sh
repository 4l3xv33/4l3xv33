#!/usr/bin/env bash
set -euo pipefail

site_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
workspace_work="$(cd -- "$site_dir/../.." && pwd)/work"
if [[ -x "$workspace_work/jekyll-runtime/bin/ruby" ]]; then
  export PATH="$workspace_work/jekyll-runtime/bin:$PATH"
  export BUNDLE_USER_HOME="$workspace_work/bundle-home"
  export BUNDLE_PATH="$workspace_work/jekyll-gems"
fi

cd -- "$site_dir"
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
