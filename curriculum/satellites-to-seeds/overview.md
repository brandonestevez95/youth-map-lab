# Satellites to Seeds: Mapping Climate-Smart Agriculture  
**Grades 9–12 (scalable for 7–8) • 45–90 minutes • UDL-ready**

## 🌱 Summary  
**Satellites to Seeds** introduces students to the science and strategy behind modern agriculture. Using real satellite data, climate layers, and an optional AI model, learners propose where to plant crops—and explore how technology can support, but never replace, human expertise.

Students move from **foundational mapping skills (B)** → **AI-assisted analysis (C)** → **hands-on reasoning and human interpretation (A)**.  
The result is a powerful introduction to geospatial thinking, climate resilience, rural economies, and responsible AI.

---

## 🎯 Learning Goals  
By the end of this workshop, students will be able to:

- Identify key environmental and economic factors that influence crop placement  
- Use GIS layers (climate, soil, water, NDVI) to analyze land suitability  
- Interpret satellite imagery to recognize plant health and stress signals  
- Experience how AI models classify plant imagery—and evaluate their accuracy  
- Explain when AI is useful, when it is risky, and why human expertise is essential  
- Propose a future farm site with evidence-based justification  

---

## 📘 Teacher-Friendly Versioning  
This module includes **three flexible versions**:

### **Version A (Standard Classroom)**  
- ArcGIS Online farm site selector  
- Climate/soil/water layers  
- Optional Teachable Machine “plant stress” model  
- Students create a digital farm polygon + reflection  

### **Version B (Low-Tech / No-Device)**  
- Printed maps, acetate overlays, color shading  
- Small-group decision-making  
- Facilitator demonstrates AI ethically  
- Students submit paper farm proposal  

### **Version C (Advanced / With Youth Map Lab Facilitators)**  
- NDVI satellite stress analysis  
- Guided GeoAI classification of crop patterns  
- Ethical AI discussion with real-world examples  

---

## 🧭 Essential Questions  
- What environmental factors make land suitable for farming?  
- How do climate and soil variability influence yields and resilience?  
- How can satellite data help farmers adapt to droughts, floods, and changing markets?  
- What should AI automate—and what must humans always confirm?  
- How can smarter agriculture strengthen rural economies and food security?  

---

## 🗂 Workshop Artifacts  
Students will produce:

- A proposed farm site (polygon, snapshot, or paper map)  
- A written reflection using sentence starters  
- A “Made with Youth Map Lab” branded export  

---

## 🏷 Standards Alignment (Summary)  
Full details included in `alignment` folder.

- **NC Earth/Environmental Science** (climate impacts, human-environment interaction)  
- **NC Social Studies Economics** (markets, supply chains, resource allocation)  
- **NGSS HS-ESS2 & HS-ESS3** (Earth systems, climate, sustainability)  
- **Digital Learning Standards** (data analysis, computational thinking)  

---

## 🧰 Module Components  
This folder includes:

- **overview.md** – This file  
- **activity-flow.md** – Facilitator script  
- **materials-list.md** – Printing + tech + backups  
- **dataset-notes.md** – Satellite, climate, and AGOL data sources  
- **storymap-notes.md** – Reflection scaffolds + showcase guidelines  

---

## 📬 Contact  
For questions, adaptations, or facilitator support:  
**Youth Map Lab • youthmaplab@national4hgeospatialteam.us**  
Made with ❤️ by youth, for youth.
# Satellites to Seeds: Facilitator Activity Flow  
**45–90 minutes • Choose Version A, B, or C**

---

## 🚀 Quick Start  
1. Choose your version.  
2. Open AGOL map or distribute paper maps.  
3. Follow the pacing guide.  
4. End with student proposals + reflections.
 
---

# 🔵 Version A: Standard– 60–75 Minutes  
**Recommended for most classrooms.**

### 1. Welcome & Hook (5 minutes)  
- Ask: *“What makes land good for farming?”*  
- Record answers (water, soil, climate, markets).  
- Explain: *Today, we’re using satellites + GIS + AI to design a future farm.*

---

### 2. Factor Mini-Lessons (10 minutes)  
Students learn four pillars:

- **Water Access & Drought Risk**  
- **Soil Type & Variability**  
- **Climate & Hardiness Zones**  
- **Market Proximity & Food Security**

Keep examples short, visual, and local when possible.

---

### 3. GIS Hands-On: Map Exploration (15 minutes)  
Students toggle AGOL layers:  
- Water access  
- USDA Hardiness Zones  
- Soil maps  
- Drought indicators  
- Market proximity or drive-time  
- Optional NDVI (if available)

