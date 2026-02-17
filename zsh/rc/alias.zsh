# 過去のclear打ち間違えシリーズ
alias celar='clear'
alias lcaer='clear'

# AtCoder提出コマンド
alias ojt='function _ojt() { g++ -std=c++23 "$1/main.cpp" && oj t -c "./a.out" -d "$1/sample"; }; _ojt'
alias oja='function _answer() { cd "$1" && acc s && cd ..; }; _answer'
pbc() {
  local dir="${1:?usage: pbc <dir> [file]}"
  local file="${2:-main.cpp}"
  cat "$dir/$file" | pbcopy
}

# cd-bookmark
alias cdb='cd-bookmark'

# ls
alias ls='gls --color=auto --quoting-style=literal'
