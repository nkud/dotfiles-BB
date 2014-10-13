;;; Author: Naoki Ueda

;;; TODO
;;; - elscreenで新しいタブを開く直前にファイルをユーザーに聞く

(toggle-debug-on-error t) ; ???

(defun add-to-load-path (&rest paths)
  "load-pathを追加する"
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; -----------------------------------------------------------------------------
;; ディレクトリとサブディレクトリをload-pathに追加
;; (add-to-load-path "elisp" "conf" "elpa" "public_repos" "theme" "__secret")
(add-to-load-path "public_repos" "theme" "__secret")

;; 初期ディレクトリ ------------------------------------------------------------
;; (cd "~/")
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

;;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)  ;エラー時のみ表示
(init-loader-load (locate-user-emacs-file "inits")) ;ディレクトリを設定

;;; org-agendaを起動
(org-agenda nil "a")
