(add-to-list 'auto-mode-alist '("\\.mm?$" . objc-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . objc-mode))

;; ヘッダファイルを展開する
(ffap-bindings)
(setq ffap-kpathsea-depth 5)

;; ロード
(require 'auto-complete-config)
(require 'ac-company)

;; 対象の全てで補完を有効にする
(global-auto-complete-mode t)

;; ac-companyでcompany-xcodeを有効にする
(ac-company-define-source ac-source-company-xcode company-xcode)

;; objc-modeで補完候補を設定
(setq ac-modes (append ac-modes '(objc-mode)))

;; ロード
(add-hook 'objc-mode-hook
          (lambda ()
            (define-key objc-mode-map (kbd "\t") 'ac-complete)
            ;; XCode を利用した補完を有効にする
            (push 'ac-source-company-xcode ac-sources)
            ;; C++ のキーワード補完をする for Objective-C++
            ;(push 'ac-source-c++-keywords ac-sources)
            ))

;; 起動キーの設定
(ac-set-trigger-key "TAB")

;; 候補の最大件数 default=10
(setq ac-candidate-max 10)
