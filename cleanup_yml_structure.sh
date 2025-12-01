#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="cleanup-log.md"

ensure_log_header() {
  if [[ ! -f "$LOG_FILE" ]]; then
    cat <<'LOG' > "$LOG_FILE"
# Cleanup Log

| Action | Original Location | New Location | Notes |
| --- | --- | --- | --- |
LOG
  elif ! grep -q '^| --- | --- | --- | --- |' "$LOG_FILE"; then
    sed -i '1i# Cleanup Log\n\n| Action | Original Location | New Location | Notes |\n| --- | --- | --- | --- |' "$LOG_FILE"
  fi
}

log_action() {
  local action="$1" src="$2" dst="$3" note="$4"
  ensure_log_header
  echo "| ${action} | ${src} | ${dst} | ${note} |" >> "$LOG_FILE"
}

# Remove README placeholders that were only created to fill empty folders
remove_placeholder_readmes() {
  while IFS= read -r -d '' readme; do
    if grep -qx '# Placeholder for .*' "$readme"; then
      log_action "delete" "$readme" "-" "Removed placeholder README"
      rm -f "$readme"
    fi
  done < <(find . -name README.md -type f -print0)
}

# Ensure the intended directory tree exists
ensure_base_directories() {
  local base_dirs=(
    "curriculum/science/marine-science"
    "curriculum/science/agriculture-climate"
    "curriculum/science/sustainability-landcover"
    "curriculum/science/precision-ag"
    "curriculum/ela/literature-mapping"
    "curriculum/ela/storytelling-101"
    "curriculum/ela/personal-narratives"
    "curriculum/social-studies/local-history"
    "curriculum/social-studies/civics-mapping"
    "curriculum/social-studies/historical-gis"
    "curriculum/business-cte/business-analyst-site-selection"
    "curriculum/business-cte/demographic-analysis"
    "curriculum/business-cte/entrepreneurship-storymaps"
    "curriculum/stem-lego/lego-city-design"
    "curriculum/stem-lego/disaster-response"
    "curriculum/stem-lego/sensors-engineering-gis"
    "teacher-guides"
    "student-guides"
    "storymap-templates"
    "arcgis-apps"
    "videos"
    "udl-access/low-tech-variants"
    "udl-access/high-tech-variants"
    "udl-access/english-spanish-translation"
    "alignment/nc-standards"
    "alignment/national-standards"
    "leadership/onboarding"
    "leadership/contributor-guides"
    "leadership/team-resources"
    "showcase/student-work-examples"
    "showcase/teacher-spotlights"
    "showcase/district-projects"
    "archival-orphans"
  )

  for dir in "${base_dirs[@]}"; do
    mkdir -p "$dir"
  done
}

move_contents_up() {
  local src="$1" dest="$2"
  if [[ -d "$src" && -d "$dest" ]]; then
    shopt -s dotglob nullglob
    for item in "$src"/*; do
      mv "$item" "$dest/"
      log_action "move" "$item" "$dest/$(basename "$item")" "Flattened from nested directory"
    done
    shopt -u dotglob nullglob
    rmdir --ignore-fail-on-non-empty "$src"
  fi
}

rename_and_flatten() {
  local src_dir="$1" new_name="$2" parent="$3"
  local target_dir="$parent/$new_name"

  if [[ -d "$src_dir" ]]; then
    mkdir -p "$target_dir"
    move_contents_up "$src_dir" "$target_dir"
    rmdir --ignore-fail-on-non-empty "$src_dir" 2>/dev/null || true
  fi
}

flatten_nested_modules() {
  # Satellites to Seeds
  move_contents_up "curriculum/science/agriculture-climate/satellites-to-seeds" "curriculum/science/agriculture-climate"
  move_contents_up "teacher-guides/agriculture-climate/satellites-to-seeds" "teacher-guides/agriculture-climate"
  move_contents_up "student-guides/agriculture-climate/satellites-to-seeds" "student-guides/agriculture-climate"

  # Storytelling rename
  rename_and_flatten "curriculum/ela/storytelling-101/geostorytelling101" "storytelling-basics" "curriculum/ela/storytelling-101"
  rename_and_flatten "teacher-guides/ela/storytelling-101/geostorytelling101" "storytelling-basics" "teacher-guides/ela/storytelling-101"

  # Business rename
  rename_and_flatten "teacher-guides/business-cte/business-analyst-site-selection/business101" "intro-to-business-analysis" "teacher-guides/business-cte/business-analyst-site-selection"
  rename_and_flatten "curriculum/business-cte/business-analyst-site-selection/business101" "intro-to-business-analysis" "curriculum/business-cte/business-analyst-site-selection"

  # Build a Time Machine paper maps
  move_contents_up "teacher-guides/social-studies/historical-gis/build-a-time-machine/paper-maps" "teacher-guides/social-studies/historical-gis/build-a-time-machine"
}

cleanup_empty_dirs() {
  find . -type d -empty -not -path './.git*' -print0 | while IFS= read -r -d '' dir; do
    case "$dir" in
      ./archival-orphans|./curriculum|./teacher-guides|./student-guides|./storymap-templates|./arcgis-apps|./videos|./udl-access|./alignment|./leadership|./showcase)
        continue ;;
    esac
    rmdir "$dir" 2>/dev/null || true
  done
}

print_final_tree() {
  echo "\nFinal corrected repo tree:"
  find . -maxdepth 3 -type d | sed 's|^\.|/youth-map-lab|'
}

main() {
  ensure_log_header
  ensure_base_directories
  remove_placeholder_readmes
  flatten_nested_modules
  cleanup_empty_dirs
  print_final_tree
}

main "$@"
