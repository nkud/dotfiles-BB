;; ELPA settings
(when (require 'package nil t)
	;; パッケージリポジトリに Marmalade ELPA を追加
	(add-to-list 'package-archives
							 '("marmalade" . "http://marmalade-repo.org/packages/"))
	(add-to-list 'package-archives
							 '("ELPA" . "http://tromey.com/elpa/"))
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/"))
	;; インストールしたパッケージにロードパスを通して読み込む
	(package-initialize)

  ;; パッケージ情報の更新
  (package-refresh-contents)

  ;; インストールするパッケージ
  (defvar nu/packages
    '(
      ;; python
      jedi
      ;; helm
      helm
      ))
  ;; インストールしていないパッケージをインストール
  (dolist (package nu/packages)
    (unless (package-installed-p package)
      (package-install package)))
  )
