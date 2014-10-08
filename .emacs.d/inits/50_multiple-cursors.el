(add-to-list 'load-path (locate-user-emacs-file "public_repos/multiple-cursors.el"))
(add-to-list 'load-path (locate-user-emacs-file "public_repos/expand-region.el"))
(require 'multiple-cursors)
(require 'expand-region)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
