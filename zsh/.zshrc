peco-select-history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(history -n 1 | \
  eval $tac | \
  peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

export PATH=$PATH:/Users/ishikawatsubasa/.nodebrew/current/bin/acc

# ----------------------------------------------------
# Alias
# ----------------------------------------------------
source "$ZSHDIR/alias.zsh"

# ----------------------------------------------------
# cd-bookmark
# ----------------------------------------------------
fpath=($ZSHDIR/cd-bookmark(N-/) $fpath)
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


