if [ -d $HOME/.anyenv ] ; then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
  # tmux対応
  for D in `\ls $HOME/.anyenv/envs`
  do
    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
  done
fi
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.xcenv/bin:$PATH"
eval "$(xcenv init -)"

