# Quick Start: Controller (Lite)

Goal: a playable top-down character and a sign that shows "E  Read" when you
walk up and a message when you press E, with no code. The steps below are for 2D.
For 3D, jump to **3D** at the end of this page.

## 1. Install

- Copy `addons/controller_lite/` into your project.
- Enable **Controller (Lite)** in Project Settings → Plugins.

## 2. Make a player (dock)

- Select your character's picture (a Sprite2D or AnimatedSprite2D) in your
  scene, or any other node.
- In the **Controller Lite** dock: set **Move speed**, click **Make Top-Down
  Player**. A selected picture goes inside a new `Player` CharacterBody2D that
  takes its place, so the two move together, and Ctrl+Z puts it back. Any other
  node that isn't a CharacterBody2D gets a new `Player` under it. Either way a
  shape is included.
- The body also goes into the `player` group, saved with the scene. Touch
  triggers, doors and zones from the other packs look for it.
- If the body has nothing to draw yet, the status line says so: drop your
  picture onto the Player in the Scene list, or you'll play an invisible
  character.
- Clicking again retunes the mover that's there instead of adding a second.
- Press Play. Arrows move it.

## 3. Interaction (dock)

- Select the player body, click **Add Interactor**.
- Select a prop (sign, NPC). In the dock, type a **Prompt text** ("Read") and a
  **Message when used** ("Welcome to town."), then click **Make Interactable**.
- Selecting a prop that's already interactable puts its prompt and message back
  in the fields. Edit them and click again: it updates the one that's there.

Press Play and walk up. The nearest thing in reach shows "E  Read" above it (the
key is whatever the `interact` action is bound to). Press E (or Enter) and the
message shows at the top of the screen for a moment. Leave the message empty and
pressing E shows nothing.

The **event** field (Inspector) is for your own code: `ControllersLite.interacted`
fires with it. From code (optional):

```gdscript
ControllersLite.interacted.connect(func(ia, by):
    print(ia.message, " -> ", ia.event))
```

## 4. Freeze during dialogue

With Dialogue (Lite or full) installed, the player stands still while a
conversation is on screen and walks again when it ends, and pressing E does
nothing until then, so it can't start something else behind the dialogue box.
The "E  Read" prompt steps aside for the conversation too.
Nothing to set up. Untick **Freeze During Dialogue** on the mover to let the
player walk during a conversation.

For your own cutscenes, from code (optional):

```gdscript
ControllersLite.lock_movement(&"cutscene")    # cutscene starts
ControllersLite.unlock_movement(&"cutscene")  # cutscene ends
```

## 3D

Same goal in a 3D scene. The top node of your scene has to be a Node3D (a plain
Node3D is fine). The dock checks that when you click, and builds the 3D version.

- In the **Controller Lite** dock, set **Move speed (m/s)** (5 is a brisk run).
- Select any node, or a mesh or model you want to play as, and click **Make
  Player**. You get a CharacterBody3D called `Player` with a collision shape, the
  mover, an Interactor in front of it, and a **FollowCamera** at the top of the
  scene. Without art of your own it is a blue capsule with an orange nose, so you
  can see which way it faces. A selected mesh or model goes inside the new Player
  and takes its place.
- Give the level a floor: a StaticBody3D with a collision shape. The Player has
  gravity and falls through anything that cannot hold it up.
- Press Play. WASD or the arrows move it, relative to the camera. Steps up to 30
  cm and ramps up to 45 degrees are walked straight up, and ledges are fallen
  off.
- Select the Player, click **Add Interactor**. Select a prop, type a **Prompt
  text** and a **Message when used**, click **Make Interactable**. It gets a box
  shape a metre and a half wide and floats "E  Read" above itself while the
  player is in reach.
- The dock only adds a FollowCamera when the scene has no camera. A 3D game with
  no camera shows nothing, so if you delete it, add a Camera3D or a
  FollowCameraLite3D by hand.

## Next

Platformer and third-person movement (coyote time, jump buffer, variable jump),
the 2D follow camera and the 3D orbit camera, button prompts that switch between
keyboard and pad, and touch input methods → **upgrade.md**.
