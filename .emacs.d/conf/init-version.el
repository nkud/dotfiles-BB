;;; バージョンが２４以下の場合
(if (< emacs-major-version 24)
    (require 'cl-lib))
