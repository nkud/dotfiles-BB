(require 'starttls)

;;; User name and Email address
(setq user-mail-address "su104003@gmail.com")
(setq user-full-name "Naoki Ueda")

;;; GMail Settings
;; read mail
(setq gnus-select-method
      '(nnimap "gmail"
	       (nnimap-address "imap.gmail.com")
         (nnimap-authinfo-file "~/security/.authinfo")
         (nnimap-authinfo-file "~/.authinfo")
	       (nnimap-server-port 993)
	       (nnimap-stream ssl)))
;; send mail
(setq message-send-mail-function 'smtpmail-send-it
      send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587
                                   "su104003@gmail.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      gnus-ignored-newsgroups "^to\\.\\|^[0-9. ]+\\( \\|$\\)\\|^[\"]\"[#'()]")
(setq starttls-use-gnutls t)
