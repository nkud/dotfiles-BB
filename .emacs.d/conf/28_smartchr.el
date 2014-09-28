(require 'smartchr)

(global-set-key (kbd "F") (smartchr '("F" "$")))

(add-hook 'c++-mode-hook
          '(lambda()
             (progn
               (define-key c++-mode-map (kbd "{") (smartchr '("{`!!'}" "{")))
               (define-key c++-mode-map "." (smartchr '("." "->")))
               ;; ( で()を書く
               ;; (define-key c-mode-map "(" 'insert-parens)
               ;; ;; " で""を書く
               ;; (define-key c-mode-map "\"" 'insert-double-quotation)
               ;; ;; [ で[]を書く
               ;; (define-key c-mode-map "[" 'insert-brackets)
               ;; ;; Ctrl+c }でregionを{}で囲む
               ;; (define-key c-mode-map "\C-c}" 'insert-braces-region)
               ;; ;; Ctrl+c )でregionを()で囲む
               ;; (define-key c-mode-map "\C-c)" 'insert-parens-region)
               ;; ;; Ctrl+c ]でregionを[]で囲む
               ;; (define-key c-mode-map "\C-c]" 'insert-brackets-region)
               ;; ;; Ctrl+c "でregionを""で囲む
               ;; (define-key c-mode-map "\C-c\"" 'insert-double-quotation-region)
               )))
