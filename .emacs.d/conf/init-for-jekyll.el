(setq org-publish-project-alist
      '(
        ("org"
         ;; Path to your org files
         :base-directory "~/workspace/dotfiles/.emacs.d/__org"
         :base-extension "org"

         ;; Path to your jekyll project
         :publishing-directory "~/workspace/dotfiles/.emacs.d/__org/my-jekyll/_posts"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :html-extension "markdown"
         :body-only t ;; only export section between <body> </body>
         :auto-sitemap t
         :with-toc nil
         :exclude "PrivatePage.org"
         )
        ("behp_manual"
         ;; Path to your org files
         :base-directory "~/workspace/dotfiles/.emacs.d/__org/BE"
         :base-extension "org"
         
         :publishing-directory "~/workspace/temp_BEhp/document"
         :recursive t
         :publishing-function org-html-publish-to-html
         :html-extension "html"
         :body-only nil ;; only export section between <body> </body>
         :with-toc nil
         :exclude "PrivatePage.org"
         )
        ("my-components" :components ("org"))
        ))
