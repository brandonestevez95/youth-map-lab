#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="migration-log.md"

ensure_log_header() {
  if [[ ! -f "$LOG_FILE" ]]; then
    cat <<'LOG' > "$LOG_FILE"
# Migration Log

| Original Location | New Location |
| --- | --- |
LOG
  elif ! grep -q '^| --- | --- |' "$LOG_FILE"; then
    sed -i '1i# Migration Log\n\n| Original Location | New Location |\n| --- | --- |' "$LOG_FILE"
  fi
}

log_move() {
  local src="$1" dst="$2"
  ensure_log_header
  echo "| ${src} | ${dst} |" >> "$LOG_FILE"
}

create_directories() {
  local dirs=(
    "curriculum/science/marine-science"
    "curriculum/science/agriculture-climate/satellites-to-seeds"
    "curriculum/science/sustainability-landcover"
    "curriculum/science/precision-ag"
    "curriculum/ela/literature-mapping"
    "curriculum/ela/storytelling-101/geostorytelling101"
    "curriculum/ela/personal-narratives"
    "curriculum/social-studies/local-history"
    "curriculum/social-studies/civics-mapping"
    "curriculum/social-studies/historical-gis/build-a-time-machine"
    "curriculum/business-cte/business-analyst-site-selection/business101"
    "curriculum/business-cte/demographic-analysis"
    "curriculum/business-cte/entrepreneurship-storymaps"
    "curriculum/stem-lego/lego-city-design"
    "curriculum/stem-lego/disaster-response"
    "curriculum/stem-lego/sensors-engineering-gis"
    "teacher-guides/agriculture-climate/satellites-to-seeds"
    "teacher-guides/stem-lego/lego-city-design"
    "teacher-guides/social-studies/historical-gis/build-a-time-machine"
    "teacher-guides/ela/storytelling-101/geostorytelling101"
    "teacher-guides/business-cte/business-analyst-site-selection/business101"
    "teacher-guides/workshop-templates"
    "student-guides/agriculture-climate/satellites-to-seeds"
    "student-guides/stem-lego/lego-city-design"
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

  for dir in "${dirs[@]}"; do
    mkdir -p "$dir"
  done
}

create_templates() {
  cat <<'T1' > teacher-guides/teacher-guide-template.md
# Teacher Guide Template

Use this template to outline lesson goals, materials, setup, and facilitation notes.
T1

  cat <<'T2' > student-guides/student-handout-template.md
# Student Handout Template

Provide learning objectives, step-by-step tasks, and reflection prompts for students.
T2

  cat <<'T3' > storymap-templates/storymap-template-placeholder.md
# StoryMap Template Placeholder

Add ArcGIS StoryMap JSON exports or links to reusable templates here.
T3

  cat <<'T4' > arcgis-apps/arcgis-app-placeholder.md
# ArcGIS App Placeholder

Store ArcGIS Experience Builder apps, web app configs, or widgets here.
T4

  cat <<'T5' > udl-access/udl-template.md
# UDL Template

Document accessibility strategies, accommodations, and alternative formats.
T5

  cat <<'T6' > alignment/national-standards/alignment-placeholder.md
# Alignment Placeholder

List national standards mappings for each module.
T6

  cat <<'T7' > leadership/onboarding/onboarding.md
# Onboarding

Quick start guide for new facilitators and contributors.
T7

  cat <<'T8' > leadership/contributor-guides/contributor-guide.md
# Contributor Guide

Standards for contributions, review processes, and communication norms.
T8
}

move_if_exists() {
  local src="$1" dst="$2"
  if [[ -f "$src" ]]; then
    mkdir -p "$(dirname "$dst")"
    mv "$src" "$dst"
    log_move "$src" "$dst"
  fi
}

move_known_items() {
  move_if_exists "modules/satellites-to-seeds/facilitator-guide.md" "teacher-guides/agriculture-climate/satellites-to-seeds/facilitator-guide.md"
  move_if_exists "modules/satellites-to-seeds/SatellitesToSeeds-StudentWorksheet.docx" "student-guides/agriculture-climate/satellites-to-seeds/SatellitesToSeeds-StudentWorksheet.docx"
  move_if_exists "modules/satellites-to-seeds/SatellitesToSeeds-StudentWorksheet.pdf" "student-guides/agriculture-climate/satellites-to-seeds/SatellitesToSeeds-StudentWorksheet.pdf"
  move_if_exists "modules/satellites-to-seeds/Satellites to Seeds Workshop Outline.docx" "teacher-guides/agriculture-climate/satellites-to-seeds/Satellites to Seeds Workshop Outline.docx"
  move_if_exists "modules/satellites-to-seeds/SatellitesToSeedsPresentation.pptx" "teacher-guides/agriculture-climate/satellites-to-seeds/SatellitesToSeedsPresentation.pptx"
  move_if_exists "modules/satellites-to-seeds/CropParameterCards.docx" "student-guides/agriculture-climate/satellites-to-seeds/CropParameterCards.docx"
  move_if_exists "modules/satellites-to-seeds/Satellites to Seeds.png" "curriculum/science/agriculture-climate/satellites-to-seeds/Satellites to Seeds.png"
  move_if_exists "modules/lego-cities/facilitator-guide.md" "teacher-guides/stem-lego/lego-city-design/facilitator-guide.md"
  move_if_exists "modules/lego-cities/lego-play.csv" "student-guides/stem-lego/lego-city-design/lego-play.csv"
  move_if_exists "modules/build-a-time-machine/BuildATimeMachinePresentation.pptx" "teacher-guides/social-studies/historical-gis/build-a-time-machine/BuildATimeMachinePresentation.pptx"
  move_if_exists "modules/build-a-time-machine/facilitator-guide.md" "teacher-guides/social-studies/historical-gis/build-a-time-machine/facilitator-guide.md"
  move_if_exists "modules/build-a-time-machine/paper-maps/enhancedcontrastmap.pdf" "teacher-guides/social-studies/historical-gis/build-a-time-machine/paper-maps/enhancedcontrastmap.pdf"
  move_if_exists "modules/build-a-time-machine/paper-maps/outlinemap.pdf" "teacher-guides/social-studies/historical-gis/build-a-time-machine/paper-maps/outlinemap.pdf"
  move_if_exists "modules/build-a-time-machine/BuildTimeMachineAI.png" "curriculum/social-studies/historical-gis/build-a-time-machine/BuildTimeMachineAI.png"
  move_if_exists "modules/geostorytelling101/facilitator-guide.md" "teacher-guides/ela/storytelling-101/geostorytelling101/facilitator-guide.md"
  move_if_exists "modules/business101/facilitator-guide.md" "teacher-guides/business-cte/business-analyst-site-selection/business101/facilitator-guide.md"
  move_if_exists "facilitator-resources/Getting-Started.md" "leadership/onboarding/Getting-Started.md"
  move_if_exists "CONTRIBUTING.md" "leadership/contributor-guides/CONTRIBUTING.md"
  move_if_exists "shared-assets/workshop-templates/outline-template.md" "teacher-guides/workshop-templates/outline-template.md"
  move_if_exists "modules/satellites-to-seeds/paper-maps/Annual Precipitation Map.pdf" "teacher-guides/agriculture-climate/satellites-to-seeds/paper-maps/Annual Precipitation Map.pdf"
  move_if_exists "modules/satellites-to-seeds/paper-maps/Drought Risk Map.pdf" "teacher-guides/agriculture-climate/satellites-to-seeds/paper-maps/Drought Risk Map.pdf"
  move_if_exists "modules/satellites-to-seeds/paper-maps/README.md" "teacher-guides/agriculture-climate/satellites-to-seeds/paper-maps/README.md"
  move_if_exists "modules/satellites-to-seeds/paper-maps/Soil and Carbon Density Map.pdf" "teacher-guides/agriculture-climate/satellites-to-seeds/paper-maps/Soil and Carbon Density Map.pdf"
  move_if_exists "modules/satellites-to-seeds/paper-maps/USDA Hardiness Zone Map.pdf" "teacher-guides/agriculture-climate/satellites-to-seeds/paper-maps/USDA Hardiness Zone Map.pdf"
}

move_uncategorized_to_archival() {
  if [[ -d modules ]]; then
    while IFS= read -r -d '' file; do
      local target="archival-orphans/$(basename "$file")"
      mv "$file" "$target"
      log_move "$file" "$target"
    done < <(find modules -type f -print0)
    find modules -type d -empty -delete
  fi
  if [[ -d facilitator-resources ]]; then
    while IFS= read -r -d '' file; do
      local target="archival-orphans/$(basename "$file")"
      mv "$file" "$target"
      log_move "$file" "$target"
    done < <(find facilitator-resources -type f -print0)
    find facilitator-resources -type d -empty -delete
  fi
  if [[ -d shared-assets ]]; then
    while IFS= read -r -d '' file; do
      local target="archival-orphans/$(basename "$file")"
      mv "$file" "$target"
      log_move "$file" "$target"
    done < <(find shared-assets -type f -print0)
    find shared-assets -type d -empty -delete
  fi
}

add_placeholder_readmes() {
  find . -path './.git' -prune -o -type d -print | while read -r dir; do
    [[ "$dir" == "." ]] && continue
    if [[ -z "$(find "$dir" -mindepth 1 -maxdepth 1 ! -name 'README.md' -print -quit)" ]]; then
      echo "# Placeholder for $(basename "$dir")" > "$dir/README.md"
    fi
  done
}

main() {
  create_directories
  create_templates
  move_known_items
  move_uncategorized_to_archival
  add_placeholder_readmes
}

main "$@"