Prompts:  
- *“Which areas stay green no matter what layer you turn on?”*  
- *“Which layers conflict?”*

---

### 4. AI Demo: Teachable Machine (10 minutes)  
- Students upload provided images of **healthy vs. stressed plants**  
- Discuss accuracy + limitations  
- Quick ethical frame:
> “AI is a tool that helps—but farmers make the final call.”

---

### 5. Choose Your Farm Site (10–15 minutes)  
Students draw a **polygon** or highlight a paper region.

Evidence requirements:  
- 2 environmental justifications  
- 1 economic justification  
- 1 AI insight  

---

### 6. Reflection & Share-Out (5–10 minutes)  
Sentence starters:  
- *“AI helped me see…”*  
- *“AI struggled when…”*  
- *“If I were a real farmer, I would still need to…”*  

Export or photograph maps → add **Made with Youth Map Lab** badge.

---

# 🟡 Version B: Low-Tech – 45 minutes

### 1. Paper map handout  
Printed base map + acetate overlays for climate, water, soils.

### 2. Layer switching  
Groups physically stack layers and compare patterns.

### 3. Facilitator-led AI demonstration  
Simple plant stress identification using provided images.

### 4. Paper proposal  
Students shade a region + answer reflection prompts.

---

# 🟢 Version C: Advanced – 90 minutes  
*(Use when YML facilitators are present)*

### Includes everything above, plus:  
- NDVI-based plant stress analysis  
- Example multispectral imagery interpretation  
- GeoAI mini-model for crop detection  
- Discussion: rural revitalization through smart agriculture  
- Mini design challenge: “How would you build Granja Node 2.0?”

Students produce higher-level reasoning + evidence portfolios.

---

## 🎓 Classroom Management Tips  
- Allow multiple roles: navigator, scribe, analyst  
- Check in after each factor layer  
- Reinforce that wrong answers are part of the scientific process  
# Dataset Notes for Satellites to Seeds

This file helps facilitators understand each dataset used in the workshop.

---

## 🧭 Base Layers  
- **World Imagery (Esri)**  
- **OpenStreetMap**  

---

## 💧 Water Layers  
- Surface water  
- Watersheds  
- Drought Monitor (if available through AGOL)

**Teaching tip:** Ask students to compare drought-prone vs. water-secure areas.

---

## 🌡 Climate Layers  
- **USDA Hardiness Zones**  
- Temperature trends  
- Precipitation normals (optional)

**Key concept:** Hardiness zones represent long-term average cold tolerance.

---

## 🌱 Soil & Crop Variability  
- USDA SSURGO simplified layer  
- General soil type categories  
- Optional raster demonstrating variability  

**Use case:** Show that variability is an asset in diversified farms.

---

## 📈 Market & Economics  
- Drive-time polygons to nearest population center  
- Farmers markets or distribution hubs (simplified dataset)

**Tie-in:** Food miles + rural economic opportunity.

---

## 🛰 NDVI for Plant Stress (Version C)
- Sample NDVI raster  
- “Healthy vs stressed crop” example chips  
- Optional: link to GeoAI model (Teachable Machine compatible)

**Warning:** Students must learn that NDVI ≠ diagnosis; it’s a clue.
# Materials List for Satellites to Seeds

## 🖥️ Technology (Version A & C)
- Teacher computer + projector  
- Student laptops or tablets (1:1 or 1:2)  
- Internet access  
- AGOL map link (see `dataset-notes.md`)  
- Teachable Machine demo images  
- NDVI sample imagery (Version C)  

---

## 🗺️ Printing (Version B)
- Base map (8.5x11 or 11x17)  
- Overlay transparencies:  
  - Water  
  - Soil type  
  - Climate zones  
  - Market proximity  
- Dry erase markers  
- Scissors + tape  

---

## 🧰 Backup / No-Internet Kit
- Pre-exported PNG maps  
- Offline slide deck  
- Printed AI “plant stress” cards  
- Paper-based reflection sheets  
Placeholder for facilitator-guide.md
Placeholder for timing-and-variants.md
Placeholder for troubleshooting.md
# Facilitator Guide: Satellites to Seeds 🌱

Welcome to the *Satellites to Seeds* workshop — an AI + GIS-powered learning experience where students become environmental planners, mapping ideal farm locations based on real climate, soil, and disaster data.

