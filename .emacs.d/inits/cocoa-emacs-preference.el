
;; タブをスペースにする
(setq-default tab-width 2 indent-tabs-mode nil)

;; バックアップを残さない
;; (setq make-backup-files nil)

;; 折り返し
(defun toggle-truncate-lines ()
  "折り返し表示をトグル動作します."
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (recenter))
(global-set-key (kbd "C-c C-t") 'toggle-truncate-lines)

;; 矩形選択
;(cua-mode nil)
;(setq cua-enable-cua-keys nil)

;; -----------
;; transparent
(set-frame-parameter nil 'alpha '(100 90))
;; -------------
;;; フォント設定
;; TODO : M+があるかどうかの分岐が必要
;; (add-to-list 'default-frame-alist '(font . "ricty-11"))
;; (set-face-attribute 'default nil
;;                     :family "Migu 2M"
;;                     ;; :width 'normal
;;                     ;; :weight 'light
;;                     :height 100)
;; 日本語フォントの設定
;; (set-fontset-font
;;  nil 'japanese-jisx0208
;;  (font-spec :family "Migu 2M"))

(set-face-attribute 'default nil
                    :family "Ricty Discord"
                    :height 120)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons "Ricty Discord" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons "Ricty Discord" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons "Ricty Discord" "iso10646-1"))

;; 半角と全角を１：２にする。XXX: できてない。
;; (setq face-font-rescale-alist
;;           '((".*Migu_1M.*" . 1.2)))
;; ￥を＼に
(define-key global-map [?¥] [?\\])
;;; カーソル下のフォントを取得
(defun describe-face-at-point ()
  (interactive)
  (message "%s" (get-char-property (point) 'face)))
;; ----------------
;; タブ文字の表示幅
(setq-default tab-width 2 indent-tabs-mode nil)
;; ツールバー、スクロールバーを非表示
(when window-system
  (tool-bar-mode 0)                     ;tool-bar
  (scroll-bar-mode 0)                   ;scroll-bar
  (menu-bar-mode 0))                    ;menu-bar
;; highlit otherwise paren
(show-paren-mode t)

;; indent when Return
(global-set-key (kbd "C-m") 'newline-and-indent)

(line-number-mode t)
(column-number-mode t)                  ;カラム番号を表示
(size-indication-mode t)                ;ファイルサイズを表示
(setq frame-title-format "%f")

;; 現在行にをハイライト
;(global-hl-line-mode 0)
;(set-face-background 'hl-line "#98bc98")
;; display time on mode line
(display-time)
;; display key stroke on echo area soon
(setq echo-keystrokes 0.1)
;; y == yes
(defalias 'yes-or-no-p 'y-or-n-p)

;; スクロールを１行ずつに設定
(setq scroll-step 1)

;; -------------------------
;; カーソルの形状・動作・色
(add-to-list 'default-frame-alist '(cursor-type . box))
(blink-cursor-mode 0)
;; (add-to-list 'default-frame-alist '(blink-cursor-mode . 0))
;; 行番号を表示
;(global-linum-mode nil)

;; highlight cursor line
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     ;; (:background  "#98FB98"))
     (:background  "#eee"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

;; ------------------
;; 初期フレームサイズ
(setq initial-frame-alist (quote ((top . 10)
                                  (left . 10)
                                  (width . 100)
                                  (height . 50))))
;;; 最大化時
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . maximized)))))
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; elscreen
(add-to-list 'load-path (locate-user-emacs-file "public_repos/elscreen"))
(require 'elscreen)
(require 'elscreen-color-theme)

(setq elscreen-display-tab 20)
(setq elscreen-display-screen-number nil)
(setq elscreen-tab-display-control nil)
(setq elscreen-tab-display-kill-screen nil)
(elscreen-start)
;; (require 'init-key-chord)
;; (space-chord-define-global (kbd "c") 'elscreen-create)
;; (space-chord-define-global (kbd "n") 'elscreen-next)
;; (space-chord-define-global (kbd "p") 'elscreen-previous)
;; (space-chord-define-global (kbd "k") 'elscreen-kill)
(global-unset-key (kbd "C-l"))
(elscreen-set-prefix-key "\C-l")
(global-set-key (kbd "C-l C-l") 'recenter-top-bottom)
(define-key elscreen-map (kbd "n") 'elscreen-create)
(define-key elscreen-map (kbd "c") 'elscreen-clone)
(defun test ()
  (interactive)
  (elscreen-execute-extended-command 'helm-find))
(global-set-key (kbd "C-l x") 'test)

;; ウインドウ分割
(defun other-window-or-split-bellow ()
  "ウィンドウを上下に分割"
  (interactive)
  (when (one-window-p)
    (split-window-vertically))
  (other-window 1))
(defun other-window-or-split-right ()
  "ウィンドウを左右に分割"
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(global-set-key (kbd "C-t") 'other-window-or-split-bellow)
(global-unset-key (kbd "C-r"))
(global-set-key (kbd "C-r") 'other-window-or-split-right)

;;; ウィンドウ操作
(global-unset-key (kbd "C-w"))
(global-set-key (kbd "C-w C-k") 'delete-window)
(global-set-key (kbd "C-w C-o") 'delete-other-windows)
(global-set-key (kbd "C-w C-w") 'kill-region)

(global-set-key (kbd "C-c C-k") 'kill-this-buffer)
(global-set-key (kbd "C-c C-s") 'save-buffer)

;; ベルを消す
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; paredit.el
(require 'paredit)
(show-paren-mode 1)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)

;;; Tab, Whitespace colors
;; (defface my-face-r-1 '((t (:background "#888888"))) nil)
;; (defface my-face-b-1 '((t (:background "#888888"))) nil)
;; (defface my-face-b-2 '((t (:background "#888888"))) nil)
;; (defface my-face-u-1 '((t (:foreground "#242424" :underline t))) nil)
;; (defvar my-face-r-1 'my-face-r-1)
;; (defvar my-face-b-1 'my-face-b-1)
;; (defvar my-face-b-2 'my-face-b-2)
;; (defvar my-face-u-1 'my-face-u-1)
;; (defadvice font-lock-mode (before my-font-lock-mode ())
;;   (font-lock-add-keywords
;;    major-mode
;;    '(("\t" 0 my-face-b-2 append)
;;      ("　" 0 my-face-b-1 append)
;;      ("[ \t]+$" 0 my-face-u-1 append)
;;      ;; ("[\r]*\n" 0 my-face-r-1 append)
;;      )))
;; (ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
;; (ad-activate 'font-lock-mode)
