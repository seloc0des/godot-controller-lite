# Upgrading to Controller (Pro)

Controller (Lite) is the free core: top-down movement, press-E interaction, and
movement locks. **Controller (Pro)** adds the parts that make platformers feel
right and cameras behave.

| | Lite (free) | Pro |
|---|---|---|
| Top-down 8-way mover (accel/friction) | ✅ | ✅ |
| Press-E Interactor/Interactable + event strings | ✅ | ✅ |
| Prompt above the nearest thing in reach | ✅ keyboard key ("E  Use") | ✅ ButtonPrompt that switches between keyboard and pad |
| Message on screen when the player uses it | ✅ | ✅ |
| Stands still, and E does nothing, during a Dialogue conversation | ✅ | ✅ both movers |
| Reason-counted movement locks | ✅ | ✅ |
| Save-aware position | ✅ | ✅ |
| No-code chooser dock | ✅ | ✅ |
| Platformer mover (gravity, run) | — | ✅ |
| Coyote time + jump buffer | — | ✅ |
| Variable jump height (release early = shorter) | — | ✅ |
| Follow camera (smooth, deadzone) | — | ✅ |
| Camera look-ahead + shake() | — | ✅ |
| Public jump()/release_jump() for touch buttons | — | ✅ |

Lite scenes keep working while Controller (Lite) stays installed. The full mover and interactable keep the Lite settings, signals and methods under the same names, apart from the interactable's `prompt_text`, with new class names (`ControllerTopDownMover`, `ControllerInteractable`) and the `Controllers` autoload. The full dock bakes onto the same bodies.

Get it on itch.io. MIT-licensed; use it in commercial projects.
