# set PATH so it includes user's bin if it exists
#if [ -d "$HOME/bin" ] ; then
#  PATH="$HOME/bin:$PATH"
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

[[ -z "$LIBVA_DRIVER_NAME" ]] && export LIBVA_DRIVER_NAME=i965

$HOME/.xprofile
