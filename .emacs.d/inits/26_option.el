;;; 大文字小文字を区別しない
(setq completion-ignore-case t)

;;; 自動的に編集されたファイルを更新する
(global-auto-revert-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style
      'post-forward-angle-brackets)

;;; バックアップファイルの設定
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))

;;; 起動画面を消す
(setq inhibit-splash-screen t)

;;; スクロールのステップ
(setq scroll-step 1)

;;; ベルを消す
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; y == yes
(defalias 'yes-or-no-p 'y-or-n-p)

;;; undo
(define-key global-map (kbd "C-z") 'undo)
