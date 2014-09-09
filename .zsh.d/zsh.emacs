alias emacsclient=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
open_emacs() {
  emacsclient -n $* || open -a /Applications/Emacs.app $*
}

alias em="open_emacs"

emacs-w3m() { emacsclient -e "(w3m \"$@\")"; }
