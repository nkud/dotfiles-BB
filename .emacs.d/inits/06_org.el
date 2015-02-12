;;;
;;; org mode
;;;
(add-to-list 'load-path (locate-user-emacs-file "public_repos/org-mode"))
(require 'org)

;; remove validate link
(setq org-html-validation-link nil)

;(require 'org-remember)

;; orgディレクトリを設定
(setq org-directory "~/org/")
(setq org-default-note-file "temp.org")

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
;; Disabling key bindings
;;
(eval-after-load "org"
  '(progn
     (define-key org-mode-map (kbd "C-'") nil) ; for helm
     (define-key org-mode-map (kbd "C-,") nil)
     (define-key org-mode-map (kbd "M-h") nil) ; for hide emacs
     ))

;;; key config
(defun nu/org-agenda-current-week-or-day ()
  "open org agenda current week or day directly"
  (interactive)
  (org-agenda nil "a")
  )

(global-set-key (kbd "C-c C-9") 'nu/org-agenda-current-week-or-day)
(global-set-key (kbd "C-c C-0") 'org-agenda)

;;; 時刻のフォーマット
(setq org-display-custom-times "<%Y-%m-%d %H:%M:S>")
(setq org-time-stamp-custom-formats "<%Y-%m-%d %H:%M:S>")

;;; ファイルを開く状態
(setq org-startup-folded)

;; org-modeでの強調表示を可能にする
(add-hook 'org-mode-hook 'turn-on-font-lock)

;;; --------------------------------------------------
;;; TODOをDONEにした際の処理
;; (require 'org-archive nil 'noerror)
;; (setq org-archive-location "archive.org::")
;; (defun my:org-archive-done-tasks ()
;;   (interactive)
;; ;; ARCHIVE タグを付けるだけなら以下
;; ;;   (org-map-entries 'org-archive-set-tag "/DONE" 'file))
;; ;; org-archive-location に refile したいなら以下
;;   (org-map-entries 'org-archive-subtree "/DONE" 'file))
;; (add-hook 'org-todo-statistics-hook 'my:org-archive-done-tasks)
;; (add-hook 'org-todo-after-statistics-hook 'my:org-archive-done-tasks)
;;; --------------------------------------------------

;;; PlantUML
;; org-plantuml-jar-path は plantuml.jar へのパス
(setq org-plantuml-jar-path "/usr/local/Cellar/plantuml/8002/plantuml.8002.jar")
(defun org-mode-init-uml ()
  (org-babel-do-load-languages
   'org-babel-load-languages
   (add-to-list 'org-babel-load-languages '(plantuml . t))))
(add-hook 'org-mode-hook 'org-mode-init-uml)

;;; the following setting hides blank lines between headings which keeps
;;; folded view nice and compact.
(setq org-cycle-separator-lines 0)

;;; the following setting prevents creating blank lines befor headings but
;;; allows list item to adapt to existing black lines around the items.
(setq org-blank-before-new-entry (quote ((heading)
                                         (plain-list-item . auto))))

;;; 上から挿入？？
(setq org-reverse-note-order t)
