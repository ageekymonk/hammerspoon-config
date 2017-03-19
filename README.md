hammerspoon-config
==================

A more modular and config for [Hammerspoon](http://www.hammerspoon.org/)

#### Installing

```
git clone https://github.com/ageekymonk/hammerspoon-config.git ~/.hammerspoon

cd ~/.hammerspoon
cp config.example.lua config.lua
```

### Important Files

 * `config.lua` - The configuration file, that contains configuration options for every module.
 * `init.lua` - The bootstrapper that loads modules defined in the config, and handles the menu.

### Utils

 * `utils/find.lua` - Convenience methods for finding windows, and audio devices.
 * `utils/import.lua` - My own take of require() with its own cache. Use `import` everywhere you would have used `require`. `init.lua` takes care of clearing the cache, each reload, so you don't have to worry.
 * `utils/monitors.lua` - Monitor detection & window positioning helpers.
 * `utils/position.lua` - Functions to resize a window within a screen.
 * `utils/matchers/match.lua` - A shitty fuzzy matching & scoring function.
 * `utils/match_dialgoue.lua` - Utility to create a specialized text view that can be used to do fuzzy match navigating (or menus or whatever.. see `utils/fuzzy_match.lua`, and `modules/app_selector.lua`).
 * `utils/nudge.lua` - Utility functions to nudge a window. Thanks @josheschulz.
 * `utils/music/*.lua` - Utility functions for controlling Spotify, iTunes and Rdio.

### Modules

* `modules/reload.lua` - Handles reloading hammerspoon. (CMD-CTRL-ALT-E)
* `modules/repl.lua` - Handles launching the repl. (CMD-CTRL-ALT-R)
* `modules/lock.lua` - Handles locking the screen. (F13)
* `modules/arrows.lua` - Handles positioning a window on the current screen. (CMD-CTRL-ALT-[Arrow])
* `modules/monitors.lua` - Handles moving windows between screens.
* `modules/arrangement.lua` - Handles building window arrangements, that arrange windows on multiple screens. I use this to move windows to different monitors automatically.
* `modules/app_selector.lua` - Focus windows by fuzzy matching their titles. Uses `utils/match_dialogue`.
* `modules/fullscreen.lua` - Universal shortcut to toggle full screen. (CMD-CTRL-A)
* `modules/slide.lua` - Handles nudging windows via `utils/nudge.lua`. (CMD-CTRL-ALT-<Arrow>) Thanks @josheschulz.
* `modules/hop.lua` - Handles focusing windows in relative directions. (CMD-CTRL-ALT-SHIFT-<Arrow>) Thanks @josheschulz.

### Thanks to
 1. https://github.com/tstirrat/hammerspoon-config.git
