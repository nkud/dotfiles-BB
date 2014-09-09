(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$ " . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$ " . ruby-mode))

;;; ruby-electric
;;; 括弧などの対応可関係を自動で補正
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)

;;; ruby-block
;;; endに対応する行をハイライト
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;;; smart-compile
(require 'smart-compile)
(define-key ruby-mode-map (kbd "C-c m") 'smart-compile)
(setq compilation-window-height 15) ;; default: 15
