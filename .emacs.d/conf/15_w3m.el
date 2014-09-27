;; w3m

;; (when (require 'w3m-load nil t)
;;   (add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m")  
;;   (setq w3m-command "/usr/local/bin/w3m")
;;   (setq browse-url-browser-function 'w3m-browse-url))

(when (require 'w3m nil t)
  (add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m")  
  (setq w3m-command "/usr/local/bin/w3m")
  (setq browse-url-browser-function 'w3m-browse-url))
