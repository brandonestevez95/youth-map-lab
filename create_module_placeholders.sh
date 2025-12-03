#!/usr/bin/env bash
set -euo pipefail

ensure_file() {
  local file_path="$1"
  mkdir -p "$(dirname "$file_path")"
  if [[ ! -e "$file_path" ]]; then
    echo "Placeholder for $(basename "$file_path")" >"$file_path"
  fi
}

modules=(
  "subject=science|curriculum=curriculum/science/agriculture-climate/satellites-to-seeds|slug=satellites-to-seeds"
  "subject=science|curriculum=curriculum/science/marine-science|slug=marine-science"
  "subject=ela|curriculum=curriculum/ela/storytelling-101/geostorytelling101|slug=geostorytelling101"
  "subject=ela|curriculum=curriculum/ela/literature-mapping|slug=literature-mapping"
  "subject=social-studies|curriculum=curriculum/social-studies/historical-gis/build-a-time-machine|slug=build-a-time-machine"
  "subject=business-cte|curriculum=curriculum/business-cte/business-analyst-site-selection/business101|slug=business101"
  "subject=stem-lego|curriculum=curriculum/stem-lego/lego-city-design|slug=lego-city-design"
  "subject=stem-lego|curriculum=curriculum/stem-lego/disaster-response|slug=disaster-response"
)

for module in "${modules[@]}"; do
  IFS='|' read -r subject_part curriculum_part slug_part <<<"$module"

  subject="${subject_part#subject=}"
  curriculum_path="${curriculum_part#curriculum=}"
  slug="${slug_part#slug=}"

  subpath="${curriculum_path#curriculum/}"

  # Curriculum placeholders
  ensure_file "$curriculum_path/overview.md"
  ensure_file "$curriculum_path/activity-flow.md"
  ensure_file "$curriculum_path/materials-list.md"
  ensure_file "$curriculum_path/dataset-notes.md"
  ensure_file "$curriculum_path/storymap-notes.md"

  # Teacher guides
  teacher_base="teacher-guides/$subpath"
  ensure_file "$teacher_base/facilitator-guide.md"
  ensure_file "$teacher_base/timing-and-variants.md"
  ensure_file "$teacher_base/troubleshooting.md"

  # Student guides
  student_base="student-guides/$subpath"
  ensure_file "$student_base/student-handout.md"
  ensure_file "$student_base/reflection-prompts.md"

  # Alignment
  ensure_file "alignment/nc-standards/$slug.md"
  ensure_file "alignment/national-standards/$slug.md"

  # UDL access variants
  ensure_file "udl-access/low-tech-variants/$slug.md"
  ensure_file "udl-access/high-tech-variants/$slug.md"
  ensure_file "udl-access/english-spanish-translation/${slug}-es.md"

  # ArcGIS apps
  ensure_file "arcgis-apps/$slug/README.md"

  # StoryMap templates
  ensure_file "storymap-templates/${slug}-template.md"

done
