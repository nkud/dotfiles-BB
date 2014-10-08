;;; 
;;; multiple-cursors
;;; 
(add-to-list 'load-path (locate-user-emacs-file "public_repos/multiple-cursors.el"))
(require 'multiple-cursors)

;;; key config
(global-set-key (kbd "<M-return>") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; 
;;; expand-region
;;; 
(add-to-list 'load-path (locate-user-emacs-file "public_repos/expand-region.el"))
(require 'expand-region)

;;; key config
(global-set-key (kbd "M-m") 'er/expand-region)
(global-set-key (kbd "M-M") 'er/contract-region)

(transient-mark-mode t)
