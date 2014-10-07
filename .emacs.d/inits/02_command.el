;;; Author: Naoki Ueda

;; C-hをdelにする
(keyboard-translate ?\C-h ?\C-?)

;; C-tをウィンドウ切り替えにする
;; (define-key global-map (kbd "C-t") 'other-window)

;; C-w, C-u を kill
;; (define-key global-map (kbd "C-w") 'backward-kill-word)
;(define-key global-map (kbd "C-u") 'backward-kill-sentence)

(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; emacsを隠す
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)

;;; セーブ
(global-set-key (kbd "M-s") 'save-buffer)

;;; Help
(global-set-key (kbd "C-?") 'help)

;;; スクロールのステップ
(setq scroll-step 1)

;;; カーソル固定の移動
(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))
