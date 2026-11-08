#!/usr/bin/env bash
# Stage one generated report under reports/<slug>/ with the canonical file names the index expects:
# report.md, report.html and the five YAML tables. Usage: scripts/stage-report.sh <slug> <report-dir>
# where <report-dir> is the --out of `session-report build` (devin-report-<slug>.{md,html}, yaml/<slug>/*.yaml).
set -euo pipefail
slug=${1:?slug} src=${2:?report dir}
root=$(cd "$(dirname "$0")/.." && pwd)
dst="$root/reports/$slug"
rm -rf "$dst" && mkdir -p "$dst"
cp "$src/devin-report-$slug.md" "$dst/report.md"
cp "$src/devin-report-$slug.html" "$dst/report.html"
for t in report project_totals working_by_day sessions session_days; do cp "$src/yaml/$slug/$t.yaml" "$dst/$t.yaml"; done
echo "staged reports/$slug: $(ls "$dst" | wc -l) files"
