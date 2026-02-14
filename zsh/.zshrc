export PATH=$PATH:/Users/ishikawatsubasa/.nodebrew/current/bin/acc

# ----------------------------------------------------
# Alias
# ----------------------------------------------------
source "$ZSHDIR/rc/alias.zsh"

# ----------------------------------------------------
# cd-bookmark
# ----------------------------------------------------
fpath=($ZSHDIR/rc/cd-bookmark(N-/) $fpath)
autoload -Uz cd-bookmark

# ----------------------------------------------------
# starship
# ----------------------------------------------------
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$ZSHDIR/starship/starship.toml

# ----------------------------------------------------
# dircolors
# ----------------------------------------------------
eval "$(gdircolors -b "$ZSHDIR/dircolors")"

# ----------------------------------------------------
# 補完時にファイルに応じて色をつける
# ----------------------------------------------------
autoload -Uz compinit
if (( ! ${+functions[_main_complete]} )); then
  compinit
fi
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
unsetopt LIST_TYPES

# ----------------------------------------------------
# zsh-autosuggestions
# ----------------------------------------------------
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=245'
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ----------------------------------------------------
# fzf
# ----------------------------------------------------
[ -f $ZSHDIR/rc/fzf/completion.zsh ] && source "$ZSHDIR/rc/fzf/completion.zsh"
[ -f $ZSHDIR/rc/fzf/key-bindings.zsh ] && source "$ZSHDIR/rc/fzf/key-bindings.zsh"

