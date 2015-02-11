((apel status "required" recipe nil)
 (buffer-move status "installed" recipe
	      (:name buffer-move :after
		     (progn
		       (global-set-key
			(kbd "<C-S-up>")
			'buf-move-up)
		       (global-set-key
			(kbd "<C-S-down>")
			'buf-move-down)
		       (global-set-key
			(kbd "<C-S-left>")
			'buf-move-left)
		       (global-set-key
			(kbd "<C-S-right>")
			'buf-move-right))
		     :description "Swap buffers without typing C-x b on each window" :type emacswiki :features buffer-move))
 (cl-lib status "required" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el"))
 (flim status "installed" recipe
       (:name flim :description "A library to provide basic features about message representation or encoding" :depends apel :type github :branch "flim-1_14-wl" :pkgname "wanderlust/flim" :build
	      (mapcar
	       (lambda
		 (target)
		 (list el-get-emacs
		       (mapcar
			(lambda
			  (pkg)
			  (mapcar
			   (lambda
			     (d)
			     `("-L" ,d))
			   (el-get-load-path pkg)))
			'("apel"))
		       (split-string "-batch -q -no-site-file -l FLIM-MK -f")
		       target "prefix" "site-lisp" "site-lisp"))
	       '("compile-flim" "install-flim"))
	      :load-path
	      ("site-lisp/flim")))
 (git-modes status "installed" recipe
	    (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (goto-last-change status "installed" recipe
		   (:name goto-last-change :after
			  (progn
			    (global-set-key
			     (kbd "C-x C-/")
			     'goto-last-change))
			  :description "Move point through buffer-undo-list positions" :type emacswiki :load "goto-last-change.el"))
 (magit status "installed" recipe
	(:name magit :after
	       (progn
		 (global-set-key
		  (kbd "C-x C-z")
		  'magit-status))
	       :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :depends
	       (cl-lib git-modes)
	       :info "." :compile "magit.*.el\\'" :build
	       `(("make" "docs"))
	       :build/berkeley-unix
	       (("gmake docs"))
	       :build/windows-nt
	       (progn nil)))
 (org-mode status "required" recipe nil)
 (semi status "installed" recipe
       (:name semi :description "SEMI is a library to provide MIME feature for GNU Emacs." :depends flim :type github :branch "semi-1_14-wl" :pkgname "wanderlust/semi" :build
	      (mapcar
	       (lambda
		 (target)
		 (list el-get-emacs
		       (mapcar
			(lambda
			  (pkg)
			  (mapcar
			   (lambda
			     (d)
			     `("-L" ,d))
			   (el-get-load-path pkg)))
			'("apel" "flim"))
		       (split-string "-batch -q -no-site-file -l SEMI-MK -f")
		       target "prefix" "site-lisp" "site-lisp"))
	       '("compile-semi" "install-semi"))
	      :load-path
	      ("site-lisp/semi/")))
 (smex status "installed" recipe
       (:name smex :after
	      (progn
		(setq smex-save-file "~/.emacs.d/.smex-items")
		(global-set-key
		 (kbd "M-x")
		 'smex)
		(global-set-key
		 (kbd "M-X")
		 'smex-major-mode-commands))
	      :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
	      (smex-initialize)))
 (wanderlust status "installed" recipe
	     (:name wanderlust :description "Wanderlust bootstrap." :depends semi :type github :pkgname "wanderlust/wanderlust" :build
		    (mapcar
		     (lambda
		       (target-and-dirs)
		       (list el-get-emacs
			     (mapcar
			      (lambda
				(pkg)
				(mapcar
				 (lambda
				   (d)
				   `("-L" ,d))
				 (el-get-load-path pkg)))
			      (append
			       '("apel" "flim" "semi")
			       (when
				   (el-get-package-exists-p "bbdb")
				 (list "bbdb"))))
			     "--eval"
			     (el-get-print-to-string
			      '(progn
				 (setq wl-install-utils t)
				 (setq wl-info-lang "en")
				 (setq wl-news-lang "en")))
			     (split-string "-batch -q -no-site-file -l WL-MK -f")
			     target-and-dirs))
		     '(("wl-texinfo-format" "doc")
		       ("compile-wl-package" "site-lisp" "icons")
		       ("install-wl-package" "site-lisp" "icons")))
		    :info "doc/wl.info" :load-path
		    ("site-lisp/wl" "utils")
		    :post-init
		    (progn
		      (setq wl-icon-directory
			    (expand-file-name "etc/icons" default-directory))))))
