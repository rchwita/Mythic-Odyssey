# Mythic Odyssey 🗡️

**Mythic Odyssey** is a top-down 2D Action RPG built with a focus on fluid combat and rewarding progression. Navigate dangerous environments, hunt down enemies, and grow your power through a dedicated leveling system.

---

## 🚀 Getting Started

### Installation
Navigate to the `Installation` folder and choose the package corresponding to your operating system:

* **Linux:** `mythic_odyssey_linux.zip`
* **Windows:** `mythic_odyssey_win.zip`

### Steps to Play
1.  **Download** the zip file for your OS.
2.  **Extract** the contents of the file.
3.  **Navigate** to the extracted folder.
4.  **Run the executable**:
    * 🐧 **Linux:** `.x86_64`
    * 🪟 **Windows:** `.exe`
5.  The game will launch—prepare for your journey!

Mac version will be available soon...

---

## 🗡️ Key Features

### Dynamic Combat & Control
* **Precision Directional Attacks:** A sophisticated combat system that calculates mouse coordinates to trigger 4-directional attack animations.
* **Tactical Navigation:** Enemies utilize intelligent pathfinding to actively hunt the player, requiring strategic movement.

### Progression & Stats
* **RPG Leveling System:** Gain XP from encounters and watch your power scale dynamically as you grow.
* **Hunter’s Ledger:** A built-in tracking system to monitor your kill counts and progress throughout the world.

### World & Environment
* **Hand-Crafted Tilemaps:** Explore professionally designed, immersive 2D environments.
* **Robust Collision System:** Advanced tilemap collisions ensure seamless and polished world interaction.

---

## 🛠️ Technical Overview

* **Engine:** Godot 4.5 (Stable)
* **Language:** GDScript
* **Renderer:** Forward+ (Optimized for high-quality 2D)
* **Version Control:** Git

### Project Structure
```text
Mythic-Odyssey/
├── assets/
│   ├── Audio/                 # SFX and Music
│   ├── enemy/                 # Enemy sprite sheets
│   ├── player/                # Player sprite sheets
│   ├── TileMap/               # Terrain, Buildings, Decoration, etc.
│   └── UI/                    # Portraits, Banners, Fonts, and Icons
├── scenes/
│   ├── entities/              # Player & Enemy scenes
│   ├── Levels/                # Level_1 through Level_5
│   ├── main/                  # Main game loop
│   └── UI/                    # Menu and Screen scenes
├── scripts/
│   ├── classes/               # Core logic
│   ├── global_data/           # Autoloads/Singletons
│   └── source_scripts/        # Scene logic
├── project.godot              # Godot project file
└── export_presets.cfg         # Export configurations
```

## 👥 Contributions
Meet the team behind the Odyssey:
- **Ridowan Ahmed (Leader):** Player designer, UI interface creator, and lead debugger.
- **Archita Biswas:** Tilemap architect and level designer.
- **Thamid Hasan Rakin:** Enemy designer, AI logic developer, and soundscape engineer.
- **Sargi Rahman:** Bug finder and tester.

---
## 📜 License
No license file is currently defined for this repository. All rights reserved.
