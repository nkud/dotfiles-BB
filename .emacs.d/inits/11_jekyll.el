(setq org-publish-project-alist
      '(
        ("jekyll"
         ;; Path to your org files
         :base-directory "~/workspace/su104003.github.com/_org"
         :base-extension "org"

         ;; Path to your jekyll project
         :publishing-directory "~/workspace/su104003.github.com/_posts/org"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; only export section between <body> </body>
         ;; :auto-sitemap t
         ;; :with-toc nil
         ;; :exclude "PrivatePage.org"
         )
        ("my-components" :components ("jekyll"))
        ))

;;; Open Jekyll File
(require 'open-junk-file)
(setq open-jekyll-file-format "%Y-%m-%d-")
;; (setq open-jekyll-file-dir "")
(defun open-jekyll-file ()
  (interactive)
  (let* ((file (format-time-string
                open-jekyll-file-format (current-time)))
         (dir (file-name-directory file)))
    (funcall open-junk-file-find-file-function
             (concat (concat "~/workspace/su104003.github.com/_org/" (read-string "Jekyll Post (Enter title): " file)
                             ".org"))))
  )
