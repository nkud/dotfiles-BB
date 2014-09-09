(defun memo ()
  (interactive)
  (add-change-log-entry-other-window
   nil
   (expand-file-name "~/.emacs.d/changelog")))
