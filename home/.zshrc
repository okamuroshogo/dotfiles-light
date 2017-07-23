# anyenv
if [ -d ${HOME}/.anyenv ] ; then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init - --no-rehash)"
  for D in `ls $HOME/.anyenv/envs`
  do
    export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
  done
fi

#}}}
# {{{ Zplug Setting
if [ ! -f $HOME/.zplug/init.zsh ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi
source ~/.zplug/init.zsh

zplug "mafredri/zsh-async", from:github
zplug "chrissicool/zsh-256color"
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "junegunn/fzf-bin"
zplug "junegunn/fzf"
zplug "peco/peco"
zplug "b4b4r07/dotfiles"

zplug "modules/osx", from:prezto
zplug "modules/prompt", from:prezto
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zstyle ':prezto:module:prompt' theme 'powerline'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="gray"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="021"
POWERLEVEL9K_DIR_HOME_BACKGROUND="021"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="021"

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'fasd' \
  'prompt' \
  'git' \
  'tmux'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose > /dev/null
# }}}

# zsh起動時にtmux起動
[[ -z "$TMUX" && ! -z "$PS1" ]] && exec tmux
