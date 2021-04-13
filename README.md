# My Public DOTfiles

Managed with [chezmoi](https://chezmoi.io/).

This repo has been built for my own benefit, however feel free to sneak in and
steal anything that would improve your own productivity.

## Installation instructions

I'd not care of using GitHub for backing up my `dotfiles` if my perspectives of
using them remained in a single machine.
You can install this repo via a Convenient script or manually in its defect.

### Convenience script

In case of not having `chezmoi` installed - Just firing the
`install_dotfiles.sh` after a simple download of it.

```bash
# Using Curl
sh -c "$(curl -fsSL https://git.io/JOLn2)"
# OR Using Wget
sh -c "$(wget -qO- https://git.io/JOLn2)"

# Optional parameters:
# DOTFILES_USER
# DOTFILES_REPO
# DOTFILES_BRANCH
# DOTFILES_DIR      e.g. $HOME/.local/share/chezmoi or "${HOME}/.dotfiles"
```

### Manually with `git`

You will have to clone the repo and from its root directory, execute the
`install.sh` SH script

### Manually with `chezmoi`

Leveraging Chezmoi capabilities

```bash
chezmoi init --apply --verbose https://github.com/nandalopes/dotfiles.git
```

## Security considerations

Having a local `.git` (A.K.A. submodule) folder inside your dotfiles could
become dangerous as you're naturally exposing (or unconsciously prompted to)
your git history and very specific local configuration. Not even to mention the
burden it sometimes signifies.

As I just feed myself from the great works other `peers` conduct in the wild
Internet, I'm a mere consumer of their work who clones their source code and
thereby uses it.

My `mrconfig.tmpl` takes care of cloning/pulling(`--rebase`) their public GitHub
repos.

## License

GPL3