**Audience**: Grades 5–9  
**Length**: 90 minutes  
**Format**: Hands-on (paper or digital)  
**Skills Covered**: Spatial thinking, agriculture science, map literacy, AI literacy, data-driven decision making

---

## 🧰 Pre-Workshop Setup

### ✅ Digital Prep
Ensure the following:
- AGOL map is published and shared with students:  
  📍 [Launch Map Viewer](https://4-h.maps.arcgis.com/apps/mapviewer/index.html?webmap=ca87aa8deac14d2fa20b3f142523fc43)
- Layers added to the map:
  - USDA Plant Hardiness Zones
  - World Soils – Organic Carbon Density
  - North American Annual Precipitation (NA Atlas)
  - FEMA Flood Hazard Areas
  - NOAA Drought Intensity
  - NOAA Recent Hurricanes, Cyclones, Typhoons

### 🗂 Files You'll Need
| Resource            | File |
|---------------------|------|
| 👩‍🏫 Student Worksheet | [`SatellitesToSeeds–StudentWorksheet.pdf`](./SatellitesToSeeds–StudentWorksheet.pdf) |
| 🎞 Presentation Slides | [Presentation](modules/satellites-to-seeds/SatellitesToSeedsPresentation.pptx) |
| 🧭 Printable Map     | Available within modules/satellites-to-seeds folder! |
| 🚨 Disaster Cards    | [Disaster Cards PDF](https://www.canva.com/design/DAGnGNAFvbs/3fPB0pZk5TNXZRWa-5o8-Q/edit) |
| 🌱 Crop Parameters   | [Download Crop Parameter Cards (.docx)](https://github.com/brandonestevez95/youth-map-lab/raw/main/modules/satellites-to-seeds/CropParameterCards.docx)

---

## 📅 Workshop Agenda

### 1. 🌾 Welcome & Warm-Up (5 min)
- Ask: “Where does your food come from?”
- Kick off with a map or emoji poll on crop origins
- Set the tone: “You’ll plan a farm using real tools like scientists.”

---

### 2. 🤖 AI in Agriculture (10 min)
- What is AI? Quick primer
- Show: [Google Teachable Machine](https://teachablemachine.withgoogle.com/) with plant classifier
- Discuss:
  - How AI can help monitor farms (e.g. crop health)
  - Where do *humans* still need to be in control?

---

## 3. 🛰 GIS Activities (45 min)

### 🧠 Farming Basics (5 min)
- Discuss: Sunlight, soil, water, risk zones
- Role of GIS in modern agriculture

---

### 🗺️ Mapping Climate & Soil Zones (5 min)
- Show students the AGOL map and its layers:
  - What do climate and soil tell us?
  - Which areas are best for blueberries? For sweet potatoes?

---

### 📍 Activity – Map the Future Farm (15 min)
- Objective: Choose 1 of 3 crops and plan where to plant it
- Students:
  - Analyze NC’s soil & climate layers
  - Pin (digital) or circle (paper) their ideal farm site
  - Justify why it fits their chosen crop

📎 Use: [`SatellitesToSeeds–StudentWorksheet.pdf`](./SatellitesToSeeds–StudentWorksheet.pdf)  
🗺 Paper or digital depending on setting

---

### 🌪️ Risk Mapping & Resilience (5 min)
- Add overlays: Drought zones, hurricanes, floodplains
- Ask: “What risks do you see near your farm?”

---

### 🚨 Activity – Disaster Strikes! (10 min)
- Hand out disaster cards or use a random generator
- Students re-map or adjust farms
- Write down:
  - What changed?
  - What protection measures did you add?

---

### 🤖 Bonus: Teachable Machine Demo (5 min)
- Classify “healthy vs. sick” crops with webcam
- Reflect: “Would you trust this to decide when to water?”

---

## 🧑‍🔬 Careers in AgTech (5 min)
Highlight key STEM careers:
- Agronomist
- GIS Analyst
- Climate Scientist
- AgTech Developer
- Sustainability Officer

---

## 📣 Wrap-Up & Recruitment (10 min)
- Students share maps → Farm Gallery Walk
- Optional: Vote on “Most Resilient” or “Most Creative” design
- Invite to join:
  - Wake 4-H GIS Team
  - SparkNC AI Badges
  - National 4-H Geospatial Team

---

## ✅ Facilitator Tips
- Bring a printed large map of NC for group demo
- Plan both high-tech and lo-fi versions
- Prepare “extensions” for fast finishers (map puzzles, crop trivia)
- Encourage teamwork + creative justification

---

## 🧠 Assessment Rubric
| Criteria                         | 1 pt  | 2 pts | 3 pts |
|----------------------------------|-------|-------|-------|
| Farm location choice             | Weak  | Logical | Optimal |
| Used GIS layers to adapt plan    | Minimal | Partial | Strong evidence |
| Explanation & justification      | Vague | Clear | Insightful |

---

---

## 📝 Paper-Based Workshop Option

This module works great in classrooms or clubs with no digital access. You can run *Satellites to Seeds* using only printed materials, markers, and a whiteboard — while keeping all key learning outcomes.

[Tip!] A great introduction StoryMap is linked here: https://storymaps.arcgis.com/stories/92e0255b4a484c9db8ef5ca0021f79d5

### 🧾 What to Prepare

| Resource         | Prep Tip |
|------------------|----------|
| **Maps**         | Screenshot your AGOL map with layers ON (climate, soil, risk), then print 1–3 versions on 8.5x11 or 11x17 paper. Laminate if possible for dry-erase reuse. |
| **Student Worksheet** | Use the PDF as-is or simplify it with boxes and icons for younger students. |
| **Crop Cards**   | Print the [CropParameterCards.docx](./CropParameterCards.docx) and cut them into cards. Add emoji icons to simplify for Grades 5–6. |
| **Disaster Cards** | Use the [Canva Disaster Cards](https://www.canva.com/design/DAGnGNAFvbs/3fPB0pZk5TNXZRWa-5o8-Q/edit) as a physical draw deck. Each group draws one mid-way through the activity. |
| **Stickers or Markers** | Let students "pin" their farms with dot stickers or Sharpie circles. |

### 🧭 Suggested Station Setup (Optional)

Divide the class into 4 teams and rotate through:

1. **Map the Future Farm** – Choose location using printed maps
2. **Disaster Strikes!** – Draw a card, update farm plan
3. **Crop Match** – Match crop cards to best zones
4. **Gallery & Jobs** – Share ideas, vote, and discuss ag careers

Each station runs ~10–15 minutes. No tech needed, just printables and a few classroom supplies.

### 💡 Tips

- Use a whiteboard to draw a basic NC map (coastal, piedmont, mountains) if you can’t print.
- Add stickers or cutouts (🌱 🌀 ☀️) to represent weather, risk, and soil conditions.
- Encourage students to justify decisions with visual symbols and short phrases.

## 🔗 Quick Links

- 🌍 [AGOL Map Viewer](https://4-h.maps.arcgis.com/apps/mapviewer/index.html?webmap=ca87aa8deac14d2fa20b3f142523fc43)
- 📄 [Student Worksheet (PDF)](./SatellitesToSeeds–StudentWorksheet.pdf)
- 🎞 [Presentation Deck](./SatellitesToSeedsPresentation.pptx)
- 🚨 [Disaster Cards (Canva)](https://www.canva.com/design/DAGnGNAFvbs/3fPB0pZk5TNXZRWa-5o8-Q/edit)

---

> ✍️ Developed by Brandon Estevez & Barbaree Ash Duke  
> 🌱 National 4-H Geospatial Team • CC BY 4.0 License  
> 🗂 Repo: [`/modules/satellites-to-seeds`](https://github.com/brandonestevez95/youth-map-lab/tree/main/modules/satellites-to-seeds)
These maps were produced using AGOL. 96 DPI used. PDF should print normally ONLY on 8.5 x 11 " paper. It prints in landscape format.
Placeholder for student-handout.md
Placeholder for reflection-prompts.md
Placeholder for satellites-to-seeds-template.md
# StoryMap & Reflection Notes

A student reflection should demonstrate:

1. Understanding of environmental factors  
2. Understanding of economic reasoning  
3. Awareness of AI strengths & limitations  
4. Clear justification for chosen farm site  

---

## 📝 Sentence Starters
- “AI helped me recognize…”  
- “One limitation of the model was…”  
- “My farm site is strong because…”  
- “If I had more data, I would…”  

---

## 📷 Exporting Work
Students can screenshot or export a map and attach it to their worksheet.  
Ensure the **Made with Youth Map Lab** badge is visible.

---

## 🧩 Optional StoryMap Build (extended version)
If time allows, students can build a simple narrative with:

- Title panel: “My Future Farm”  
- Sidecar: Environmental evidence  
- Sidecar: Economic evidence  
- Panel: AI analysis reflection  
- Conclusion: Imagining rural futures  
