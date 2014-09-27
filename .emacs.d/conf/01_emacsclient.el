; server start for emacs-client
(require 'server)
(unless (server-running-p)
  (server-start))

;; 編集終了後にEmacsをアイコン化
(defun icon-emacs-when-server-is-done ()
  (unless server-clients (iconify-frame)))
(add-hook 'server-done-hook 'icon-emacs-when-server-is-done)

(global-set-key (kbd "C-x C-c") 'server-edit)

(defalias 'exit 'save-buffers-kill-emacs)
