;;; helm settings
(when (require 'helm-config nil t)
  (helm-mode 1)

  ;; key bindings
  (global-set-key (kbd "C-;") 'helm-mini)
  (global-set-key (kbd "C-'") 'helm-M-x)
  (global-set-key (kbd "C-,") 'helm-lisp-completion-at-point)

  (global-set-key (kbd "M-y") 'helm-show-kill-ring)

  (global-set-key (kbd "C-c j") 'helm-mini)
  (global-set-key (kbd "C-c m") 'helm-M-x)
  (global-set-key (kbd "C-c i") 'helm-imenu)
  (global-set-key (kbd "C-c o") 'helm-occur)
  (global-set-key (kbd "C-c g") 'helm-browse-project)
  )

(require 'helm-ls-git)
(require 'helm-c-yasnippet)

(when (require 'helm-gtags nil t)
  (add-hook 'c-mode-hook 'helm-gtags-mode)
  ;; key bindings
  ;; (add-hook 'helm-gtags-mode-hook
  ;;           '(lambda ()
  ;;              (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
  ;;              (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
  ;;              (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
  ;;              (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))
  )

;; helm-descbinds
(when (require 'helm-descbinds nil t)
  (helm-descbinds-mode))
