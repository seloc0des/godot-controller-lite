# Controller (Lite)

Free no-code player movement for **Godot 4.5+**. A top-down 8-way mover with
acceleration/friction, press-E signs and NPCs that show a prompt and a message,
and a player who stands still while a Dialogue conversation is on screen. All of
it is baked onto any node from the editor chooser dock.

Free Lite tier of the SELODEV **Controller** addon. Pro adds the platformer
mover (coyote time, jump buffer, variable jump height), the follow camera
(deadzone, look-ahead, shake), and touch-friendly public input methods.

## 5-minute setup

1. Copy `addons/controller_lite/` into your project.
2. Enable **Controller (Lite)** in Project Settings → Plugins.
3. Select your character's picture (or any node) → in the **Controller Lite**
   dock click **Make Top-Down Player**. A picture goes inside the new Player, so
   the two move together. It marks the body as the player, and says so if it has
   nothing to draw yet. Press Play: arrows move it.
4. With the player still selected, click **Add Interactor**. Select a sign or an
   NPC, type a **Prompt text** ("Read") and a **Message when used**, click
   **Make Interactable**. Press Play and walk up to it: "E  Read" shows above it,
   and pressing E shows your message.

With Dialogue (Lite or Pro) in the project, the player stands still while a
conversation is on screen, and E does nothing until it ends. Untick **Freeze
During Dialogue** on the mover to let the player walk during one.

## What it does

- `TopDownMoverLite`: 8-way movement, acceleration/friction (0 = instant),
  remappable actions, save-aware position (`save_id`). Stands still during a
  Dialogue Lite or Pro conversation (`freeze_during_dialogue`).
- `InteractorLite` / `InteractableLite`: nearest-target press-E interaction.
  The nearest one in reach shows "E  Use" above itself (`prompt_text`), using
  shows `message` on screen, and the `event` string is mirrored on the bus for
  your own code.
- `ControllersLite` autoload: player registry, `interacted`, reason-counted
  `lock_movement("dialogue")` / `unlock_movement`.
- **Chooser dock**: bake a player, an interactor, or an interactable onto the
  selected node.

## Verify

```bash
godot --headless --path . res://tools/verify.tscn   # prints PASS
```
Or open `tools/acceptance.tscn` and press F6 for a PASS/FAIL banner.

## License

MIT. Use it in commercial games.


## Part of a family

This is one free tier from the selodev catalog of no-code Godot 4 systems. They share an item contract and a save contract, so they plug into each other, and each one also works fully on its own.

Free systems:

- [Inventory Lite](https://github.com/seloc0des/godot-inventory-lite)
- [Equipment Lite](https://github.com/seloc0des/godot-equipment-lite)
- [Loot Lite](https://github.com/seloc0des/godot-loot-lite)
- [Crafting Lite](https://github.com/seloc0des/godot-crafting-lite)
- [Vendor Lite](https://github.com/seloc0des/godot-vendor-lite)
- [Quests Lite](https://github.com/seloc0des/godot-quests-lite)
- [Stats / Skills Lite](https://github.com/seloc0des/godot-stats-skills-lite)
- [Save / Load Lite](https://github.com/seloc0des/godot-save-load-lite)
- [Dialogue Lite](https://github.com/seloc0des/godot-dialogue-lite)
- [Combat Lite](https://github.com/seloc0des/godot-combat-lite)
- [Controller Lite](https://github.com/seloc0des/godot-controller-lite)
- [Enemy AI Lite](https://github.com/seloc0des/godot-enemy-ai-lite)
- [Scene Flow Lite](https://github.com/seloc0des/godot-scene-flow-lite)
- [Audio Lite](https://github.com/seloc0des/godot-audio-lite)
- [Level Builder Lite](https://github.com/seloc0des/godot-level-builder-lite)
- [Weather System Lite](https://github.com/seloc0des/godot-weather-lite)
- [Settings + Menus](https://github.com/seloc0des/godot-settings-menus) (complete and free, no paid tier)

Free VFX: [Magic Cast](https://github.com/seloc0des/godot-magic-cast-vfx-lite), [Elemental Impact](https://github.com/seloc0des/godot-elemental-impact-vfx-lite), [Explosion](https://github.com/seloc0des/godot-explosion-vfx-lite), [Pickup, Buff & Heal](https://github.com/seloc0des/godot-pickup-buff-vfx-lite).

Free starter projects: [Free Starter](https://github.com/seloc0des/free-starter-godot), [Dungeon](https://github.com/seloc0des/godot-dungeon-starter), [Survival](https://github.com/seloc0des/godot-survival-starter), [RPG](https://github.com/seloc0des/godot-rpg-starter).

The full versions add drop-in UI, editor docks and the cross-system wiring. They're on itch.io: **https://selodev.itch.io**
