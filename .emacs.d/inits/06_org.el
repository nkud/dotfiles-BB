;;; Author: Naoki Ueda

(require 'org)

;; orgディレクトリを設定
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
;; Org-Remember
;; 
(require 'org-remember)

;;
;; Disabling key bindings
;;
(eval-after-load "org"
  '(progn
     (define-key org-mode-map (kbd "C-'") nil) ; for helm
     (define-key org-mode-map (kbd "C-,") nil)
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
