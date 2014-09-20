(require 'key-chord)

;; Key-chord
(setq key-chord-two-keys-delay 0.04)

;; Space-chord
(setq space-chord-delay 0.1)
(key-chord-mode t)

(defun nu/space-chord-window-setting ()
  " Space-chord for window "
  (interactive)
  (require 'space-chord)
  (space-chord-define-global "0" 'delete-window)
  (space-chord-define-global "1" 'delete-other-windows)
  (space-chord-define-global "2" 'split-window-below)
  (space-chord-define-global "3" 'split-window-right))

(defun nu/space-chord-org-mode-setting ()
  " Space-chord for org-mode "
  (interactive)
  (require 'space-chord)
  (space-chord-define-global "a" 'org-agenda))

(defun nu/space-chord-command-setting ()
  " Space-chord for command "
  (interactive)
  (require 'space-chord)
  (space-chord-define-global "f" 'find-file)
  (space-chord-define-global "s" 'save-buffer))

(nu/space-chord-window-setting)
(nu/space-chord-org-mode-setting)
(nu/space-chord-command-setting)

(provide 'init-key-chord)
