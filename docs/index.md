---
title: Home
nav_order: 1
layout: navtoc
h_min: 2
h_max: 3
---

     _     _           _
    | |   | |         | |
    | |___| |_____  __| | ____
    |_____  (____ |/ _  |/ ___)
     _____| / ___ ( (_| | |
    (_______\_____|\____|_|

    # Yet Another Dotfile Repo v2.0
    # Now with Chezmoi, Prezto and Vim-Plug!


[![Join the chat at https://gitter.im/skwp/dotfiles](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/skwp/dotfiles?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This is a **GNU/Linux** focused fork of @[skwp/dotfiles](https://github.com/skwp/dotfiles).

#### sh -c "\`curl -fsSL https://raw.githubusercontent.com/nandalopes/dotfiles/main/bin/yadr/install.sh \`"

**Managed with [chezmoi](https://chezmoi.io/).**

This repo has been built for my own benefit, however feel free to sneak in and steal anything that would improve your own productivity.

[![wakatime](https://wakatime.com/badge/github/nandalopes/dotfiles.svg)](https://wakatime.com/badge/github/nandalopes/dotfiles)

## What is YADR?

**YADR is an opinionated dotfile repo that will make your heart sing**

  * The best bits of all the top dotfile repos, vim and zsh plugins curated in one place, into a simple and cohesive way of working.
  * More than 90 vim plugins, all under one roof, working together, each plugin researched and configured to be at its best, often with better shortcut keys.
  * Many zsh plugins, starting with the wonderful Prezto base, and adding a few niceties on top.
  * All things are vimized: irb, postgres command line, etc.

*MacOS is not supported! If it works, great. If it doesn't, please don't complain. You may need to install zsh if you don't already have it.*
*That being said, check the Docker section below*

## Mailing List
{: .no_toc }

Got questions, concerns, want to hear announcements? Join the [Google Group](https://groups.google.com/forum/#!forum/yadr-users)

Please use GitHub Issues for pull requests or bug reports only.

## Screenshot

[![screenshot vim](https://i.imgur.com/IhPYpNV.png)](https://imgur.com/a/JltO46O)

## Installation

To get started please run:

```bash
sh -c "`curl -fsSL https://raw.githubusercontent.com/nandalopes/dotfiles/mine/bin/yadr/install.sh`"
```

**Note:** YADR will automatically install all of its subcomponents.

### Convenience script

In case of not having `chezmoi` installed - Just firing the
[`bin/yadr/install.sh`](https://raw.githubusercontent.com/nandalopes/dotfiles/mine/bin/yadr/install.sh)
after a simple download of it.

### Manually with `git`

You will have to clone the repo and from its root directory, execute the
`install.sh` SH script

### Manually with `chezmoi`

Leveraging Chezmoi capabilities

```bash
chezmoi init --apply --verbose --source ~/.yadr --https nandalopes/dotfiles
```

### _What if I already have a chezmoi dotfiles repo?_

If you want to integrate this repo with yours, do this:

```bash
chezmoi cd
git remote add yadr https://github.com/nandalopes/dotfiles.git
git fetch yadr

# Merge repos:
git merge --allow-unrelated-histories yadr/main

# Verify if there is duplicated source files
chezmoi verify

# Then apply updates
chezmoi apply --verbose
```

## Wait, you're not done! Do this:

#### Install Solarized Colors at your terminal of choice
Change your terminal colors to Solarized. Most terminals on Linux have a solarized colorscheme installed by default.

#### Remap caps-lock to escape with [Karabiner-Elements](https://pqrs.org/osx/karabiner/index.html)
The escape key is the single most used key in vim.  Old keyboards used to have Escape where Tab is today. Apple keyboards are the worst with their tiny Esc keys. But all this is fixed by remapping Caps to Escape.  If you're hitting a small target in the corner, you are slowing yourself down considerably, and probably damaging your hands with repetitive strain injuries.

#### Set up a system wide hotkey for iTerm (Keys=>Hotkey)
Recommended Cmd-Escape, which is really Cmd-Capslock.

#### In iTerm, uncheck "Native full screen windows" on General
This will give you fast full screen windows that are switchable without switching to spaces.

#### in MacVim, uncheck "Prefer native full-screen support" under Advanced settings
Same as iTerm. The native spaces navigation slows everything down for no reason.

## If you want to run vim in terminal

  * Make sure you install Solarized colorscheme in your terminal!
  * If you don't want to use solarized terminal, then make sure you do this:

```vim
let g:yadr_using_unsolarized_terminal = 1
# in ~/.vimrc.before
```

  * If you want to use an alternate colorcheme like Gruvbox, then do:

```vim
let g:yadr_disable_solarized_enhancements = 1
colorscheme base16-twilight
# in ~/.vimrc.after
```

## Upgrading

Upgrading is easy.


      chezmoi cd
      git pull --rebase
      chezmoi diff # check updates before apply
      chezmoi apply --verbose


## What's included, and how to customize?

Read on to learn what YADR provides!

### [Homebrew](https://brew.sh/)

TODO: port homebrew install script to a `run_once_homebrew_install`.

### ZSH

Think of Zsh as a more awesome bash without having to learn anything new.
Automatic spell correction for your commands, syntax highlighting, and more.
We've also provided lots of enhancements:

  * Vim mode and bash style `Ctrl-R` for reverse history finder
  * `Ctrl-x,Ctrl-l` to insert output of last command
  * Fuzzy matching - if you mistype a directory name, tab completion will fix it
  * [fasd](https://github.com/clvv/fasd) integration - hit `z` and partial match for recently used directory. Tab completion enabled.
  * [Prezto - the power behind YADR's zsh](https://github.com/sorin-ionescu/prezto)
  * [How to add your own ZSH theme](./zsh/themes.md)

### Aliases

Lots of things we do every day are done with two or three charactera mnemonic aliases. Please feel free to edit them:


    ae # alias edit
    ar # alias reload


### Git Customizations:

YADR will take over your `~/.gitconfig`, so if you want to store your usernames, please put them into `~/.gitconfig.user`

It is recommended to use this file to set your user info. Alternately, you can set the appropriate environment variables in your `~/.secrets`.

  * `git l` or `gl`- a much more usable git log
  * `git b` or `gb`- a list of branches with summary of last commit
  * `git r` - a list of remotes with info
  * `git t` or `gt`- a list of tags with info
  * `git nb` or `gnb`- a (n)ew (b)ranch - like checkout -b
  * `git cp` or `gcp`- cherry-pick -x (showing what was cherrypicked)
  * `git simple` - a clean format for creating changelogs
  * `git recent-branches` - if you forgot what you've been working on
  * `git unstage` / `guns` (remove from index) and `git uncommit` / `gunc` (revert to the time prior to the last commit - dangerous if already pushed) aliases
  * Some sensible default configs, such as improving merge messages, push only pushes the current branch, removing status hints, and using mnemonic prefixes in diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
  * Slightly improved colors for diff
  * `gdmb` (g)it (d)elete (m)erged (b)ranches - Deletes all branches already merged on current branch

### [Myrepos](https://myrepos.branchable.com/) framework configuration

[Myrepos](https://myrepos.branchable.com/) is a tool to manage all your version control repositories.

YADR provides a config framework to manage not only git repositories, but any version control system supported by this tool. It was adapted from [@aspiers/mr-config](https://github.com/aspiers/mr-config).

You'll have under a `.config/mr` folder:

  * [`.mrconfig`](https://github.com/nandalopes/dotfiles/blob/main/dot_mrconfig) - uses [`library_loaders`](https://github.com/nandalopes/dotfiles/blob/main/private_dot_config/mr/library_loaders) to load all the components below:
    * [`groups.d/`](https://github.com/nandalopes/dotfiles/blob/main/private_dot_config/mr/groups.d) - groups of `mr` repo definitions
    * [`lib.d/`](https://github.com/nandalopes/dotfiles/blob/main/private_dot_config/mr/lib.d) which contains
      * various shell snippets which get auto-loaded in the context of `mr`'s `lib` parameter
      * definitions of various `mr` actions and other `mr` parameters
    * [`sh.d/`](https://github.com/nandalopes/dotfiles/blob/main/private_dot_config/mr/sh.d) - various shell helper functions used by the files in `lib.d/`.  Parts of these could be reused by other people, e.g.:
      * [`sh.d/git`](https://github.com/nandalopes/dotfiles/blob/main/private_dot_config/mr/sh.d/git) - various generic `git`-related helper functions
      * [`sh.d/git-remotes`](https://github.com/nandalopes/dotfiles/blob/main/private_dot_config/mr/sh.d/git-remotes) - various helper functions relating to management of git remotes

### RubyGems

A .gemrc is included. Never again type `gem install whatever --no-ri --no-rdoc`. `--no-ri --no-rdoc` is done by default.

### Tmux configuration

`tmux.conf` provides some sane defaults for tmux on Mac OS like a powerful status bar and vim keybindings.
You can customize the configuration in `~/.tmux.conf.user`.

![screenshot tmux](https://i.imgur.com/Rlh30kg.png)

### Vimization of everything

The provided inputrc and editrc will turn your various command line tools like mysql and irb into vim prompts. There's also an included Ctrl-R reverse history search feature in editrc, very useful in irb, postgres command line, and etc.

### Github Issues: [ghi gem](https://github.com/stephencelis/ghi)

We include the `ghi` command. Try `ghi list` and have fun managing issues from command line!


## Extending and overriding YADR settings

* [Debugging vim keymappings](./vim/keymaps.md)
* [Overriding vim settings with ~/.vimrc.after and friends](./vim/override.md)
* [Adding your own vim plugins](./vim/manage_plugins.md)

## Testing with Docker

We can use Docker to test some changes in a **Linux** Container.

Assuming your host system has Docker & Docker Compose properly installed, run:

    docker-compose run dotfiles

This will build the container image if it never built it before (which may take a while -- future times will be faster) and then run a `zsh` session inside that container for you.
There you can play around, test commands, aliases, etc.

*Warning*: this repo is primarily Linux oriented. So any support for macOS can only be done with the help of the community.


## Misc

* [Credits & Thanks](./credits.md)
* [Some recommended macOS productivity tools](./macos_tools.md)
* [Yan's Blog](https://yanpritzker.com)

### macOS Hacks

The macOS file is a bash script that sets up sensible defaults for devs and power users under macOS.
Read through it before running it. To use:

    bin/macos

These hacks are Lion-centric. May not work for other OS'es. My favorite mods include:

  * Ultra fast key repeat rate (now you can scroll super quick using j/k)
  * No disk image verification (downloaded files open quicker)
  * Display the ~/Library folder in finder (hidden in Lion)

### Macvim troubles with Lua?
```
brew uninstall macvim
brew remove macvim
brew cleanup
brew install macvim --custom-icons --with-override-system-vim --with-lua --with-luajit
```

### Terminal Vim troubles with Lua?

Installing terminal vim (with lua) with an RVM managed Ruby can cause the neocomplete plugin to segfault. Try uninstalling vim, then installing with system ruby:

```
brew uninstall vim
rvm system do brew install vim --with-lua
```

### [Pry](https://pryrepl.org/)

Pry offers a much better out of the box IRB experience with colors, tab completion, and lots of other tricks.
You can also use it as an actual debugger by installing [pry-nav](https://github.com/nixme/pry-nav).

[Learn more about YADR's pry customizations and how to install](./pry.md)

## License

MIT
