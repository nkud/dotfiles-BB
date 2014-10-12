;;; Author: Naoki Ueda

(require 'org)

;; orgディレクトリを設定
;(setq org-directory (locate-user-emacs-file "__org/"))
(setq org-directory "~/org/")
(setq org-default-note-file "notes.org")

;;
;; Tags
;; inspired by `norang`
;; 
(setq org-tag-alist (quote ((:startgroup)
                            ("@errand" . ?e)
                            ("@home" . ?h)
                            ("@lab" . ?l)
                            (:endgroup)
                            ("WAITING" . ?W)
                            ("HOLD" . ?H)
                            ("NOTE" . ?n)
                            ("FLAGGED" . ??))))
;; 
;; TODO status
;; 
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(w)" "|" "DONE(d)")
        (sequence "SOMEDAY(s)" "HOLD(h)" "|")))
;; 
;; リフィルのターゲット設定
;; 
(setq org-refile-targets (quote ((nil :maxlevel . 1)
                                 (org-agenda-files :maxlevel . 1))))
;; 
;; Path to org mode
;(add-to-list 'load-path (locate-user-emacs-file "__org"))
;;

;;
;; Org-Remember
;; 
(require 'org-remember)

;;
;; Disabling key bindings
;;
(eval-after-load "org"
  '(progn
     (define-key org-mode-map (kbd "C-'") nil) ; for helm
     (define-key org-mode-map (kbd "M-h") nil) ; for hide emacs
     ))

;; remove validate link
(setq org-html-validation-link nil)

;;; key config
(defun nu/org-agenda-current-week-or-day ()
  "open org agenda current week or day directly"
  (interactive)
  (org-agenda nil "a")
  )
(global-set-key (kbd "C-c C-9") 'nu/org-agenda-current-week-or-day)
(global-set-key (kbd "C-c C-0") 'org-agenda)
