;; ;; exec-path を設定しないと実行できない場合があります
;; (setq exec-path
;;       (append
;;        "~/.emacs.d/conf/" exec-path)
;;       )
;; ;; PATHが正しくとおっていないとフルパスで呼ばないといけなくなります
;; (setenv "PATH"
;;        (concat '"/usr/local/bin:/sw/bin:" (getenv "PATH"))
;;        )
;; C-cwで選択した文字列を辞書で引き別バッファに表示します。
(defun dictionary ()
 "dictionary.app"
 (interactive)

 (let ((editable (not buffer-read-only))
       (pt (save-excursion (mouse-set-point last-nonmenu-event)))
       beg end)

   (if (and mark-active
            (<= (region-beginning) pt) (<= pt (region-end)) )
       (setq beg (region-beginning)
             end (region-end))
     (save-excursion
       (goto-char pt)
       (setq end (progn (forward-word) (point)))
       (setq beg (progn (backward-word) (point)))
       ))

   (setq word (buffer-substring-no-properties beg end))
   (let ((win (selected-window))
         (tmpbuf " * dict-process *"))
     (pop-to-buffer tmpbuf)
     (erase-buffer)
     (insert word "\n")
     (start-process "dict-process" tmpbuf "dict.py" word)
     (select-window win)
     )
 ))
; (define-key global-map (kbd "C-c w") 'dictionary)
