;;;
;;; Author: Naoki
;;; TODO
;;; - elscreenで新しいタブを開く直前にファイルをユーザーに聞く
;;;

;; Language
(set-language-environment 'Japanese)

;; Coding System
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

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
;; (add-to-load-path "elisp" "conf" "elpa" "public_repo" "theme" "__secret")
(add-to-load-path "elpa"
                  "theme"
                  "el-get/el-get"
                  "__secret")

;; ;;; public_repo以下のフォルダをload-pathに追加する。
;; (let ((default-directory (expand-file-name "~/.emacs.d/public_repo")))
;;   (add-to-list 'load-path default-directory)
;;   (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;       (normal-top-level-add-subdirs-to-load-path)))

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

;; Package
;; ELPA settings
(require 'eieio)
(eval-when-compile (require 'cl))
(when (require 'package nil t)
	;; パッケージリポジトリに Marmalade ELPA を追加
	;; (add-to-list 'package-archives
	;; 						 '("ELPA" . "http://tromey.com/elpa/"))
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
	;; インストールしたパッケージにロードパスを通して読み込む
	(package-initialize)

  ;; パッケージ情報の更新
  (package-refresh-contents)

  ;; インストールするパッケージ
  (defvar nu/packages
    '(
      ;; init
      init-loader
      ;; python
      jedi
      ;; helm
      helm
      helm-ag
      helm-descbinds
      helm-ls-git
      helm-c-yasnippet
      ;; coding
      web-mode
      google-c-style
      quickrun
      markdown-mode
      ;; other
      yasnippet
      open-junk-file
      auto-complete
      key-chord
      c-eldoc
      wgrep
      evernote-mode
      paredit
      company
      elscreen
      wanderlust
      apel
      smex
      flim
      ))
  ;; インストールしていないパッケージをインストール
  (dolist (package nu/packages)
    (unless (package-installed-p package)
      (package-install package)))
  )

;; el-get
(require 'el-get nil 'noerror)
(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))

;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;; (el-get 'sync)

;; (el-get-bundle elpa:undo-tree)
;; (el-get-bundle imakado/emacs-smartchr)

;;; define el-get repository
(setq el-get-sources
      '(
        (:name emacs-smartchr
               :type github
               :pkgname "imakado/emacs-smartchr")
        (:name emacs-calfw
               :type github
               :pkgname "kiwanami/emacs-calfw")
        (:name newsticker-notify
               :type github
               :pkgname "emacsmirror/newsticker-notify")
        (:name ruby-electric
               :type github
               :pkgname "qoobaa/ruby-electric")
        ))
(defvar nu/el-get-packages
  '("emacs-smartchr"
    "newsticker-notify"
    "ruby-electric"
    "emacs-calfw")
  "A list of packages to install from el-get at launch.")
(el-get 'sync nu/el-get-packages)

;;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)  ;エラー時のみ表示
(init-loader-load (locate-user-emacs-file "inits")) ;ディレクトリを設定j

;; ;;; org-agendaを起動
;; (org-agenda nil "a")
