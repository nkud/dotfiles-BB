;; Skip Functions
(defun nu/is-organize-list ()
  " only entries which has no tags "
  (let ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (re-search-forward ":*:" subtree-end t)
        nil
      subtree-end)))
