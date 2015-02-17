(add-to-list 'load-path (locate-user-emacs-file "public_repos/dash.el"))
(require 'dash)
;;; ------------------------
;;; load theme (for emacs24)
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (locate-user-emacs-file "theme/public/replace-colorthemes")))
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (locate-user-emacs-file "theme/public/zenburn-emacs")))
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (locate-user-emacs-file "theme/solarized-emacs")))
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (locate-user-emacs-file "theme/monokai-emacs")))
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (locate-user-emacs-file "theme/original-theme")))
;;; light theme
;(load-theme 'gtk-ide t)
;(load-theme 'whateveryouwant t)
;(load-theme 'vim-colors t)
;(load-theme 'emacs-nw t)
;(load-theme 'sitaramv-nt t)
;(load-theme 'dark-green t)
;(load-theme 'dark-font-lock t)
;(load-theme 'andreas t)
;(load-theme 'adwaita t)
(load-theme 'tango t)
;(load-theme 'tango-dark t)

;;; dark theme
;(load "original-theme" t)
;(load-theme 'zenburn t)
;(load-theme 'monokai t)
;(load-theme 'solarized-dark t)
;(load-theme 'desert t)
;(load-theme 'deep-blue t)
;(load-theme 'blue-mood t)
;(load-theme 'classic t)

;;; Power Line
(when (require 'powerline nil t)
; (powerline-default-theme)
  (powerline-vim-theme)
;  (powerline-nano-theme)
  )
