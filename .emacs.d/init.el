;;; Author: Naoki Ueda

;;; TODO
;;; - sublime的な検索・置換機能
;;; - 単語の削除
;;; - elscreenで新しいタブを開く直前にファイルをユーザーに聞く

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

;;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load (locate-user-emacs-file "inits"))

;; Helm or Anything
(if (and (>= emacs-major-version 24) (>= emacs-minor-version 3))
    (load "init-helm")                  ; >= 24.3
  (load "init-anything"))               ; otherwise

;;; org-agendaを起動
(org-agenda nil "a")
