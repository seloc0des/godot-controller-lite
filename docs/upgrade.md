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

Your Lite scenes carry forward — Pro's mover and bus use the same patterns, and
the Pro dock bakes onto the same bodies.

Get it on itch.io. MIT-licensed; use it in commercial projects.
