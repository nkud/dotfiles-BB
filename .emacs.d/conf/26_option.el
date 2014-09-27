;;; 大文字小文字を区別しない
(setq completion-ignore-case t)
;;; 自動的に編集されたファイルを更新する
(global-auto-revert-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style
      'post-forward-angle-brackets)
