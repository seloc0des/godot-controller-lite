# Changelog: Controller (Lite)

## 1.2.3 (2026-10-12)

The tabs show their names on Godot 4.5.

- **The Controller Lite tab was blank on Godot 4.5.** Its tab beside the Inspector had no title, so
  "open the Controller Lite tab" pointed at nothing. It is named when the pack switches on now.
  Godot 4.7 was not affected.

## 1.2.2 (2026-09-27)

Installs without errors, and its tab works the moment you switch it on.

- **Its tab works the moment you switch it on.** Right after installing, Make Top-Down Player
  added nothing until you restarted Godot.
- **No red errors when you install it.** Installing it filled the Output panel with "Failed to
  load script" errors before you'd even switched it on. Some of its scripts named a part of the
  pack that only exists once the pack is on.
- **The tab fits a default-width dock.** The Controller tab fits at any editor scale. The heading
  and long button labels wrap instead of running off the right edge, and the tab scrolls when a long
  message makes it taller than the dock.

## 1.2.1 (2026-09-27)

Click your character's picture, then Make Top-Down Player, and the two move together.

- **Make Top-Down Player puts your picture inside the new Player.** Select your character's
  picture (a sprite, an animated sprite, a polygon or a colour box in the level) and press the
  button. The new Player takes the picture's place, the picture goes inside it, and nothing moves
  on screen. The Player used to go inside the picture, so in the game it walked off and left the
  picture standing there. Ctrl+Z puts the picture back as it was.
- **Clicking a picture that's already inside a body works on that body**, so a second click
  retunes its mover instead of adding another body.
- **A picture at the top of its own scene is left alone**, and the status line says what to do:
  drag that scene into your level and select it there.
- **The "nothing to draw" hint says where the picture goes:** drop it onto the Player in the
  Scene list, or select the picture first next time.
- **Scenes made the old way:** if your Player sits inside its picture, drag the Player out onto
  your level in the Scene list, then drop the picture onto the Player.

## 1.2.0 (2026-09-26)

Interactions you can see, and a player who waits during a conversation.

- **You can see an interaction without code.** An Interactable shows "E  Use" (its own prompt text,
  with the real key) while the player is in reach, and can show a message on screen when used. Both
  fields are on the Setup tab. The prompt steps aside during a conversation.
- **The player stops moving during a conversation** from Dialogue (Lite or Pro) and walks again when
  it ends, and E does nothing mid-conversation. Switch it off per mover with Freeze During Dialogue.
- **Every action listens to every keyboard and pad.** A key saved under one Godot version (by a
  settings menu, say) went dead under another, and only the first pad could drive the player.
- **Make Player marks the body as the player** and says so, so touch triggers, doors and enemies
  from other packs react to it straight away.
- **One mover per body.** The same button again retunes the speed, and a body the old dock doubled
  up is cleaned up to one mover. Add Interactor and Make Interactable reuse what's there, and put
  back a shape that went missing.
- **A hint when your player has nothing to draw.**
- **Nodes the dock adds don't run their game code in the editor**, and pressing Play right after a
  button includes what it added.
- **Nodes the Setup tab adds get readable names.** A second one under the same parent is
  called something like `UILayer2`, instead of a generated name full of `@` signs.
- **Switching the plugin off only removes the autoload if the plugin added it**, and closing
  the editor no longer removes it at all. A project that declares it itself, like the starter
  kits, keeps it.
- **The Controller Lite tab no longer cuts its text off.** It opened in a narrow column, so labels,
  file pickers and the notes at the bottom ran past the edge. It now asks for the same width as the
  other tabs.
- **The self-test ignores a controller you're holding.** Its movement checks used stand-in keys
  for left and right but still read up and down from the real actions, so a stick pushed up or down
  during the run could fail a check on a pack that works. All four directions are stand-ins now.

## 1.1.1 (2026-09-09)

Self-test fix. No change to how the pack behaves.

- **The bundled self-test could report FAIL on a perfectly healthy pack**, roughly half the
  time, if you had a controller plugged in. Its movement checks drove the real movement
  actions, which carry a left-stick binding, so a resting stick's drift blended into the
  reading and the test body never quite braked to a stop. Godot's own `ui_left` and
  `ui_right` carry the same binding, so this was true before the actions were renamed as
  well. The checks now drive keyboard-only actions of their own, and count physics frames
  rather than waiting on the clock. Measured over eight runs each: was failing five, now
  zero.

## 1.1.0 (2026-09-09)

The movement actions are the pack's own now, so a settings menu can rebind them.

- **Movement no longer uses `ui_left` and friends.** It asks for `move_left`, `move_right`,
  `move_up` and `move_down`, and registers them bound to WASD, the arrow keys and the left
  stick. Any settings menu worth shipping keeps `ui_*` off its rebinding list, because
  letting a player rebind `ui_accept` on the rebind screen leaves them unable to navigate
  the menu they are standing in. So movement could never be remapped, and nothing said so.
  Same action names as the Pro pack, so upgrading changes nothing.
- **Interaction got the same treatment.** The Interactor asked for `ui_accept`, which has
  exactly the same problem. It is registered now, on E, Enter and the gamepad A button, so
  the two most common ways a player interacts still work.
- **If you are upgrading:** a scene only stores an Action field when you changed it, so if
  you left them alone your existing movers and interactors now read the new names, and both
  keep working, because the new actions arrive bound to the same keys they used to answer to
  plus WASD, the left stick and E. Anything you typed in yourself is stored in your scene
  and left alone. The one thing that changes is that Space no longer interacts.

## 1.0.2 — 2026-08-10

A quieter first run. No change to how anything behaves.

- **The debugger no longer fills with warnings when you press Play.** The event bus declares the signals every system talks through, and Godot flagged each one as unused because the code that sends and receives them lives in the other files. Nothing was broken, but a first run could print a stack of warnings that looked like your mistakes. They're gone.

## 1.0.1 — 2026-08-10

Safer download.

- **The download can't damage a project you're already working on.** It now unzips into one folder named after the pack, instead of putting files loose at the top. Before this, unzipping it straight into an existing game overwrote that game's name, its start-up scene and the list of add-ons you had switched on. It can't reach any of that now.
- **Added START-HERE.txt and INSTALLING.txt** at the top of the folder — what's in the download, the two-minute install, and what to do if something goes wrong. Plain text, opens anywhere.
- **Fixed: the docs pointed at a self-test file that wasn't there.** They said `tools/verify.tscn`; in the download it's `tools/controller_lite/verify.tscn`. The paths now match what's actually in the box.

## 1.0.0

- Initial release.
- `TopDownMoverLite`: 8-way movement, acceleration/friction, remappable actions, save-aware position.
- `InteractorLite` / `InteractableLite`: nearest-focus press-E interaction with bus-mirrored event strings.
- `ControllersLite` autoload: player registry, interactions, reason-counted movement locks.
- No-code chooser dock: bake a player / interactor / interactable onto the selected node.
- Demo: walk to the sign, press Enter. Headless `tools/verify.tscn` (15 checks) + `tools/acceptance.tscn` PASS/FAIL banner.
