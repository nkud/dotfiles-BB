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
(add-to-load-path "elisp" "conf" "elpa" "public_repos" "theme" "__secret")

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
(load "init-gcal" t)
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
(load "init-cc")
(load "init-git" t)

;; include packaging system
(load "init-package")      ; init elpa

;;; include option
(load "init-option" t)

;; for window system
(when window-system (load "~/.emacs.d/window-system.el"))

;; ---------------------------------------------------------
;; custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("b39af5ef9cfc7d460bd3659d26731effa17799127d6916c4d85938dda650d4b0" "f07583bdbcca020adecb151868c33820dfe3ad5076ca96f6d51b1da3f0db7105" "9dc64d345811d74b5cd0dac92e5717e1016573417b23811b2c37bb985da41da2" "50d8de7ef10b93c4c7251888ff845577004e086c5bfb2c4bb71eca51b474063a" "6e03b7f86fcca5ce4e63cda5cd0da592973e30b5c5edf198eddf51db7a12b832" "39a854967792547c704cbff8ad4f97429f77dfcf7b3b4d2a62679ecd34b608da" "0f0adcd1352b15a622afd48fcff8232169aac4b5966841e506f815f81dac44ea" "c7471ce3bb42defac344b3ecfca74228731b5ab20f804fd1deb8e65dddeab26a" "9a3c51c59edfefd53e5de64c9da248c24b628d4e78cc808611abd15b3e58858f" "ef36e983fa01515298c017d0902524862ec7d9b00c28922d6da093485821e1ba" "41579fb97bb0f16d58d9414f7dddc6a7f0e62b87d00e93b3f78f8c255955f44b" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" default)))
 '(debug-on-error nil)
 '(yas-trigger-key "TAB"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
