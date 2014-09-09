;;; anything initialize
;; (auto-install-batch "anything")
(when (require 'anything-startup nil t)
  (setq
    ;; 候補を表示するまでの時間。デフォルトは 0.5
    anything-idle-delay 0.3
    ;; タイプして再描写するまでの時間。デフォルトは 0.1
    anything-input-idle-delay 0.2
    anything-candidate-number-limit 100
    anything-quick-update t
    anything-enable-shortcuts 'alphabet)
  
  ;; 設定
  (when (require 'anything-config nil t)
    (setq anything-su-or-sudo "sudo")
    ;; 読み込むソースファイル集を再定義
    (setq anything-sources
          '(anything-c-source-buffers+
            anything-c-source-files-in-current-dir
            anything-c-source-recentf
            )))
  ;; 自分のanything関数定義
  (setq nu/anything-c-source-commands
        (quote (anything-c-source-emacs-commands
                anything-c-source-man-pages
                anything-c-source-emacs-functions)))
  (setq nu/anything-c-source-files
        '(anything-c-source-buffers+
          anything-c-source-files-in-current-dir
          anything-c-source-recentf))
  (defun nu/anything-commands ()
    " launch anyting from my sources "
    (interactive)
    (anything nu/anything-c-source-commands))
  (defun nu/anything-files ()
    " launch anything from my sources for files "
    (interactive)
    (anything nu/anything-c-source-files))
  ;; key command
  (global-set-key (kbd "C-'") 'nu/anything-commands)
  (global-set-key (kbd "C-;") 'nu/anything-files)
  
  (require 'anything-match-plugin nil t)
  
  (when (and (executable-find "cmigemo")
             (require 'migemo nil t))
    (require 'anything-migemo nil t))

  (when (require 'anything-complete nil t)
    (anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t))
  ;; desbindsがあった時
  (when (require 'descbinds-anything nil t)
    (descbinds-anything-install)))

;; キー割り当て
(global-set-key (kbd "C-]")
                'anything-lisp-complete-symbol-partial-match)

;;; anything-git-files settings
(require 'anything-git-files)

(global-set-key (kbd "C-x g")
                'anything-git-files)

(defun my/anything-for-files ()
  (interactive)
  (require 'anything-config)
  (require 'anything-git-files)
  (let* ((git-source (and (anything-git-files:git-p)
                          `(anything-git-files:modified-source
                            anything-git-files:all-source
                            anything-git-files:untracked-source
                            ,@(anything-git-files:submodule-sources 'all))))
         (other-source '(anything-c-source-recentf
                         anything-c-source-bookmarks
                         anything-c-source-files-in-current-dir+
                         anything-c-source-locate))
         (sources `(anything-c-source-buffers+
                    anything-c-source-ffap-line
                    anything-c-source-ffap-guesser
                    ,@git-source
                    ,@other-source)))
    (anything-other-buffer sources "*anything for files*")))
