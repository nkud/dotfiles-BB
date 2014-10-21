
(autoload 'wl "wl" "Wanderlust" t)

;; IMAP, gmail:
(setq elmo-imap4-default-server "imap.gmail.com"
      elmo-imap4-default-user "su104003@gmail.com"
      elmo-imap4-default-authenticate-type 'clear
      elmo-imap4-default-port '993
      elmo-imap4-default-stream-type 'ssl

      ;;for non ascii-characters in folder-names
      elmo-imap4-use-modified-utf7 t)

;; SMTP
(setq wl-smtp-connection-type 'starttls
      wl-smtp-posting-port 587
      wl-smtp-authenticate-type "plain"
      wl-smtp-posting-user "su104003"
      wl-smtp-posting-server "smtp.gmail.com"
      wl-local-domain "gmail.com"
      wl-message-id-domain "smtp.gmail.com")

(setq wl-from "My Name <su104003@gmail.com>"

      ;;all system folders (draft, trash, spam, etc) are placed in the
      ;;[Gmail]-folder, except inbox. "%" means it's an IMAP-folder
      wl-default-folder "%inbox"
      wl-draft-folder   "%[Gmail]/Drafts"
      wl-trash-folder   "%[Gmail]/Trash"
      wl-fcc            "%[Gmail]/Sent"

      ;; mark sent messages as read (sent messages get sent back to you and
      ;; placed in the folder specified by wl-fcc)
      wl-fcc-force-as-read    t

      ;;for when auto-compleating foldernames
      wl-default-spec "%")












;; (autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
;; (autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
;; ----------------------------------------------------------
;; ;; From: の設定
;; (setq wl-envelope-from "su104003@gmail.com")
;; (setq wl-from "UserName <su104003@gmail.com>")

;; ;; IMAPサーバの設定
;; (setq elmo-imap4-default-server "imap.gmail.com")
;; (setq elmo-imap4-default-user "su104003@gmail.com")
;; (setq elmo-imap4-default-authenticate-type 'clear)
;; (setq elmo-imap4-default-port '993)
;; (setq elmo-imap4-default-stream-type 'ssl)

;; (setq elmo-imap4-use-modified-utf7 t)

;; ;; SMTPサーバの設定
;; (setq wl-smtp-connection-type 'starttls)
;; (setq wl-smtp-posting-port 587)
;; (setq wl-smtp-authenticate-type "plain")
;; (setq wl-smtp-posting-user "su104003@gmail.com")
;; (setq wl-smtp-posting-server "smtp.gmail.com")
;; (setq wl-local-domain "gmail.com")

;; ;; デフォルトのフォルダ
;; (setq wl-default-folder "%inbox")

;; (setq wl-default-spec "%")
;; (setq wl-draft-folder "%[Gmail]/Drafts")
;; (setq wl-trash-folder "%[Gmail]/Trash")

;; (setq wl-folder-check-async t)

;; (setq wl-dispose-folder-alist
;; (cons '("^%inbox" . remove) wl-dispose-folder-alist))

;; ;; 3ペイン表示
;; (setq wl-stay-folder-window t)

;; (setq smtp-end-of-line "n")

;; ;;ルート証明書の確認を行わない
;; (setq ssl-program-arguments '("s_client" "-quiet" "-host" host "-port" service))
