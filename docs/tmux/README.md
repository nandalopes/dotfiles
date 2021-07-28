# Tmux configuration

`tmux.conf` provides some sane defaults for tmux on Mac OS like a powerful status bar and vim keybindings.

You can customize the configuration in `~/.tmux.conf.user`.

Note: In order to have True Color support you must have tmux > 2.2 installed

# Learning Tmux

If you're new to tmux you can read their man page or a more palatable introduction as [this book](https://leanpub.com/the-tao-of-tmux/read). In there you can find a nice cheatsheet.

Then make sure to see the bindings we customize in `tmux.conf` file.

You can also see bind available by typing: <kbd>Ctrl-b</kbd>-<kbd>?</kbd>

# Tmuxp

We use [`tmuxp`](https://github.com/tony/tmuxp) here. That means you can run `tmuxp load my-cool-project` and it will load a new (or attach to a previously loaded) session and create all windows and panes and run commands in those panes as you wish.

Example config:

```yaml
session_name: 4-pane-split
windows:
- window_name: dev window
  layout: main-vertical
  shell_command_before:
    - cd ~/                    # run as a first command in all panes
  panes:
    - shell_command:           # pane no. 1
        - cd /var/log          # run multiple commands in this pane
        - ls -al | grep \.log
    - git status               # pane no. 2
    - ./run-my-server          # pane no. 3
    - ./run-my-tests           # pane no. 4
```
