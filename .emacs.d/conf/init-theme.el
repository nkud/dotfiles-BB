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
;(load-theme 'zenburn t)
;(load-theme 'sitaramv-nt t)
;(load-theme 'solarized-light)
(load-theme 'monokai t)

;; (if (>= emacs-major-version 24)

;(load-theme 'adwaita t)
;  (load-theme 'deeper-blue t)
;  (load-theme 'dichromacy t)
;  (load-theme 'light-blue t)
;  (load-theme 'manoj-dark t)
;  (load-theme 'misterioso t)
;(load-theme 'tango t)
; (load-theme 'tango-dark t)
;  (load-theme 'tsdh-light t)
;  (load-theme 'tsdh-dark t)
;; ;  (load-theme 'wheatgrass t)
;  (load-theme 'whiteboard t)
;  (load-theme 'wombat t)
    
;; ;    (when (require 'color-theme-solarized)
;; ;      (load-theme 'solarized-light t)
;; ;                                        ;  (load-theme 'solarized-dark t)
;; ;      )
    
; (load-theme 'aalto-dark t)
;  (load-theme 'pierson t)
;    (load-theme 'jb-simple t)
;  (load-theme 'andreas t)
;  (load-theme 'beige-diff t)
;  (load-theme 'bharadwaj t)
;  (load-theme 'black-on-gray t)
;; ;  (load-theme 'blue-mood t)
;  (load-theme 'classic t)
;;     (load-theme 'sitaramv-nt t)  ;default
;    (load-theme 'sitaramv-solaris t)
; ;    (load-theme 'deep-blue t)
;    (load-theme 'gtk-ide t) ; good!!!!!!!!!!!!!
;    (load-theme 'resolve t)
;   (load-theme 'word-perfect t)
;    (load-theme 'subtle-blue t)
;;   )

;; Powerline
(when (require 'powerline nil t)
; (powerline-default-theme)
  (powerline-vim-theme)
;  (powerline-nano-theme)
  )
