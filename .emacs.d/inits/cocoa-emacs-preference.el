;; emacsを隠して初期化
;; (when window-system (ns-do-hide-emacs))

;; -----------
;; transparent
;; (set-frame-parameter nil 'alpha '(100 100))
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

;;; 最大化時
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . maximized)))))
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;; --------------------------------------------------
(require 'whitespace)
;; 1行が80桁を超えたら長すぎると判断する。
(setq whitespace-line-column 80)
(setq whitespace-style '(face              ; faceを使って視覚化する。
                         trailing          ; 行末の空白を対象とする。
                         lines-tail        ; 長すぎる行のうち
                                           ; whitespace-line-column以降のみを
                                           ; 対象とする。
                         space-before-tab  ; タブの前にあるスペースを対象とする。
                         space-after-tab)) ; タブの後にあるスペースを対象とする。
;; デフォルトで視覚化を有効にする。
(global-whitespace-mode 1)
