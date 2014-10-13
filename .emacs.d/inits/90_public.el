#!/usr/bin/tail +2
;;; --------------------------------------------------
;;; smooth-scroll
;; (add-to-list 'load-path (locate-user-emacs-file "public_repos/smooth-scroll.el"))
;; (require 'smooth-scroll)
;; (smooth-scroll-mode t)

;;; --------------------------------------------------
;;; yascroll
(add-to-list 'load-path (locate-user-emacs-file "public_repos/yascroll-el"))
(require 'yascroll)
(global-yascroll-bar-mode 1)

;;; --------------------------------------------------
;;; elscreen
;;;
(add-to-list 'load-path (locate-user-emacs-file "public_repos/elscreen"))
(require 'elscreen)
(require 'elscreen-color-theme)

;;; option
(setq elscreen-display-tab 20)
(setq elscreen-display-screen-number nil)
(setq elscreen-tab-display-control nil)
(setq elscreen-tab-display-kill-screen nil)

;;; start
(elscreen-start)

;;; key config
(global-unset-key (kbd "C-l"))
(elscreen-set-prefix-key "\C-l")
(global-set-key (kbd "C-l C-l") 'recenter-top-bottom)
(define-key elscreen-map (kbd "n") 'elscreen-create)
(define-key elscreen-map (kbd "c") 'elscreen-clone)
;;; --------------------------------------------------

;;; --------------------------------------------------
;;; paredit.el
(require 'paredit)
(show-paren-mode 1)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
;;; --------------------------------------------------
