# Upgrading to Controller (Pro)

Controller (Lite) is the free core: top-down movement in 2D and 3D, press-E
interaction, a 3D follow camera, and movement locks. **Controller (Pro)** adds the
parts that make platformers and third-person games feel right and cameras behave.

| | Lite (free) | Pro |
|---|---|---|
| Top-down 8-way mover (accel/friction) | ✅ | ✅ |
| Top-down mover in 3D (camera-relative, steps, ramps) | ✅ | ✅ |
| Press-E Interactor/Interactable + event strings, 2D and 3D | ✅ | ✅ |
| 3D follow camera (fixed angle, smooth, snaps on a teleport) | ✅ | ✅ |
| Prompt above the nearest thing in reach | ✅ keyboard key ("E  Use") | ✅ ButtonPrompt that switches between keyboard and pad |
| Message on screen when the player uses it | ✅ | ✅ |
| Stands still, and E does nothing, during a Dialogue conversation | ✅ | ✅ both movers |
| Reason-counted movement locks | ✅ | ✅ |
| Save-aware position | ✅ | ✅ |
| No-code chooser dock | ✅ | ✅ |
| Platformer mover (gravity, run) | — | ✅ |
| Coyote time + jump buffer | — | ✅ |
| Variable jump height (release early = shorter) | — | ✅ |
| 2D follow camera (smooth, deadzone) | — | ✅ |
| 2D camera look-ahead + shake() | — | ✅ |
| Third-person mover in 3D (jump, coyote time, jump buffer) | — | ✅ |
| 3D orbit camera (mouse and stick look, pulls in at walls) | — | ✅ |
| 3D camera deadzone, look-ahead and shake | — | ✅ |
| Knockback receivers (`apply_knockback`) on the full movers | — | ✅ |
| Public jump()/release_jump() for touch buttons | — | ✅ |

Lite scenes keep working while Controller (Lite) stays installed. The full mover and interactable keep the Lite settings, signals and methods under the same names, apart from the interactable's `prompt_text`, with new class names (`ControllerTopDownMover`, `ControllerInteractable`) and the `Controllers` autoload. The full dock bakes onto the same bodies.

Get it on itch.io. Use it in any game you make, commercial or not.
