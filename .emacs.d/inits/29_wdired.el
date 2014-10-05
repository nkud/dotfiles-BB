(add-to-list 'load-path (locate-user-emacs-file "public_repos/manual/wdired.el"))
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
