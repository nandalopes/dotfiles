---
title: Overriding Vim settings
parent: "Vim Settings"
nav_order: 2
---

You may use `~/.vimrc.before` or `~/.yadr/vim/settings/before/<file-name>.vim` for settings like the __leader__ setting.
You may use `~/.yadr/vim/settings/<file-name>.vim` for any override setting.
You may also use `~/.vimrc.after` (for those transitioning from janus) or `~/.yadr/vim/after/.vimrc.after` for any additional overrides/settings.
If you didn't have janus before, it is recommended to just put it in `~/.yadr/vim/after/<file-name>.vim` so you can better manage your overrides.
