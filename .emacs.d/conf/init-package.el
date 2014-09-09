;; ELPA settings
(when (require 'package nil t)
	;; パッケージリポジトリに Marmalade ELPA を追加
	(add-to-list 'package-archives
							 '("marmalade" . "http://marmalade-repo.org/packages/"))
	(add-to-list 'package-archives
							 '("ELPA" . "http://tromey.com/elpa/"))
	;; インストールしたパッケージにロードパスを通して読み込む
	(package-initialize))
