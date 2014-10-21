;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (vassoc set-modified-alist modify-alist remove-alist
;;;;;;  set-alist del-alist put-alist) "apel/site-lisp/apel/alist"
;;;;;;  "apel/site-lisp/apel/alist.el" (21571 8461 0 0))
;;; Generated autoloads from apel/site-lisp/apel/alist.el

(autoload 'put-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in ALIST to VALUE and return ALIST.
If there is no such element, create a new pair (KEY . VALUE) and
return a new alist whose car is the new pair and cdr is ALIST.

\(fn KEY VALUE ALIST)" nil nil)

(autoload 'del-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from ALIST.
Return the modified ALIST.

\(fn KEY ALIST)" nil nil)

(autoload 'set-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in the alist bound to SYMBOL to VALUE.

\(fn SYMBOL KEY VALUE)" nil nil)

(autoload 'remove-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from the alist bound to SYMBOL.

\(fn SYMBOL KEY)" nil nil)

(autoload 'modify-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in the alist DEFAULT.
Return the modified alist.

\(fn MODIFIER DEFAULT)" nil nil)

(autoload 'set-modified-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in an alist bound to SYMBOL.
If SYMBOL is not bound, set it to nil at first.

\(fn SYMBOL MODIFIER)" nil nil)

(autoload 'vassoc "apel/site-lisp/apel/alist" "\
Search AVLIST for an element whose first element equals KEY.
AVLIST is a list of vectors.
See also `assoc'.

\(fn KEY AVLIST)" nil nil)

;;;***

;;;### (autoloads (module-installed-p exec-installed-p file-installed-p
;;;;;;  get-latest-path add-latest-path add-path) "apel/site-lisp/apel/path-util"
;;;;;;  "apel/site-lisp/apel/path-util.el" (21571 8461 0 0))
;;; Generated autoloads from apel/site-lisp/apel/path-util.el

(autoload 'add-path "apel/site-lisp/apel/path-util" "\
Add PATH to `load-path' if it exists under `default-load-path'
directories and it does not exist in `load-path'.

You can use following PATH styles:
	load-path relative: \"PATH/\"
			(it is searched from `default-load-path')
	home directory relative: \"~/PATH/\" \"~USER/PATH/\"
	absolute path: \"/HOO/BAR/BAZ/\"

You can specify following OPTIONS:
	'all-paths	search from `load-path'
			instead of `default-load-path'
	'append		add PATH to the last of `load-path'

\(fn PATH &rest OPTIONS)" nil nil)

(autoload 'add-latest-path "apel/site-lisp/apel/path-util" "\
Add latest path matched by PATTERN to `load-path'
if it exists under `default-load-path' directories
and it does not exist in `load-path'.

If optional argument ALL-PATHS is specified, it is searched from all
of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'get-latest-path "apel/site-lisp/apel/path-util" "\
Return latest directory in default-load-path
which is matched to regexp PATTERN.
If optional argument ALL-PATHS is specified,
it is searched from all of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'file-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn FILE &optional PATHS)" nil nil)

(defvar exec-suffix-list '("") "\
*List of suffixes for executable.")

(autoload 'exec-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `exec-path' is used.
If suffixes is omitted, `exec-suffix-list' is used.

\(fn FILE &optional PATHS SUFFIXES)" nil nil)

(autoload 'module-installed-p "apel/site-lisp/apel/path-util" "\
Return t if module is provided or exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn MODULE &optional PATHS)" nil nil)

;;;***

;;;### (autoloads (richtext-decode richtext-encode) "apel/site-lisp/emu/richtext"
;;;;;;  "apel/site-lisp/emu/richtext.el" (21571 8461 0 0))
;;; Generated autoloads from apel/site-lisp/emu/richtext.el

(autoload 'richtext-encode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

(autoload 'richtext-decode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

;;;***

;;;### (autoloads (buf-move-right buf-move-left buf-move-down buf-move-up)
;;;;;;  "buffer-move/buffer-move" "buffer-move/buffer-move.el" (21571
;;;;;;  8598 0 0))
;;; Generated autoloads from buffer-move/buffer-move.el

(autoload 'buf-move-up "buffer-move/buffer-move" "\
Swap the current buffer and the buffer above the split.
If there is no split, ie now window above the current one, an
error is signaled.

\(fn)" t nil)

(autoload 'buf-move-down "buffer-move/buffer-move" "\
Swap the current buffer and the buffer under the split.
If there is no split, ie now window under the current one, an
error is signaled.

\(fn)" t nil)

(autoload 'buf-move-left "buffer-move/buffer-move" "\
Swap the current buffer and the buffer on the left of the split.
If there is no split, ie now window on the left of the current
one, an error is signaled.

\(fn)" t nil)

(autoload 'buf-move-right "buffer-move/buffer-move" "\
Swap the current buffer and the buffer on the right of the split.
If there is no split, ie now window on the right of the current
one, an error is signaled.

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "el-get/el-get.el" (21571
;;;;;;  8363 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21571 8363 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (mime-decode-header-in-buffer mime-decode-header-in-region
;;;;;;  mime-decode-field-body mime-update-field-decoder-cache mime-find-field-decoder
;;;;;;  mime-find-field-presentation-method mime-set-field-decoder)
;;;;;;  "flim/site-lisp/flim/eword-decode" "flim/site-lisp/flim/eword-decode.el"
;;;;;;  (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/eword-decode.el

(autoload 'mime-set-field-decoder "flim/site-lisp/flim/eword-decode" "\
Set decoder of FIELD.
SPECS must be like `MODE1 DECODER1 MODE2 DECODER2 ...'.
Each mode must be `nil', `plain', `wide', `summary' or `nov'.
If mode is `nil', corresponding decoder is set up for every modes.

\(fn FIELD &rest SPECS)" nil nil)

(autoload 'mime-find-field-presentation-method "flim/site-lisp/flim/eword-decode" "\
Return field-presentation-method from NAME.
NAME must be `plain', `wide', `summary' or `nov'.

\(fn NAME)" nil t)

(autoload 'mime-find-field-decoder "flim/site-lisp/flim/eword-decode" "\
Return function to decode field-body of FIELD in MODE.
Optional argument MODE must be object or name of
field-presentation-method.  Name of field-presentation-method must be
`plain', `wide', `summary' or `nov'.
Default value of MODE is `summary'.

\(fn FIELD &optional MODE)" nil nil)

(autoload 'mime-update-field-decoder-cache "flim/site-lisp/flim/eword-decode" "\
Update field decoder cache `mime-field-decoder-cache'.

\(fn FIELD MODE &optional FUNCTION)" nil nil)

(autoload 'mime-decode-field-body "flim/site-lisp/flim/eword-decode" "\
Decode FIELD-BODY as FIELD-NAME in MODE, and return the result.
Optional argument MODE must be `plain', `wide', `summary' or `nov'.
Default mode is `summary'.

If MODE is `wide' and MAX-COLUMN is non-nil, the result is folded with
MAX-COLUMN.

Non MIME encoded-word part in FILED-BODY is decoded with
`default-mime-charset'.

\(fn FIELD-BODY FIELD-NAME &optional MODE MAX-COLUMN)" nil nil)

(autoload 'mime-decode-header-in-region "flim/site-lisp/flim/eword-decode" "\
Decode MIME encoded-words in region between START and END.
If CODE-CONVERSION is nil, it decodes only encoded-words.  If it is
mime-charset, it decodes non-ASCII bit patterns as the mime-charset.
Otherwise it decodes non-ASCII bit patterns as the
default-mime-charset.

\(fn START END &optional CODE-CONVERSION)" t nil)

(autoload 'mime-decode-header-in-buffer "flim/site-lisp/flim/eword-decode" "\
Decode MIME encoded-words in header fields.
If CODE-CONVERSION is nil, it decodes only encoded-words.  If it is
mime-charset, it decodes non-ASCII bit patterns as the mime-charset.
Otherwise it decodes non-ASCII bit patterns as the
default-mime-charset.
If SEPARATOR is not nil, it is used as header separator.

\(fn &optional CODE-CONVERSION SEPARATOR)" t nil)

;;;***

;;;### (autoloads (mime-encode-header-in-buffer mime-encode-field-body)
;;;;;;  "flim/site-lisp/flim/eword-encode" "flim/site-lisp/flim/eword-encode.el"
;;;;;;  (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/eword-encode.el

(autoload 'mime-encode-field-body "flim/site-lisp/flim/eword-encode" "\
Encode FIELD-BODY as FIELD-NAME, and return the result.
A lexical token includes non-ASCII character is encoded as MIME
encoded-word.  ASCII token is not encoded.

\(fn FIELD-BODY FIELD-NAME)" nil nil)

(autoload 'mime-encode-header-in-buffer "flim/site-lisp/flim/eword-encode" "\
Encode header fields to network representation, such as MIME encoded-word.
It refers the `mime-field-encoding-method-alist' variable.

\(fn &optional CODE-CONVERSION)" t nil)

;;;***

;;;### (autoloads (mime-write-decoded-region mime-insert-encoded-file
;;;;;;  mime-decode-string mime-decode-region mime-encode-region)
;;;;;;  "flim/site-lisp/flim/mel" "flim/site-lisp/flim/mel.el" (21571
;;;;;;  8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mel.el

(autoload 'mime-encode-region "flim/site-lisp/flim/mel" "\
Encode region START to END of current buffer using ENCODING.
ENCODING must be string.

\(fn START END ENCODING)" t nil)

(autoload 'mime-decode-region "flim/site-lisp/flim/mel" "\
Decode region START to END of current buffer using ENCODING.
ENCODING must be string.

\(fn START END ENCODING)" t nil)

(autoload 'mime-decode-string "flim/site-lisp/flim/mel" "\
Decode STRING using ENCODING.
ENCODING must be string.  If ENCODING is found in
`mime-string-decoding-method-alist' as its key, this function decodes
the STRING by its value.

\(fn STRING ENCODING)" nil nil)

(autoload 'mime-insert-encoded-file "flim/site-lisp/flim/mel" "\
Insert file FILENAME encoded by ENCODING format.

\(fn FILENAME ENCODING)" t nil)

(autoload 'mime-write-decoded-region "flim/site-lisp/flim/mel" "\
Decode and write current region encoded by ENCODING into FILENAME.
START and END are buffer positions.

\(fn START END FILENAME ENCODING)" t nil)

;;;***

;;;### (autoloads (mime-format-mailcap-command mime-parse-mailcap-file
;;;;;;  mime-parse-mailcap-buffer) "flim/site-lisp/flim/mime-conf"
;;;;;;  "flim/site-lisp/flim/mime-conf.el" (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mime-conf.el

(autoload 'mime-parse-mailcap-buffer "flim/site-lisp/flim/mime-conf" "\
Parse BUFFER as a mailcap, and return the result.
If optional argument ORDER is a function, result is sorted by it.
If optional argument ORDER is not specified, result is sorted original
order.  Otherwise result is not sorted.

\(fn &optional BUFFER ORDER)" nil nil)

(defvar mime-mailcap-file "~/.mailcap" "\
*File name of user's mailcap file.")

(autoload 'mime-parse-mailcap-file "flim/site-lisp/flim/mime-conf" "\
Parse FILENAME as a mailcap, and return the result.
If optional argument ORDER is a function, result is sorted by it.
If optional argument ORDER is not specified, result is sorted original
order.  Otherwise result is not sorted.

\(fn &optional FILENAME ORDER)" nil nil)

(autoload 'mime-format-mailcap-command "flim/site-lisp/flim/mime-conf" "\
Return formated command string from MTEXT and SITUATION.

MTEXT is a command text of mailcap specification, such as
view-command.

SITUATION is an association-list about information of entity.  Its key
may be:

	'type		primary media-type
	'subtype	media-subtype
	'filename	filename
	STRING		parameter of Content-Type field

\(fn MTEXT SITUATION)" nil nil)

;;;***

;;;### (autoloads (mime-parse-buffer mime-uri-parse-cid mime-parse-msg-id
;;;;;;  mime-read-Content-Transfer-Encoding mime-parse-Content-Transfer-Encoding
;;;;;;  mime-read-Content-Disposition mime-parse-Content-Disposition
;;;;;;  mime-read-Content-Type mime-parse-Content-Type) "flim/site-lisp/flim/mime-parse"
;;;;;;  "flim/site-lisp/flim/mime-parse.el" (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mime-parse.el

(autoload 'mime-parse-Content-Type "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Type field.
FIELD-BODY is a string.
Return value is a mime-content-type object.
If FIELD-BODY is not a valid Content-Type field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Type "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Type field of current-buffer.
Return value is a mime-content-type object.
If Content-Type field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-Content-Disposition "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Disposition field.
FIELD-BODY is a string.
Return value is a mime-content-disposition object.
If FIELD-BODY is not a valid Content-Disposition field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Disposition "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Disposition field of current-buffer.
Return value is a mime-content-disposition object.
If Content-Disposition field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-Content-Transfer-Encoding "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Transfer-Encoding field.
FIELD-BODY is a string.
Return value is a string.
If FIELD-BODY is not a valid Content-Transfer-Encoding field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Transfer-Encoding "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Transfer-Encoding field of current-buffer.
Return value is a string.
If Content-Transfer-Encoding field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-msg-id "flim/site-lisp/flim/mime-parse" "\
Parse TOKENS as msg-id of Content-ID or Message-ID field.

\(fn TOKENS)" nil nil)

(autoload 'mime-uri-parse-cid "flim/site-lisp/flim/mime-parse" "\
Parse STRING as cid URI.

\(fn STRING)" nil nil)

(autoload 'mime-parse-buffer "flim/site-lisp/flim/mime-parse" "\
Parse BUFFER as a MIME message.
If buffer is omitted, it parses current-buffer.

\(fn &optional BUFFER REPRESENTATION-TYPE)" nil nil)

;;;***

;;;### (autoloads (qmtp-send-buffer qmtp-via-qmtp) "flim/site-lisp/flim/qmtp"
;;;;;;  "flim/site-lisp/flim/qmtp.el" (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/qmtp.el

(defvar qmtp-open-connection-function #'open-network-stream)

(autoload 'qmtp-via-qmtp "flim/site-lisp/flim/qmtp" "\


\(fn SENDER RECIPIENTS BUFFER)" nil nil)

(autoload 'qmtp-send-buffer "flim/site-lisp/flim/qmtp" "\


\(fn SENDER RECIPIENTS BUFFER)" nil nil)

;;;***

;;;### (autoloads (smtp-send-buffer smtp-via-smtp) "flim/site-lisp/flim/smtp"
;;;;;;  "flim/site-lisp/flim/smtp.el" (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/smtp.el

(defvar smtp-open-connection-function #'open-network-stream "\
*Function used for connecting to a SMTP server.
The function will be called with the same four arguments as
`open-network-stream' and should return a process object.
Here is an example:

\(setq smtp-open-connection-function
      #'(lambda (name buffer host service)
	  (let ((process-connection-type nil))
	    (start-process name buffer \"ssh\" \"-C\" host
			   \"nc\" host service))))

It connects to a SMTP server using \"ssh\" before actually connecting
to the SMTP port.  Where the command \"nc\" is the netcat executable;
see http://www.atstake.com/research/tools/index.html#network_utilities
for details.")

(autoload 'smtp-via-smtp "flim/site-lisp/flim/smtp" "\
Like `smtp-send-buffer', but sucks in any errors.

\(fn SENDER RECIPIENTS BUFFER)" nil nil)

(autoload 'smtp-send-buffer "flim/site-lisp/flim/smtp" "\
Send a message.
SENDER is an envelope sender address.
RECIPIENTS is a list of envelope recipient addresses.
BUFFER may be a buffer or a buffer name which contains mail message.

\(fn SENDER RECIPIENTS BUFFER)" nil nil)

;;;***

;;;### (autoloads (std11-extract-address-components std11-parse-msg-ids-string
;;;;;;  std11-parse-msg-id-string std11-parse-addresses-string std11-parse-address-string
;;;;;;  std11-fill-msg-id-list-string std11-msg-id-string std11-full-name-string
;;;;;;  std11-address-string std11-lexical-analyze std11-unfold-string
;;;;;;  std11-field-body std11-narrow-to-header std11-fetch-field)
;;;;;;  "flim/site-lisp/flim/std11" "flim/site-lisp/flim/std11.el"
;;;;;;  (21571 8476 0 0))
;;; Generated autoloads from flim/site-lisp/flim/std11.el

(autoload 'std11-fetch-field "flim/site-lisp/flim/std11" "\
Return the value of the header field NAME.
The buffer is expected to be narrowed to just the headers of the message.

\(fn NAME)" nil nil)

(autoload 'std11-narrow-to-header "flim/site-lisp/flim/std11" "\
Narrow to the message header.
If BOUNDARY is not nil, it is used as message header separator.

\(fn &optional BOUNDARY)" nil nil)

(autoload 'std11-field-body "flim/site-lisp/flim/std11" "\
Return the value of the header field NAME.
If BOUNDARY is not nil, it is used as message header separator.

\(fn NAME &optional BOUNDARY)" nil nil)

(autoload 'std11-unfold-string "flim/site-lisp/flim/std11" "\
Unfold STRING as message header field.

\(fn STRING)" nil nil)

(autoload 'std11-lexical-analyze "flim/site-lisp/flim/std11" "\
Analyze STRING as lexical tokens of STD 11.

\(fn STRING &optional ANALYZER START)" nil nil)

(autoload 'std11-address-string "flim/site-lisp/flim/std11" "\
Return string of address part from parsed ADDRESS of RFC 822.

\(fn ADDRESS)" nil nil)

(autoload 'std11-full-name-string "flim/site-lisp/flim/std11" "\
Return string of full-name part from parsed ADDRESS of RFC 822.

\(fn ADDRESS)" nil nil)

(autoload 'std11-msg-id-string "flim/site-lisp/flim/std11" "\
Return string from parsed MSG-ID of RFC 822.

\(fn MSG-ID)" nil nil)

(autoload 'std11-fill-msg-id-list-string "flim/site-lisp/flim/std11" "\
Fill list of msg-id in STRING, and return the result.

\(fn STRING &optional COLUMN)" nil nil)

(autoload 'std11-parse-address-string "flim/site-lisp/flim/std11" "\
Parse STRING as mail address.

\(fn STRING)" nil nil)

(autoload 'std11-parse-addresses-string "flim/site-lisp/flim/std11" "\
Parse STRING as mail address list.

\(fn STRING)" nil nil)

(autoload 'std11-parse-msg-id-string "flim/site-lisp/flim/std11" "\
Parse STRING as msg-id.

\(fn STRING)" nil nil)

(autoload 'std11-parse-msg-ids-string "flim/site-lisp/flim/std11" "\
Parse STRING as `*(phrase / msg-id)'.

\(fn STRING)" nil nil)

(autoload 'std11-extract-address-components "flim/site-lisp/flim/std11" "\
Extract full name and canonical address from STRING.
Returns a list of the form (FULL-NAME CANONICAL-ADDRESS).
If no name can be extracted, FULL-NAME will be nil.

\(fn STRING)" nil nil)

;;;***

;;;### (autoloads (git-commit-mode) "git-modes/git-commit-mode" "git-modes/git-commit-mode.el"
;;;;;;  (21571 8614 0 0))
;;; Generated autoloads from git-modes/git-commit-mode.el

(autoload 'git-commit-mode "git-modes/git-commit-mode" "\
Major mode for editing git commit messages.

This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/MERGE_MSG\\'" . git-commit-mode))

(add-to-list 'auto-mode-alist '("/\\(?:COMMIT\\|NOTES\\|TAG\\|PULLREQ\\)_EDITMSG\\'" . git-commit-mode))

;;;***

;;;### (autoloads (git-rebase-mode) "git-modes/git-rebase-mode" "git-modes/git-rebase-mode.el"
;;;;;;  (21571 8614 0 0))
;;; Generated autoloads from git-modes/git-rebase-mode.el

(autoload 'git-rebase-mode "git-modes/git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads (gitattributes-mode) "git-modes/gitattributes-mode"
;;;;;;  "git-modes/gitattributes-mode.el" (21571 8614 0 0))
;;; Generated autoloads from git-modes/gitattributes-mode.el

(autoload 'gitattributes-mode "git-modes/gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/\\.git/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;***

;;;### (autoloads (gitconfig-mode) "git-modes/gitconfig-mode" "git-modes/gitconfig-mode.el"
;;;;;;  (21571 8614 0 0))
;;; Generated autoloads from git-modes/gitconfig-mode.el

(autoload 'gitconfig-mode "git-modes/gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads (gitignore-mode) "git-modes/gitignore-mode" "git-modes/gitignore-mode.el"
;;;;;;  (21571 8614 0 0))
;;; Generated autoloads from git-modes/gitignore-mode.el

(autoload 'gitignore-mode "git-modes/gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads (goto-last-change) "goto-last-change/goto-last-change"
;;;;;;  "goto-last-change/goto-last-change.el" (21571 8637 0 0))
;;; Generated autoloads from goto-last-change/goto-last-change.el

(autoload 'goto-last-change "goto-last-change/goto-last-change" "\
Set point to the position of the last change.
Consecutive calls set point to the position of the previous change.
With a prefix arg (optional arg MARK-POINT non-nil), set mark so \\[exchange-point-and-mark]
will return point to the current position.

\(fn &optional MARK-POINT MINIMAL-LINE-DISTANCE)" t nil)

;;;***

;;;### (autoloads (magit-run-gitk magit-run-git-gui-blame magit-run-git-gui
;;;;;;  magit-add-change-log-entry-other-window magit-add-change-log-entry
;;;;;;  magit-init magit-branch-manager magit-wazzup magit-diff-stash
;;;;;;  magit-diff-unstaged magit-diff-staged magit-diff-working-tree
;;;;;;  magit-diff magit-interactive-resolve magit-save-index magit-cherry
;;;;;;  magit-reflog-head magit-reflog magit-file-log magit-log-long-ranged
;;;;;;  magit-log-long magit-log-ranged magit-log magit-bisect-run
;;;;;;  magit-bisect-skip magit-bisect-bad magit-bisect-good magit-bisect-reset
;;;;;;  magit-bisect-start magit-submodule-sync magit-submodule-init
;;;;;;  magit-submodule-update-init magit-submodule-update magit-stash-snapshot
;;;;;;  magit-stash magit-delete-tag magit-tag magit-commit-squash
;;;;;;  magit-commit-fixup magit-commit-reword magit-commit-extend
;;;;;;  magit-commit-amend magit-commit magit-push magit-push-tags
;;;;;;  magit-pull magit-remote-update magit-fetch-current magit-fetch
;;;;;;  magit-reset-working-tree magit-reset-head-hard magit-reset-head
;;;;;;  magit-interactive-rebase magit-rename-remote magit-remove-remote
;;;;;;  magit-add-remote magit-rename-branch magit-delete-branch
;;;;;;  magit-create-branch magit-checkout magit-merge-abort magit-merge
;;;;;;  magit-show magit-dired-jump magit-unstage-all magit-stage-all
;;;;;;  magit-status magit-show-commit magit-git-command) "magit/magit"
;;;;;;  "magit/magit.el" (21571 8633 0 0))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-git-command "magit/magit" "\
Execute a Git subcommand asynchronously, displaying the output.
With a prefix argument run Git in the root of the current
repository.  Non-interactively run Git in DIRECTORY with ARGS.

\(fn ARGS DIRECTORY)" t nil)

(autoload 'magit-show-commit "magit/magit" "\
Show information about COMMIT.

\(fn COMMIT &optional NOSELECT)" t nil)

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing DIR.
If DIR is not within a Git repository, offer to create a Git
repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git
control.  Two prefix arguments means to ignore `magit-repo-dirs'
when asking for user input.

Depending on option `magit-status-buffer-switch-function' the
status buffer is shown in another window (the default) or the
current window.  Non-interactively optional SWITCH-FUNCTION
can be used to override this.

\(fn DIR &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-stage-all "magit/magit" "\
Add all remaining changes in tracked files to staging area.
With a prefix argument, add remaining untracked files as well.
\('git add [-u] .').

\(fn &optional INCLUDING-UNTRACKED)" t nil)

(autoload 'magit-unstage-all "magit/magit" "\
Remove all changes from staging area.
\('git reset --mixed HEAD').

\(fn)" t nil)

(autoload 'magit-dired-jump "magit/magit" "\
Visit current item in dired.
With a prefix argument, visit in other window.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-show "magit/magit" "\
Display and select a buffer containing FILE as stored in REV.

Insert the contents of FILE as stored in the revision REV into a
buffer.  Then select the buffer using `pop-to-buffer' or with a
prefix argument using `switch-to-buffer'.  Non-interactivity use
SWITCH-FUNCTION to switch to the buffer, if that is nil simply
return the buffer, without displaying it.

\(fn REV FILE &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-merge "magit/magit" "\
Merge REVISION into the current 'HEAD', leaving changes uncommitted.
With a prefix argument, skip editing the log message and commit.
\('git merge [--no-commit] REVISION').

\(fn REVISION &optional DO-COMMIT)" t nil)

(autoload 'magit-merge-abort "magit/magit" "\
Abort the current merge operation.

\(fn)" t nil)

(autoload 'magit-checkout "magit/magit" "\
Switch 'HEAD' to REVISION and update working tree.
Fails if working tree or staging area contain uncommitted changes.
If REVISION is a remote branch, offer to create a local branch.
\('git checkout [-b] REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-create-branch "magit/magit" "\
Switch 'HEAD' to new BRANCH at revision PARENT and update working tree.
Fails if working tree or staging area contain uncommitted changes.
\('git checkout -b BRANCH REVISION').

\(fn BRANCH PARENT)" t nil)

(autoload 'magit-delete-branch "magit/magit" "\
Delete the BRANCH.
If the branch is the current one, offers to switch to `master' first.
With prefix, forces the removal even if it hasn't been merged.
Works with local or remote branches.
\('git branch [-d|-D] BRANCH' or 'git push <remote-part-of-BRANCH> :refs/heads/BRANCH').

\(fn BRANCH &optional FORCE)" t nil)

(autoload 'magit-rename-branch "magit/magit" "\
Rename branch OLD to NEW.
With prefix, forces the rename even if NEW already exists.
\('git branch [-m|-M] OLD NEW').

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-add-remote "magit/magit" "\
Add the REMOTE and fetch it.
\('git remote add REMOTE URL').

\(fn REMOTE URL)" t nil)

(autoload 'magit-remove-remote "magit/magit" "\
Delete the REMOTE.
\('git remote rm REMOTE').

\(fn REMOTE)" t nil)

(autoload 'magit-rename-remote "magit/magit" "\
Rename remote OLD to NEW.
\('git remote rename OLD NEW').

\(fn OLD NEW)" t nil)

(autoload 'magit-interactive-rebase "magit/magit" "\
Start a git rebase -i session, old school-style.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-head "magit/magit" "\
Switch 'HEAD' to REVISION, keeping prior working tree and staging area.
Any differences from REVISION become new changes to be committed.
With prefix argument, all uncommitted changes in working tree
and staging area are lost.
\('git reset [--soft|--hard] REVISION').

\(fn REVISION &optional HARD)" t nil)

(autoload 'magit-reset-head-hard "magit/magit" "\
Switch 'HEAD' to REVISION, losing all changes.
Uncomitted changes in both working tree and staging area are lost.
\('git reset --hard REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-reset-working-tree "magit/magit" "\
Revert working tree and clear changes from staging area.
\('git reset --hard HEAD').

With a prefix arg, also remove untracked files.
With two prefix args, remove ignored files as well.

\(fn &optional ARG)" t nil)

(autoload 'magit-fetch "magit/magit" "\
Fetch from REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-fetch-current "magit/magit" "\
Run fetch for default remote.

If there is no default remote, ask for one.

\(fn)" t nil)

(autoload 'magit-remote-update "magit/magit" "\
Update all remotes.

\(fn)" t nil)

(autoload 'magit-pull "magit/magit" "\
Run git pull.

If there is no default remote, the user is prompted for one and
its values is saved with git config.  If there is no default
merge branch, the user is prompted for one and its values is
saved with git config.  With a prefix argument, the default
remote is not used and the user is prompted for a remote.  With
two prefix arguments, the default merge branch is not used and
the user is prompted for a merge branch.  Values entered by the
user because of prefix arguments are not saved with git config.

\(fn)" t nil)

(autoload 'magit-push-tags "magit/magit" "\
Push tags to a remote repository.

Push tags to the current branch's remote.  If that isn't set push
to \"origin\" or if that remote doesn't exit but only a single
remote is defined use that.  Otherwise or with a prefix argument
ask the user what remote to use.

\(fn)" t nil)

(autoload 'magit-push "magit/magit" "\
Push the current branch to a remote repository.

This command runs the `magit-push-remote' hook.  By default that
means running `magit-push-dwim'.  So unless you have customized
the hook this command behaves like this:

With a single prefix argument ask the user what branch to push
to.  With two or more prefix arguments also ask the user what
remote to push to.  Otherwise use the remote and branch as
configured using the Git variables `branch.<name>.remote' and
`branch.<name>.merge'.  If the former is undefined ask the user.
If the latter is undefined push without specifing the remote
branch explicitly.

Also see option `magit-set-upstream-on-push'.

\(fn)" t nil)

(autoload 'magit-commit "magit/magit" "\
Create a new commit on HEAD.
With a prefix argument amend to the commit at HEAD instead.
\('git commit [--amend]').

\(fn &optional AMENDP)" t nil)

(autoload 'magit-commit-amend "magit/magit" "\
Amend the last commit.
\('git commit --amend').

\(fn)" t nil)

(autoload 'magit-commit-extend "magit/magit" "\
Amend the last commit, without editing the message.
With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-extend-override-date' can be
used to inverse the meaning of the prefix argument.
\('git commit --no-edit --amend [--keep-date]').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit/magit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-rewrite-override-date' can be
used to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\('git commit --only --amend').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit/magit" "\
Create a fixup commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT)" t nil)

(autoload 'magit-commit-squash "magit/magit" "\
Create a squash commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT FIXUP)" t nil)

(autoload 'magit-tag "magit/magit" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.
\('git tag [--annotate] NAME REV').

\(fn NAME REV &optional ANNOTATE)" t nil)

(autoload 'magit-delete-tag "magit/magit" "\
Delete the tag with the given NAME.
\('git tag -d NAME').

\(fn NAME)" t nil)

(autoload 'magit-stash "magit/magit" "\
Create new stash of working tree and staging area named DESCRIPTION.
Working tree and staging area revert to the current 'HEAD'.
With prefix argument, changes in staging area are kept.
\('git stash save [--keep-index] DESCRIPTION')

\(fn DESCRIPTION)" t nil)

(autoload 'magit-stash-snapshot "magit/magit" "\
Create new stash of working tree and staging area; keep changes in place.
\('git stash save \"Snapshot...\"; git stash apply stash@{0}')

\(fn)" t nil)

(autoload 'magit-submodule-update "magit/magit" "\
Update the submodule of the current git repository.
With a prefix arg, do a submodule update --init.

\(fn &optional INIT)" t nil)

(autoload 'magit-submodule-update-init "magit/magit" "\
Update and init the submodule of the current git repository.

\(fn)" t nil)

(autoload 'magit-submodule-init "magit/magit" "\
Initialize the submodules.

\(fn)" t nil)

(autoload 'magit-submodule-sync "magit/magit" "\
Synchronizes submodule's remote URL configuration.

\(fn)" t nil)

(autoload 'magit-bisect-start "magit/magit" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a know
good and a bad commit.  To move the session forward use the
other actions from the bisect popup (\\<magit-status-mode-map>\\[magit-key-mode-popup-bisecting]).

\(fn BAD GOOD)" t nil)

(autoload 'magit-bisect-reset "magit/magit" "\
After bisecting cleanup bisection state and return to original HEAD.

\(fn)" t nil)

(autoload 'magit-bisect-good "magit/magit" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-bad "magit/magit" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-skip "magit/magit" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one.

\(fn)" t nil)

(autoload 'magit-bisect-run "magit/magit" "\
Bisect automatically by running commands after each step.

\(fn CMDLINE)" t nil)

(autoload 'magit-log "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-log-long "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-long-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-file-log "magit/magit" "\
Display the log for the currently visited file or another one.
With a prefix argument show the log graph.

\(fn FILE &optional USE-GRAPH)" t nil)

(autoload 'magit-reflog "magit/magit" "\
Display the reflog of the current branch.
With a prefix argument another branch can be chosen.

\(fn REF)" t nil)

(autoload 'magit-reflog-head "magit/magit" "\
Display the HEAD reflog.

\(fn)" t nil)

(autoload 'magit-cherry "magit/magit" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

(autoload 'magit-save-index "magit/magit" "\
Add the content of current file as if it was the index.

\(fn)" t nil)

(autoload 'magit-interactive-resolve "magit/magit" "\
Resolve a merge conflict using Ediff.

\(fn FILE)" t nil)

(autoload 'magit-diff "magit/magit" "\
Show differences between two commits.
RANGE should be a range (A..B or A...B) but can also be a single
commit.  If one side of the range is omitted, then it defaults
to HEAD.  If just a commit is given, then changes in the working
tree relative to that commit are shown.

\(fn RANGE &optional WORKING ARGS)" t nil)

(autoload 'magit-diff-working-tree "magit/magit" "\
Show differences between a commit and the current working tree.

\(fn REV)" t nil)

(autoload 'magit-diff-staged "magit/magit" "\
Show differences between the index and the HEAD commit.

\(fn)" t nil)

(autoload 'magit-diff-unstaged "magit/magit" "\
Show differences between the current working tree and index.

\(fn)" t nil)

(autoload 'magit-diff-stash "magit/magit" "\
Show changes in a stash.
A Stash consist of more than just one commit.  This command uses
a special diff range so that the stashed changes actually were a
single commit.

\(fn STASH &optional NOSELECT)" t nil)

(autoload 'magit-wazzup "magit/magit" "\
Show a list of branches in a dedicated buffer.
Unlike in the buffer created by `magit-branch-manager' each
branch can be expanded to show a list of commits not merged
into the selected branch.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-manager "magit/magit" "\
Show a list of branches in a dedicated buffer.

\(fn)" t nil)

(autoload 'magit-init "magit/magit" "\
Create or reinitialize a Git repository.
Read directory name and initialize it as new Git repository.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside; or when
the directory is the root of the existing repository, whether
it should be reinitialized.

Non-interactively DIRECTORY is always (re-)initialized.

\(fn DIRECTORY)" t nil)

(autoload 'magit-add-change-log-entry "magit/magit" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit/magit" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-run-git-gui "magit/magit" "\
Run `git gui' for the current git repository.

\(fn)" t nil)

(autoload 'magit-run-git-gui-blame "magit/magit" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the HEAD, with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-gitk "magit/magit" "\
Run Gitk for the current git repository.
Without a prefix argument run `gitk --all', with
a prefix argument run gitk without any arguments.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (magit-blame-mode) "magit/magit-blame" "magit/magit-blame.el"
;;;;;;  (21571 8633 0 0))
;;; Generated autoloads from magit/magit-blame.el

(autoload 'magit-blame-mode "magit/magit-blame" "\
Display blame information inline.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "magit/magit-key-mode" "magit/magit-key-mode.el"
;;;;;;  (21571 8633 0 0))
;;; Generated autoloads from magit/magit-key-mode.el

(defvar magit-key-mode-groups '((dispatch (actions ("b" "Branching" magit-key-mode-popup-branching) ("B" "Bisecting" magit-key-mode-popup-bisecting) ("c" "Committing" magit-key-mode-popup-committing) ("d" "Diff worktree" magit-diff-working-tree) ("D" "Diff" magit-diff) ("f" "Fetching" magit-key-mode-popup-fetching) ("F" "Pulling" magit-key-mode-popup-pulling) ("g" "Refresh Buffers" magit-refresh-all) ("l" "Logging" magit-key-mode-popup-logging) ("m" "Merging" magit-key-mode-popup-merging) ("M" "Remoting" magit-key-mode-popup-remoting) ("P" "Pushing" magit-key-mode-popup-pushing) ("o" "Submoduling" magit-key-mode-popup-submodule) ("r" "Rewriting" magit-key-mode-popup-rewriting) ("R" "Rebasing" magit-rebase-step) ("s" "Show Status" magit-status) ("S" "Stage all" magit-stage-all) ("t" "Tagging" magit-key-mode-popup-tagging) ("U" "Unstage all" magit-unstage-all) ("v" "Show Commit" magit-show-commit) ("V" "Show File" magit-show) ("w" "Wazzup" magit-wazzup) ("X" "Reset worktree" magit-reset-working-tree) ("y" "Cherry" magit-cherry) ("z" "Stashing" magit-key-mode-popup-stashing) ("!" "Running" magit-key-mode-popup-running) ("$" "Show Process" magit-display-process))) (logging (man-page "git-log") (actions ("l" "Short" magit-log) ("L" "Long" magit-log-long) ("h" "Head Reflog" magit-reflog-head) ("f" "File log" magit-file-log) ("rl" "Ranged short" magit-log-ranged) ("rL" "Ranged long" magit-log-long-ranged) ("rh" "Reflog" magit-reflog)) (switches ("-m" "Only merge commits" "--merges") ("-s" "No merge commits" "--no-merges") ("-do" "Date Order" "--date-order") ("-f" "First parent" "--first-parent") ("-i" "Case insensitive patterns" "-i") ("-pr" "Pickaxe regex" "--pickaxe-regex") ("-g" "Show Graph" "--graph") ("-n" "Name only" "--name-only") ("-am" "All match" "--all-match") ("-al" "All" "--all")) (arguments ("=r" "Relative" "--relative=" read-directory-name) ("=c" "Committer" "--committer=" read-from-minibuffer) ("=>" "Since" "--since=" read-from-minibuffer) ("=<" "Before" "--before=" read-from-minibuffer) ("=a" "Author" "--author=" read-from-minibuffer) ("=g" "Grep messages" "--grep=" read-from-minibuffer) ("=G" "Grep patches" "-G" read-from-minibuffer) ("=L" "Trace evolution of line range [long log only]" "-L" magit-read-file-trace) ("=s" "Pickaxe search" "-S" read-from-minibuffer) ("=b" "Branches" "--branches=" read-from-minibuffer) ("=R" "Remotes" "--remotes=" read-from-minibuffer))) (running (actions ("!" "Git Subcommand (from root)" magit-git-command-topdir) (":" "Git Subcommand (from pwd)" magit-git-command) ("g" "Git Gui" magit-run-git-gui) ("k" "Gitk" magit-run-gitk))) (fetching (man-page "git-fetch") (actions ("f" "Current" magit-fetch-current) ("a" "All" magit-remote-update) ("o" "Other" magit-fetch)) (switches ("-p" "Prune" "--prune"))) (pushing (man-page "git-push") (actions ("P" "Push" magit-push) ("t" "Push tags" magit-push-tags)) (switches ("-f" "Force" "--force") ("-d" "Dry run" "-n") ("-u" "Set upstream" "-u"))) (pulling (man-page "git-pull") (actions ("F" "Pull" magit-pull)) (switches ("-f" "Force" "--force") ("-r" "Rebase" "--rebase"))) (branching (man-page "git-branch") (actions ("v" "Branch manager" magit-branch-manager) ("b" "Checkout" magit-checkout) ("c" "Create" magit-create-branch) ("r" "Rename" magit-rename-branch) ("k" "Delete" magit-delete-branch)) (switches ("-t" "Set upstream configuration" "--track") ("-m" "Merged to HEAD" "--merged") ("-M" "Merged to master" "--merged=master") ("-n" "Not merged to HEAD" "--no-merged") ("-N" "Not merged to master" "--no-merged=master")) (arguments ("=c" "Contains" "--contains=" magit-read-rev-with-default) ("=m" "Merged" "--merged=" magit-read-rev-with-default) ("=n" "Not merged" "--no-merged=" magit-read-rev-with-default))) (remoting (man-page "git-remote") (actions ("v" "Remote manager" magit-branch-manager) ("a" "Add" magit-add-remote) ("r" "Rename" magit-rename-remote) ("k" "Remove" magit-remove-remote))) (tagging (man-page "git-tag") (actions ("t" "Create" magit-tag) ("k" "Delete" magit-delete-tag)) (switches ("-a" "Annotate" "--annotate") ("-f" "Force" "--force") ("-s" "Sign" "--sign"))) (stashing (man-page "git-stash") (actions ("v" "View" magit-diff-stash) ("z" "Save" magit-stash) ("s" "Snapshot" magit-stash-snapshot) ("a" "Apply" magit-stash-apply) ("p" "Pop" magit-stash-pop) ("k" "Drop" magit-stash-drop)) (switches ("-k" "Keep index" "--keep-index") ("-u" "Include untracked files" "--include-untracked") ("-a" "Include all files" "--all"))) (committing (man-page "git-commit") (actions ("c" "Commit" magit-commit) ("a" "Amend" magit-commit-amend) ("e" "Extend" magit-commit-extend) ("r" "Reword" magit-commit-reword) ("f" "Fixup" magit-commit-fixup) ("s" "Squash" magit-commit-squash)) (switches ("-a" "Stage all modified and deleted files" "--all") ("-e" "Allow empty commit" "--allow-empty") ("-v" "Show diff of changes to be committed" "--verbose") ("-n" "Bypass git hooks" "--no-verify") ("-s" "Add Signed-off-by line" "--signoff") ("-R" "Claim authorship and reset author date" "--reset-author")) (arguments ("=A" "Override the author" "--author=" read-from-minibuffer) ("=S" "Sign using gpg" "--gpg-sign=" magit-read-gpg-secret-key))) (merging (man-page "git-merge") (actions ("m" "Merge" magit-merge) ("A" "Abort" magit-merge-abort)) (switches ("-ff" "Fast-forward only" "--ff-only") ("-nf" "No fast-forward" "--no-ff") ("-sq" "Squash" "--squash")) (arguments ("-st" "Strategy" "--strategy=" read-from-minibuffer))) (rewriting (actions ("b" "Begin" magit-rewrite-start) ("s" "Stop" magit-rewrite-stop) ("a" "Abort" magit-rewrite-abort) ("f" "Finish" magit-rewrite-finish) ("d" "Diff pending" magit-rewrite-diff-pending) ("*" "Set unused" magit-rewrite-set-unused) ("." "Set used" magit-rewrite-set-used))) (apply-mailbox (man-page "git-am") (actions ("J" "Apply Mailbox" magit-apply-mailbox)) (switches ("-s" "add a Signed-off-by line to the commit message" "--signoff") ("-3" "allow fall back on 3way merging if needed" "--3way") ("-k" "pass -k flag to git-mailinfo" "--keep") ("-c" "strip everything before a scissors line" "--scissors") ("-p" "pass it through git-apply" "-p") ("-r" "override error message when patch failure occurs" "--resolvemsg") ("-d" "lie about committer date" "--committer-date-is-author-date") ("-D" "use current timestamp for author date" "--ignore-date") ("-b" "pass -b flag to git-mailinfo" "--keep-non-patch")) (arguments ("=p" "format the patch(es) are in" "--patch-format=" read-from-minibuffer))) (submodule (man-page "git-submodule") (actions ("u" "Update" magit-submodule-update) ("b" "Both update and init" magit-submodule-update-init) ("i" "Init" magit-submodule-init) ("s" "Sync" magit-submodule-sync))) (bisecting (man-page "git-bisect") (actions ("b" "Bad" magit-bisect-bad) ("g" "Good" magit-bisect-good) ("k" "Skip" magit-bisect-skip) ("r" "Reset" magit-bisect-reset) ("s" "Start" magit-bisect-start) ("u" "Run" magit-bisect-run))) (diff-options (actions ("s" "Set" magit-set-diff-options) ("d" "Set default" magit-set-default-diff-options) ("c" "Save default" magit-save-default-diff-options) ("r" "Reset to default" magit-reset-diff-options) ("h" "Toggle Hunk Refinement" magit-diff-toggle-refine-hunk)) (switches ("-m" "Show smallest possible diff" "--minimal") ("-p" "Use patience diff algorithm" "--patience") ("-h" "Use histogram diff algorithm" "--histogram") ("-b" "Ignore whitespace changes" "--ignore-space-change") ("-w" "Ignore all whitespace" "--ignore-all-space") ("-W" "Show surrounding functions" "--function-context")))) "\
Holds the key, help, function mapping for the log-mode.
If you modify this make sure you reset `magit-key-mode-keymaps'
to nil.")
 (mapc (lambda (g) (eval `(autoload ',(intern (concat "magit-key-mode-popup-" (symbol-name (car g)))) "magit-key-mode" ,(concat "Key menu for " (symbol-name (car g))) t))) magit-key-mode-groups)

;;;***

;;;### (autoloads (turn-on-magit-stgit magit-stgit-mode magit-stgit-show
;;;;;;  magit-stgit-goto magit-stgit-discard magit-stgit-rebase magit-stgit-repair
;;;;;;  magit-stgit-refresh) "magit/magit-stgit" "magit/magit-stgit.el"
;;;;;;  (21571 8633 0 0))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-refresh "magit/magit-stgit" "\
Refresh a StGit patch.

\(fn &optional PATCH)" t nil)

(autoload 'magit-stgit-repair "magit/magit-stgit" "\
Repair StGit metadata if branch was modified with git commands.
In the case of Git commits these will be imported as new patches
into the series.

\(fn)" t nil)

(autoload 'magit-stgit-rebase "magit/magit-stgit" "\
Rebase a StGit patch series.

\(fn)" t nil)

(autoload 'magit-stgit-discard "magit/magit-stgit" "\
Discard a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-goto "magit/magit-stgit" "\
Set PATCH as target of StGit push and pop operations.

\(fn PATCH)" nil nil)

(autoload 'magit-stgit-show "magit/magit-stgit" "\
Show diff of a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

(custom-add-option 'magit-mode-hook #'magit-stgit-mode)

;;;***

;;;### (autoloads (turn-on-magit-svn magit-svn-mode magit-svn-fetch-externals
;;;;;;  magit-svn-remote-update magit-svn-dcommit magit-svn-rebase
;;;;;;  magit-svn-create-tag magit-svn-create-branch magit-svn-find-rev)
;;;;;;  "magit/magit-svn" "magit/magit-svn.el" (21571 8633 0 0))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-find-rev "magit/magit-svn" "\
Find commit for svn REVISION in BRANCH.

\(fn REV &optional BRANCH)" t nil)

(autoload 'magit-svn-create-branch "magit/magit-svn" "\
Create svn branch NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-create-tag "magit/magit-svn" "\
Create svn tag NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-rebase "magit/magit-svn" "\
Run git-svn rebase.

\(fn)" t nil)

(autoload 'magit-svn-dcommit "magit/magit-svn" "\
Run git-svn dcommit.

\(fn)" t nil)

(autoload 'magit-svn-remote-update "magit/magit-svn" "\
Run git-svn fetch.

\(fn)" t nil)

(autoload 'magit-svn-fetch-externals "magit/magit-svn" "\
Loops through all external repos found by `magit-svn-external-directories'
   and runs git svn fetch, and git svn rebase on each of them.

\(fn)" t nil)

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

(custom-add-option 'magit-mode-hook #'magit-svn-mode)

;;;***

;;;### (autoloads (turn-on-magit-topgit magit-topgit-mode) "magit/magit-topgit"
;;;;;;  "magit/magit-topgit.el" (21571 8633 0 0))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

(custom-add-option 'magit-mode-hook #'magit-topgit-mode)

;;;***

;;;### (autoloads (global-magit-wip-save-mode magit-wip-save-mode)
;;;;;;  "magit/magit-wip" "magit/magit-wip.el" (21571 8633 0 0))
;;; Generated autoloads from magit/magit-wip.el

(autoload 'magit-wip-save-mode "magit/magit-wip" "\
Magit support for committing to a work-in-progress ref.

When this minor mode is turned on and a file is saved inside a
writable git repository then it is also committed to a special
work-in-progress ref.

\(fn &optional ARG)" t nil)

(defvar global-magit-wip-save-mode nil "\
Non-nil if Global-Magit-Wip-Save mode is enabled.
See the command `global-magit-wip-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-wip-save-mode'.")

(custom-autoload 'global-magit-wip-save-mode "magit/magit-wip" nil)

(autoload 'global-magit-wip-save-mode "magit/magit-wip" "\
Toggle Magit-Wip-Save mode in all buffers.
With prefix ARG, enable Global-Magit-Wip-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-Save mode is enabled in all buffers where
`turn-on-magit-wip-save' would do it.
See `magit-wip-save-mode' for more information on Magit-Wip-Save mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mime-edit-again mime-edit-decode-message-in-buffer
;;;;;;  turn-on-mime-edit mime-edit-mode) "semi/site-lisp/semi/mime-edit"
;;;;;;  "semi/site-lisp/semi/mime-edit.el" (21571 8495 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-edit.el

(autoload 'mime-edit-mode "semi/site-lisp/semi/mime-edit" "\
MIME minor mode for editing the tagged MIME message.

In this mode, basically, the message is composed in the tagged MIME
format. The message tag looks like:

	--[[text/plain; charset=ISO-2022-JP][7bit]]

The tag specifies the MIME content type, subtype, optional parameters
and transfer encoding of the message following the tag.  Messages
without any tag are treated as `text/plain' by default.  Charset and
transfer encoding are automatically defined unless explicitly
specified.  Binary messages such as audio and image are usually
hidden.  The messages in the tagged MIME format are automatically
translated into a MIME compliant message when exiting this mode.

Available charsets depend on Emacs version being used.  The following
lists the available charsets of each emacs.

Without mule:	US-ASCII and ISO-8859-1 (or other charset) are available.
With mule:	US-ASCII, ISO-8859-* (except for ISO-8859-5), KOI8-R,
		ISO-2022-JP, ISO-2022-JP-2, EUC-KR, CN-GB-2312,
		CN-BIG5 and ISO-2022-INT-1 are available.

ISO-2022-JP-2 and ISO-2022-INT-1 charsets used in mule is expected to
be used to represent multilingual text in intermixed manner.  Any
languages that has no registered charset are represented as either
ISO-2022-JP-2 or ISO-2022-INT-1 in mule.

If you want to use non-ISO-8859-1 charset in Emacs 19 or XEmacs
without mule, please set variable `default-mime-charset'.  This
variable must be symbol of which name is a MIME charset.

If you want to add more charsets in mule, please set variable
`charsets-mime-charset-alist'.  This variable must be alist of which
key is list of charset and value is symbol of MIME charset.  If name
of coding-system is different as MIME charset, please set variable
`mime-charset-coding-system-alist'.  This variable must be alist of
which key is MIME charset and value is coding-system.

Following commands are available in addition to major mode commands:

\[make single part]
\\[mime-edit-insert-text]	insert a text message.
\\[mime-edit-insert-file]	insert a (binary) file.
\\[mime-eidt-insert-file-as-text] insert a text file.
\\[mime-edit-insert-external]	insert a reference to external body.
\\[mime-edit-insert-voice]	insert a voice message.
\\[mime-edit-insert-message]	insert a mail or news message.
\\[mime-edit-insert-mail]	insert a mail message.
\\[mime-edit-insert-signature]	insert a signature file at end.
\\[mime-edit-insert-key]	insert PGP public key.
\\[mime-edit-insert-tag]	insert a new MIME tag.

\[make enclosure (maybe multipart)]
\\[mime-edit-enclose-alternative-region]   enclose as multipart/alternative.
\\[mime-edit-enclose-parallel-region]	   enclose as multipart/parallel.
\\[mime-edit-enclose-mixed-region]	   enclose as multipart/mixed.
\\[mime-edit-enclose-digest-region]	   enclose as multipart/digest.
\\[mime-edit-enclose-pgp-signed-region]	   enclose as PGP signed.
\\[mime-edit-enclose-pgp-encrypted-region] enclose as PGP encrypted.
\\[mime-edit-enclose-quote-region]	   enclose as verbose mode
					   (to avoid to expand tags)

\[other commands]
\\[mime-edit-set-transfer-level-7bit]	set transfer-level as 7.
\\[mime-edit-set-transfer-level-8bit]	set transfer-level as 8.
\\[mime-edit-set-split]			set message splitting mode.
\\[mime-edit-set-sign]			set PGP-sign mode.
\\[mime-edit-set-encrypt]		set PGP-encryption mode.
\\[mime-edit-preview-message]		preview editing MIME message.
\\[mime-edit-exit]			exit and translate into a MIME
					compliant message.
\\[mime-edit-help]			show this help.
\\[mime-edit-maybe-translate]		exit and translate if in MIME mode,
					then split.

Additional commands are available in some major modes:
C-c C-c		exit, translate and run the original command.
C-c C-s		exit, translate and run the original command.

The following is a message example written in the tagged MIME format.
TABs at the beginning of the line are not a part of the message:

	This is a conventional plain text.  It should be translated
	into text/plain.
	--[[text/plain]]
	This is also a plain text.  But, it is explicitly specified as
	is.
	--[[text/plain; charset=ISO-8859-1]]
	This is also a plain text.  But charset is specified as
	iso-8859-1.

	¡Hola!  Buenos días.  ¿Cómo está usted?
	--[[text/enriched]]
	This is a <bold>enriched text</bold>.
	--[[image/gif][base64]]...image encoded in base64 here...
	--[[audio/basic][base64]]...audio encoded in base64 here...

User customizable variables (not documented all of them):
 mime-edit-prefix
    Specifies a key prefix for MIME minor mode commands.

 mime-ignore-preceding-spaces
    Preceding white spaces in a message body are ignored if non-nil.

 mime-ignore-trailing-spaces
    Trailing white spaces in a message body are ignored if non-nil.

 mime-auto-hide-body
    Hide a non-textual body message encoded in base64 after insertion
    if non-nil.

 mime-transfer-level
    A number of network transfer level.  It should be bigger than 7.
    If you are in 8bit-through environment, please set 8.

 mime-edit-voice-recorder
    Specifies a function to record a voice message and encode it.
    The function `mime-edit-voice-recorder-for-sun' is for Sun
    SparcStations.

 mime-edit-mode-hook
    Turning on MIME mode calls the value of mime-edit-mode-hook, if
    it is non-nil.

 mime-edit-translate-hook
    The value of mime-edit-translate-hook is called just before translating
    the tagged MIME format into a MIME compliant message if it is
    non-nil.  If the hook call the function mime-edit-insert-signature,
    the signature file will be inserted automatically.

 mime-edit-exit-hook
    Turning off MIME mode calls the value of mime-edit-exit-hook, if it is
    non-nil.

\(fn)" t nil)

(autoload 'turn-on-mime-edit "semi/site-lisp/semi/mime-edit" "\
Unconditionally turn on MIME-Edit mode.

\(fn)" t nil)

(defalias 'edit-mime 'turn-on-mime-edit)

(autoload 'mime-edit-decode-message-in-buffer "semi/site-lisp/semi/mime-edit" "\


\(fn &optional DEFAULT-CONTENT-TYPE NOT-DECODE-TEXT)" nil nil)

(autoload 'mime-edit-again "semi/site-lisp/semi/mime-edit" "\
Convert current buffer to MIME-Edit buffer and turn on MIME-Edit mode.
Content-Type and Content-Transfer-Encoding header fields will be
converted to MIME-Edit tags.

\(fn &optional NOT-DECODE-TEXT NO-SEPARATOR NOT-TURN-ON)" t nil)

;;;***

;;;### (autoloads (mime-play-entity mime-preview-play-current-entity)
;;;;;;  "semi/site-lisp/semi/mime-play" "semi/site-lisp/semi/mime-play.el"
;;;;;;  (21571 8495 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-play.el

(autoload 'mime-preview-play-current-entity "semi/site-lisp/semi/mime-play" "\
Play current entity.
It decodes current entity to call internal or external method.  The
method is selected from variable `mime-acting-condition'.
If IGNORE-EXAMPLES (C-u prefix) is specified, this function ignores
`mime-acting-situation-example-list'.
If MODE is specified, play as it.  Default MODE is \"play\".

\(fn &optional IGNORE-EXAMPLES MODE)" t nil)

(autoload 'mime-play-entity "semi/site-lisp/semi/mime-play" "\
Play entity specified by ENTITY.
It decodes the entity to call internal or external method.  The method
is selected from variable `mime-acting-condition'.  If MODE is
specified, play as it.  Default MODE is \"play\".

\(fn ENTITY &optional SITUATION IGNORED-METHOD)" nil nil)

;;;***

;;;### (autoloads (mime-view-buffer mime-display-message) "semi/site-lisp/semi/mime-view"
;;;;;;  "semi/site-lisp/semi/mime-view.el" (21571 8495 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-view.el

(autoload 'mime-display-message "semi/site-lisp/semi/mime-view" "\
View MESSAGE in MIME-View mode.

Optional argument PREVIEW-BUFFER specifies the buffer of the
presentation.  It must be either nil or a name of preview buffer.

Optional argument MOTHER specifies mother-buffer of the preview-buffer.

Optional argument DEFAULT-KEYMAP-OR-FUNCTION is nil, keymap or
function.  If it is a keymap, keymap of MIME-View mode will be added
to it.  If it is a function, it will be bound as default binding of
keymap of MIME-View mode.

Optional argument ORIGINAL-MAJOR-MODE is major-mode of representation
buffer of MESSAGE.  If it is nil, current `major-mode' is used.

Optional argument KEYMAP is keymap of MIME-View mode.  If it is
non-nil, DEFAULT-KEYMAP-OR-FUNCTION is ignored.  If it is nil,
`mime-view-mode-default-map' is used.

\(fn MESSAGE &optional PREVIEW-BUFFER MOTHER DEFAULT-KEYMAP-OR-FUNCTION ORIGINAL-MAJOR-MODE KEYMAP)" nil nil)

(autoload 'mime-view-buffer "semi/site-lisp/semi/mime-view" "\
View RAW-BUFFER in MIME-View mode.
Optional argument PREVIEW-BUFFER is either nil or a name of preview
buffer.
Optional argument DEFAULT-KEYMAP-OR-FUNCTION is nil, keymap or
function.  If it is a keymap, keymap of MIME-View mode will be added
to it.  If it is a function, it will be bound as default binding of
keymap of MIME-View mode.
Optional argument REPRESENTATION-TYPE is representation-type of
message.  It must be nil, `binary' or `cooked'.  If it is nil,
`cooked' is used as default.

\(fn &optional RAW-BUFFER PREVIEW-BUFFER MOTHER DEFAULT-KEYMAP-OR-FUNCTION REPRESENTATION-TYPE)" t nil)

;;;***

;;;### (autoloads (mime-display-application/x-postpet postpet-decode)
;;;;;;  "semi/site-lisp/semi/postpet" "semi/site-lisp/semi/postpet.el"
;;;;;;  (21571 8495 0 0))
;;; Generated autoloads from semi/site-lisp/semi/postpet.el

(autoload 'postpet-decode "semi/site-lisp/semi/postpet" "\


\(fn STRING)" nil nil)

(autoload 'mime-display-application/x-postpet "semi/site-lisp/semi/postpet" "\


\(fn ENTITY SITUATION)" nil nil)

;;;***

;;;### (autoloads (smex-initialize smex-major-mode-commands smex)
;;;;;;  "smex/smex" "smex/smex.el" (21571 8607 0 0))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-major-mode-commands "smex/smex" "\
Like `smex', but limited to commands that are relevant to the active major mode.

\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (elmo-make-folder) "wanderlust/site-lisp/wl/elmo"
;;;;;;  "wanderlust/site-lisp/wl/elmo.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/elmo.el

(autoload 'elmo-make-folder "wanderlust/site-lisp/wl/elmo" "\
Make an ELMO folder structure specified by NAME.
If optional argument NON-PERSISTENT is non-nil, the folder msgdb is not saved.
If optional argument MIME-CHARSET is specified, it is used for
encode and decode a multibyte string.

\(fn NAME &optional NON-PERSISTENT MIME-CHARSET)" nil nil)

;;;***

;;;### (autoloads (elmo-split) "wanderlust/site-lisp/wl/elmo-split"
;;;;;;  "wanderlust/site-lisp/wl/elmo-split.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/elmo-split.el

(autoload 'elmo-split "wanderlust/site-lisp/wl/elmo-split" "\
Split messages in the `elmo-split-folder' according to `elmo-split-rule'.
If prefix argument ARG is specified, do a reharsal (no harm).

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (wl-draft-send-with-imput-async) "wanderlust/site-lisp/wl/im-wl"
;;;;;;  "wanderlust/site-lisp/wl/im-wl.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/im-wl.el

(autoload 'wl-draft-send-with-imput-async "wanderlust/site-lisp/wl/im-wl" "\
Send the message in the current buffer with imput asynchronously.

\(fn EDITING-BUFFER KILL-WHEN-DONE)" nil nil)

;;;***

;;;### (autoloads (wl-other-frame wl) "wanderlust/site-lisp/wl/wl"
;;;;;;  "wanderlust/site-lisp/wl/wl.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/wl.el

(autoload 'wl "wanderlust/site-lisp/wl/wl" "\
Start Wanderlust -- Yet Another Message Interface On Emacsen.
If ARG (prefix argument) is specified, folder checkings are skipped.

\(fn &optional ARG)" t nil)

(autoload 'wl-other-frame "wanderlust/site-lisp/wl/wl" "\
Pop up a frame to read messages via Wanderlust.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (wl-addrmgr) "wanderlust/site-lisp/wl/wl-addrmgr"
;;;;;;  "wanderlust/site-lisp/wl/wl-addrmgr.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/wl-addrmgr.el

(autoload 'wl-addrmgr "wanderlust/site-lisp/wl/wl-addrmgr" "\
Start an Address manager.

\(fn)" t nil)

;;;***

;;;### (autoloads (wl-user-agent-compose wl-draft) "wanderlust/site-lisp/wl/wl-draft"
;;;;;;  "wanderlust/site-lisp/wl/wl-draft.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/site-lisp/wl/wl-draft.el

(autoload 'wl-draft "wanderlust/site-lisp/wl/wl-draft" "\
Write and send mail/news message with Wanderlust.

\(fn &optional HEADER-ALIST CONTENT-TYPE CONTENT-TRANSFER-ENCODING BODY EDIT-AGAIN PARENT-FOLDER PARENT-NUMBER)" t nil)

(autoload 'wl-user-agent-compose "wanderlust/site-lisp/wl/wl-draft" "\
Support the `compose-mail' interface for wl.
Only support for TO, SUBJECT, and OTHER-HEADERS has been implemented.
Support for CONTINUE, YANK-ACTION, SEND-ACTIONS and RETURN-ACTION has not
been implemented yet.  Partial support for SWITCH-FUNCTION now supported.

\(fn &optional TO SUBJECT OTHER-HEADERS CONTINUE SWITCH-FUNCTION YANK-ACTION SEND-ACTIONS RETURN-ACTION)" nil nil)

;;;***

;;;### (autoloads (bbdb-wl-setup) "wanderlust/utils/bbdb-wl" "wanderlust/utils/bbdb-wl.el"
;;;;;;  (21571 8521 0 0))
;;; Generated autoloads from wanderlust/utils/bbdb-wl.el

(autoload 'bbdb-wl-setup "wanderlust/utils/bbdb-wl" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (wl-draft-send-with-imput-async) "wanderlust/utils/im-wl"
;;;;;;  "wanderlust/utils/im-wl.el" (21571 8521 0 0))
;;; Generated autoloads from wanderlust/utils/im-wl.el

(autoload 'wl-draft-send-with-imput-async "wanderlust/utils/im-wl" "\
Send the message in the current buffer with imput asynchronously.

\(fn EDITING-BUFFER KILL-WHEN-DONE)" nil nil)

;;;***

;;;### (autoloads nil nil ("apel/site-lisp/apel/calist.el" "apel/site-lisp/apel/filename.el"
;;;;;;  "apel/site-lisp/apel/install.el" "apel/site-lisp/emu/apel-ver.el"
;;;;;;  "apel/site-lisp/emu/broken.el" "apel/site-lisp/emu/emu.el"
;;;;;;  "apel/site-lisp/emu/inv-23.el" "apel/site-lisp/emu/invisible.el"
;;;;;;  "apel/site-lisp/emu/mcharset.el" "apel/site-lisp/emu/mcs-20.el"
;;;;;;  "apel/site-lisp/emu/mcs-e20.el" "apel/site-lisp/emu/mule-caesar.el"
;;;;;;  "apel/site-lisp/emu/pccl-20.el" "apel/site-lisp/emu/pccl.el"
;;;;;;  "apel/site-lisp/emu/pces-20.el" "apel/site-lisp/emu/pces-e20.el"
;;;;;;  "apel/site-lisp/emu/pces.el" "apel/site-lisp/emu/pcustom.el"
;;;;;;  "apel/site-lisp/emu/poe.el" "apel/site-lisp/emu/poem-e20.el"
;;;;;;  "apel/site-lisp/emu/poem-e20_3.el" "apel/site-lisp/emu/poem.el"
;;;;;;  "apel/site-lisp/emu/product.el" "apel/site-lisp/emu/pym.el"
;;;;;;  "apel/site-lisp/emu/static.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "flim/site-lisp/flim/hex-util.el"
;;;;;;  "flim/site-lisp/flim/hmac-def.el" "flim/site-lisp/flim/hmac-md5.el"
;;;;;;  "flim/site-lisp/flim/hmac-sha1.el" "flim/site-lisp/flim/luna.el"
;;;;;;  "flim/site-lisp/flim/lunit.el" "flim/site-lisp/flim/md4.el"
;;;;;;  "flim/site-lisp/flim/md5.el" "flim/site-lisp/flim/mel-b-ccl.el"
;;;;;;  "flim/site-lisp/flim/mel-b-el.el" "flim/site-lisp/flim/mel-g.el"
;;;;;;  "flim/site-lisp/flim/mel-q-ccl.el" "flim/site-lisp/flim/mel-q.el"
;;;;;;  "flim/site-lisp/flim/mel-u.el" "flim/site-lisp/flim/mime-def.el"
;;;;;;  "flim/site-lisp/flim/mime.el" "flim/site-lisp/flim/mmbuffer.el"
;;;;;;  "flim/site-lisp/flim/mmcooked.el" "flim/site-lisp/flim/mmexternal.el"
;;;;;;  "flim/site-lisp/flim/mmgeneric.el" "flim/site-lisp/flim/ntlm.el"
;;;;;;  "flim/site-lisp/flim/sasl-cram.el" "flim/site-lisp/flim/sasl-digest.el"
;;;;;;  "flim/site-lisp/flim/sasl-ntlm.el" "flim/site-lisp/flim/sasl-scram.el"
;;;;;;  "flim/site-lisp/flim/sasl.el" "flim/site-lisp/flim/sha1.el"
;;;;;;  "semi/site-lisp/semi/mail-mime-setup.el" "semi/site-lisp/semi/mime-bbdb.el"
;;;;;;  "semi/site-lisp/semi/mime-image.el" "semi/site-lisp/semi/mime-mac.el"
;;;;;;  "semi/site-lisp/semi/mime-partial.el" "semi/site-lisp/semi/mime-pgp.el"
;;;;;;  "semi/site-lisp/semi/mime-setup.el" "semi/site-lisp/semi/mime-shr.el"
;;;;;;  "semi/site-lisp/semi/mime-signature.el" "semi/site-lisp/semi/mime-vcard.el"
;;;;;;  "semi/site-lisp/semi/mime-w3.el" "semi/site-lisp/semi/semi-def.el"
;;;;;;  "semi/site-lisp/semi/semi-setup.el" "semi/site-lisp/semi/signature.el"
;;;;;;  "wanderlust/site-lisp/wl/acap.el" "wanderlust/site-lisp/wl/elmo-access.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-archive.el" "wanderlust/site-lisp/wl/elmo-cache.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-date.el" "wanderlust/site-lisp/wl/elmo-dop.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-file.el" "wanderlust/site-lisp/wl/elmo-filter.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-flag.el" "wanderlust/site-lisp/wl/elmo-imap4.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-internal.el" "wanderlust/site-lisp/wl/elmo-localdir.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-localnews.el" "wanderlust/site-lisp/wl/elmo-maildir.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-map.el" "wanderlust/site-lisp/wl/elmo-mime.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-msgdb.el" "wanderlust/site-lisp/wl/elmo-multi.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-net.el" "wanderlust/site-lisp/wl/elmo-nntp.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-null.el" "wanderlust/site-lisp/wl/elmo-pipe.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-pop3.el" "wanderlust/site-lisp/wl/elmo-search.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-sendlog.el" "wanderlust/site-lisp/wl/elmo-signal.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-spam.el" "wanderlust/site-lisp/wl/elmo-util.el"
;;;;;;  "wanderlust/site-lisp/wl/elmo-vars.el" "wanderlust/site-lisp/wl/elmo-version.el"
;;;;;;  "wanderlust/site-lisp/wl/elsp-bogofilter.el" "wanderlust/site-lisp/wl/elsp-bsfilter.el"
;;;;;;  "wanderlust/site-lisp/wl/elsp-sa.el" "wanderlust/site-lisp/wl/elsp-spamoracle.el"
;;;;;;  "wanderlust/site-lisp/wl/mmimap.el" "wanderlust/site-lisp/wl/modb-entity.el"
;;;;;;  "wanderlust/site-lisp/wl/modb-legacy.el" "wanderlust/site-lisp/wl/modb-standard.el"
;;;;;;  "wanderlust/site-lisp/wl/modb.el" "wanderlust/site-lisp/wl/pldap.el"
;;;;;;  "wanderlust/site-lisp/wl/rfc2368.el" "wanderlust/site-lisp/wl/slp.el"
;;;;;;  "wanderlust/site-lisp/wl/ssl.el" "wanderlust/site-lisp/wl/wl-acap.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-action.el" "wanderlust/site-lisp/wl/wl-addrbook.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-address.el" "wanderlust/site-lisp/wl/wl-batch.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-complete.el" "wanderlust/site-lisp/wl/wl-demo.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-e21.el" "wanderlust/site-lisp/wl/wl-expire.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-fldmgr.el" "wanderlust/site-lisp/wl/wl-folder.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-highlight.el" "wanderlust/site-lisp/wl/wl-mailto.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-message.el" "wanderlust/site-lisp/wl/wl-mime.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-news.el" "wanderlust/site-lisp/wl/wl-refile.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-score.el" "wanderlust/site-lisp/wl/wl-spam.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-summary.el" "wanderlust/site-lisp/wl/wl-template.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-thread.el" "wanderlust/site-lisp/wl/wl-util.el"
;;;;;;  "wanderlust/site-lisp/wl/wl-vars.el" "wanderlust/site-lisp/wl/wl-version.el"
;;;;;;  "wanderlust/utils/ptexinfmt.el" "wanderlust/utils/rfc2368.el"
;;;;;;  "wanderlust/utils/ssl.el" "wanderlust/utils/wl-addrbook.el"
;;;;;;  "wanderlust/utils/wl-complete.el" "wanderlust/utils/wl-mailto.el")
;;;;;;  (21571 8637 896670 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
