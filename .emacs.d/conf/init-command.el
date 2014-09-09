;;; Author: Naoki Ueda

;; C-hをdelにする
(keyboard-translate ?\C-h ?\C-?)

;; C-tをウィンドウ切り替えにする
(define-key global-map (kbd "C-t") 'other-window)
;; C-w, C-u を kill
;(define-key global-map (kbd "C-w") 'backward-kill-word)
;(define-key global-map (kbd "C-u") 'backward-kill-sentence)

(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; emacsを隠す
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)
