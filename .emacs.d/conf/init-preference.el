
;; タブをスペースにする
(setq-default tab-width 2 indent-tabs-mode nil)

;; バックアップを残さない
(setq make-backup-files nil)

;; 折り返し
(defun toggle-truncate-lines ()
  "折り返し表示をトグル動作します."
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (recenter))
(global-set-key (kbd "C-c C-l") 'toggle-truncate-lines)

;; 矩形選択
;(cua-mode nil)
;(setq cua-enable-cua-keys nil)

;; -----------
;; transparent
;(set-frame-parameter nil 'alpha '(92 70))
;; -------------
;;; フォント設定
;; TODO : M+があるかどうかの分岐が必要
(set-face-attribute 'default nil
                    :family "Migu 2M"
                    ;; :family "ricty-12")
                    :height 100)

;; 半角と全角を１：２にする。XXX: できてない。
;(setq face-font-rescale-alist
;           '((".*Migu_1M.*" . 1.2)))
;; 日本語フォントの設定
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Migu 2M"))
;; (font-spec :family "ricty-12"))
;; ￥を＼に
(define-key global-map [?¥] [?\\])

;; ----------------
;; タブ文字の表示幅
(setq-default tab-width 2 indent-tabs-mode nil)
;; ツールバー、スクロールバーを非表示
(when window-system
  (tool-bar-mode 0)                                         ;tool-bar
  (scroll-bar-mode 0)                                       ;scroll-bar
  (menu-bar-mode 0))                                        ;menu-bar
;; highlit otherwise paren
(show-paren-mode t)

;; indent when Return
(global-set-key (kbd "C-m") 'newline-and-indent)

(line-number-mode t)
(column-number-mode t)                                  ;カラム番号を表示
(size-indication-mode t)                                ;ファイルサイズを表示
(setq frame-title-format "%f")

;; 現在行にをハイライト
(global-hl-line-mode 0)
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
(add-to-list 'default-frame-alist '(cursor-type . hbar))
(add-to-list 'default-frame-alist '(blink-cursor-mode . 0))
;; 行番号を表示
;(global-linum-mode nil)

;; ------------------
;; 初期フレームサイズ
(setq initial-frame-alist (quote ((top . 10)
                                  (left . 10)
                                  (width . 100)
                                  (height . 50))))
;;; ------------------------
;;; load theme (for emacs24)
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (locate-user-emacs-file "theme/public/replace-colorthemes")))

(if (>= emacs-major-version 24)

  
;  (load-theme 'adwaita t)
;  (load-theme 'deeper-blue t)
;  (load-theme 'dichromacy t)
;  (load-theme 'light-blue t)
;  (load-theme 'manoj-dark t)
;  (load-theme 'misterioso t)
;  (load-theme 'tango t)
;  (load-theme 'tango-dark t)
;  (load-theme 'tsdh-light t)
;  (load-theme 'tsdh-dark t)
;  (load-theme 'wheatgrass t)
;  (load-theme 'whiteboard t)
;  (load-theme 'wombat t)
    
;    (when (require 'color-theme-solarized)
;      (load-theme 'solarized-light t)
;                                        ;  (load-theme 'solarized-dark t)
;      )
    
;  (load-theme 'aalto-dark t)
;  (load-theme 'pierson t)
;    (load-theme 'jb-simple t)
;  (load-theme 'andreas t)
;  (load-theme 'beige-diff t)
;  (load-theme 'bharadwaj t)
;  (load-theme 'black-on-gray t)
;  (load-theme 'blue-mood t)
;  (load-theme 'classic t)
    (load-theme 'sitaramv-nt t)
;    (load-theme 'sitaramv-solaris t)
;    (load-theme 'deep-blue t)
;    (load-theme 'gtk-ide t)
;    (load-theme 'resolve t)
;    (load-theme 'word-perfect t)
;    (load-theme 'subtle-blue t)
  )
