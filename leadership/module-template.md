# 🌍 Youth Map Lab  
# Module Creation Template & SOP  
*The official blueprint for building new YML workshops, units, and micro-modules.*

---

# 🎯 Purpose of This SOP
This document ensures that every Youth Map Lab module—no matter who creates it—follows the same high-standard playbook:

- Plug-and-play for teachers  
- UDL-aligned for diverse learners  
- Ethical and accurate for AI use  
- Compatible with district curriculum adoption  
- Easy to host, maintain, and version in GitHub + GitBook  
- Consistent with YML branding and student experience  

This template must be used for every new workshop (science, civics, history, climate, AI, agriculture, etc.).

---

# 📁 Required Folder Structure (GitHub)

Every module lives inside:

/curriculum////
overview.md
activity-flow.md
materials-list.md
dataset-notes.md
storymap-notes.md

Optional:

/student-guides///.md
/teacher-guides///.md
/alignment//.md

Never rename these core files. GitBook depends on them for navigation.

---

# 🧱 Required Files & Their Purpose

## 1. overview.md
A polished, teacher-facing summary.

Must include:
- Module purpose + grade band  
- Learning goals  
- Versions A (low tech), B (standard), C (advanced)  
- Essential Questions  
- Artifact list  
- Standards summary  
- Quick navigation links  
- YML contact footer  

Tone = clear, inviting, teacher-first.

---

## 2. activity-flow.md
The facilitator playbook.

Must include:
- Version A (low-tech)  
- Version B (standard classroom, MVP)  
- Version C (advanced w/ facilitators)  
- Detailed timing  
- Teacher language + prompts  
- UDL scaffolds (roles, sentence starters, visual cues)  
- Classroom management tips  
- Risk mitigation (AI safety, misconceptions, pacing)  

---

## 3. materials-list.md
Everything required for teacher prep.

Must include:
- Tech list  
- Printing list  
- No-internet / no-device backup kit  
- Optional enhancements  
- UDL access notes (colorblind safe palettes, printed worksheets)  

---

## 4. dataset-notes.md
Technical notes for GIS layers + AI models.

Must include:
- Source  
- What the layer means  
- How students should interpret it  
- Pedagogical cautions (e.g., NDVI ≠ diagnosis)  
- Links to AGOL items / raster datasets  

This is where you protect teachers from misusing geospatial data.

---

## 5. storymap-notes.md
Reflection, export, and showcase instructions.

Must include:
- Reflection prompts  
- Assessment criteria / rubric-lite  
- Sentence starters  
- YML branding (“Made with Youth Map Lab”)  
- Optional StoryMap extension  

This reinforces learning outcomes.

---

# 🧩 Optional Files (when needed)

### student-handout.md
- Guided worksheet  
- Tiered vocabulary  
- UDL features (icons, sentence frames, low-text version)

### facilitator-guide.md
If running as a longer unit.

### alignment/nc-standards/module.md
Full unpacking of DPI/NCSS/NGSS, etc.

---

# 🧭 Step-By-Step: How to Build a New Module

## Step 1 — Define the Core Idea
Answer these:

1. What real-world problem is the module helping students understand?  
2. What GIS skills does it teach?  
3. What AI or computational thinking skill does it demonstrate?  
4. What is the story students will travel through?  
5. What artifact will students produce?  

---

## Step 2 — Write the “North Star Summary”
One paragraph explaining:

- Why this exists  
- What students will do  
- Why it matters for the world  
- How AI/GIS help solve the problem  

This becomes the top of `overview.md`.

---

## Step 3 — Design Version B (The MVP)
This is your default. Keep it:

- 45–60 minutes  
- Minimal prep  
- 1–2 core datasets  
- One light AI moment  
- One decision-making task  
- One reflection  

Version B teaches the heart of the module.

---

## Step 4 — Add Version A (Low-Tech)
Must include:

- Printed maps  
- Layer overlays (color-safe)  
- No internet or account needed  
- Same learning outcomes, different workflow  

This ensures equity.

---

## Step 5 — Add Version C (Advanced)
This is where you can stretch:

- NDVI  
- GeoAI  
- Historical imagery analysis  
- Real datasets  
- Raspberry Pi demos  

But only if a YML facilitator or trained teacher is present.

---

## Step 6 — Build the Five Required Files
Write:

- `overview.md`  
- `activity-flow.md`  
- `materials-list.md`  
- `dataset-notes.md`  
- `storymap-notes.md`  

Check for:

- UDL features  
- Student agency  
- Ethical AI framing  
- Misconception warnings  
- Clear teacher instructions  

---

## Step 7 — Add Standards Alignment
Use this format inside `alignment/<state-or-national>/module.md`:

- Standard → short explanation → evidence from module  
- Remove jargon  
- Justify instructional value  

---

## Step 8 — Test the Module Internally
Run a 10-minute simulation:

- Does timing actually work?  
- Are instructions teacher-ready?  
- Is anything confusing?  
- Does the dataset load quickly?  

Fix before publishing.

---

## Step 9 — Publish to GitHub + GitBook
Workflow:

1. Create branch:  
   `module/<module-name>-draft-01`  
2. Add required files  
3. Commit with prefix: `docs:`  
4. Open PR to `main`  
5. Merge when approved  
6. GitBook auto-syncs  
7. Add to site navigation  

---

## Step 10 — Versioning & Maintenance
Use semantic versioning:

- v1.0 → Classroom-ready  
- v1.1 → Small fixes  
- v2.0 → Major redesign or new dataset  

Document changes in the module’s `CHANGELOG.md`.

---

# 🧩 UDL Checklist

### Representation  
- Tiered vocabulary  
- Icons + visuals  
- Clear chunking  
- Alternative formats  

### Action & Expression  
- Multiple artifact options  
- Low-tech + high-tech workflows  
- Sentence starters  
- Extension pathways  

### Engagement  
- Authentic scenario  
- Student choice  
- Real-world relevance  
- Quick wins early  

---

# 🤖 AI Ethics & Safety Requirements

Every module must include:

- A disclaimer that AI output can be wrong  
- A moment where students critique AI predictions  
- A prompt showing when humans override AI  
- No harmful datasets  
- No anthropomorphizing AI  
- No models trained on student photos  

---

# 🔖 Branding Requirements

Every artifact must include:

- “Made with Youth Map Lab” badge  
- Optional: QR code linking to module homepage  

Slide decks must maintain YML color palette and type system.

---

# 🔬 Example Module Snapshots

- Satellites to Seeds → data decision-making  
- Build a Time Machine → historical interpretation + AI OCR  
- Marine Science → systems ecology + satellite ocean color  
- Disaster Response → geospatial triage + routing  

---

# 📬 Contact
Youth Map Lab Curriculum Team  
youthmaplab@national4hgeospatialteam.us




Just tell me which one to produce next.
