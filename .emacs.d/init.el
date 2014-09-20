;;; Author: Naoki Ueda

;; emacsを隠して初期化
;; (when window-system (ns-do-hide-emacs))

(toggle-debug-on-error t) ; ???

(defun nu/load-init-file ()
  " 初期化ファイルをロードする "
  (interactive)
  (load-file "~/.emacs.d/init.el"))

;; -----------------------------------------------------------------------------
;; functionファイルをロード
(add-to-list 'load-path (locate-user-emacs-file "conf"))
(load "function")

;; -----------------------------------------------------------------------------
;; ディレクトリとサブディレクトリをload-pathに追加
(add-to-load-path "elisp" "conf" "elpa" "public_repos" "theme")

;; 初期ディレクトリ ------------------------------------------------------------
(cd "~/")
;; ここからはコピー。意味が分かっていない。
(setq inhibit-splash-screen t) ;; scratchを初期に出す
(defun cd-to-homedir-all-buffers ()
  "Change every current directory of all buffers to the home directory."
  (mapc
   (lambda (buf) (set-buffer buf) (cd (expand-file-name "~"))) (buffer-list)))
(cd-to-homedir-all-buffers)

;; デフォルトディレクトリ
(setq default-directory "~/")
(setq command-line-default-direcoty "~/")

;; 環境PATH
;; 要変更
;; より下に記述した物が PATH の先頭に追加されます
(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/opt/local/bin"
              "/sw/bin"
              "/usr/local/bin"
              "/usr/texbin"
              (expand-file-name "~/bin")
              (expand-file-name "~/.emacs.d/bin")
              ))
 ;; PATH と exec-path に同じ物を追加します
 (when (and (file-exists-p dir) (not (member dir exec-path)))
   (setenv "PATH" (concat dir ":" (getenv "PATH")))
   (setq exec-path (append (list dir) exec-path))))

;; -----------------------------------------------------------------------------
;; ロード
(load "init-version")
(load "init-emacsclient")
(load "init-command")                   ; init key bind, command
(load "init-changelog")

(load "init-snippet")
(load "init-auto-install")              ; org-mode初期化

;; helm or anything
(if (and (>= emacs-major-version 24) (>= emacs-minor-version 3))
    (load "init-helm")                  ; >= 24.3
  (load "init-anything"))               ; otherwise

(load "init-org")                       ; org-mode初期化
(load "init-org-export")
(load "focus.el/focus")

(load "init-junk-file")                 ; init open-junk-file
(load "init-auto-complete")							;init auto-complete
(load "init-key-chord.el")
(load "init-for-jekyll")
(load "init-for-objc")                  ; for objective-c programming
(load "init-rss")
(load "init-gnus")
(load "init-w3m")
(load "init-wl")
(load "init-newsticker")
(load "init-gcal")
;(load "init-evernote")

;; OS depending settings
(cond
 ((string-match "apple-darwin" system-configuration) ; for Mac
  (load "init-dictionary")
  )
 ((string-match "linux" system-configuration) ; for Linux
  )
)
 
;; include for programming
(load "init-ruby")
(load "init-js")
(load "init-elisp")
(load "init-web")
;(load "init-cc")
;(load "init-git")

;; include packaging system
(load "init-package")      ; init elpa

;; for window system
(when window-system (load "~/.emacs.d/window-system.el"))

;; ---------------------------------------------------------
;; custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" default)))
 '(debug-on-error nil)
 '(yas-trigger-key "TAB"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
