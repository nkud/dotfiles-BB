;;; init-web
(when (require 'web-mode nil t)
  ;; emacs23以下の互換
  (when (< emacs-major-version 24)
    (defalias 'prog-mode 'fundamental-mode))
  ;; 適用する拡張子
  (add-to-list 'auto-mode-alist '("\\.phtml$"     . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php$" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x$"   . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb$"       . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))

  ;; インデント数
  (defun web-mode-hook ()
    "Hooks for Web mode."
    (setq web-mode-html-offset   2)
    (setq web-mode-css-offset    2)
    (setq web-mode-script-offset 2)
    (setq web-mode-php-offset    2)
    (setq web-mode-java-offset   2)
    (setq web-mode-asp-offset    2))
  (add-hook 'web-mode-hook 'web-mode-hook)
  )

;;; zencoding
(require 'init-key-chord)
(when (require 'zencoding-mode nil t)
  (add-hook 'sgml-mode-hook 'zencoding-mode)
  (add-hook 'zencoding-mode (lambda () (setq zencoding-indentation 2)))
  (eval-after-load "zencoding-mode"
    '(define-key zencoding-mode-keymap (kbd "C-j") nil))
  (global-set-key (kbd "C-c j") 'zencoding-expand-line)
  ;; (space-chord-define zencoding-mode-keymap "i" 'zencoding-expand-line)
  ;; (keyboard-translate ?\C-i ?\H-i)
  ;; (define-key zencoding-mode-keymap (kbd "H-i") 'zencoding-expand-line)
  )

;;; sass
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
;; indent 2
;; turn off auto compile
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)
   )
  )
(add-hook 'scss-mode-hook
          '(lambda() (scss-custom)))
