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
