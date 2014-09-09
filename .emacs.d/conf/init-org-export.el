;; 
;; settings for exporting to PDF
;; 

(require 'org-latex)
(require 'ox-latex)

;; normal
(add-to-list 'org-latex-classes
             '("normal"
               "\\documentclass[uplatex,dvipdfmx,10pt,a4paper,papersize]{jsarticle}
[NO-DEFAULT-PACKAGES]
\\oddsidemargin 0.0in
\\usepackage{amsmath}
\\usepackage{newtxtext,newtxmath}
\\usepackage{graphicx}
\\usepackage{bmpsize}
\\usepackage{hyperref}
\\usepackage{pxjahyper}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; thesis
(add-to-list 'org-latex-classes
             '("thesis"
               "\\documentclass[uplatex,dvipdfmx,10pt,a4paper,papersize]{jsarticle}
[NO-PACKAGES]
[NO-DEFAULT-PACKAGES]
\\usepackage{amsmath}
\\usepackage{newtxtext,newtxmath}
\\usepackage{graphicx}
\\usepackage{bmpsize}
\\usepackage{hyperref}
\\usepackage{pxjahyper}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; (add-to-list 'org-latex-classes
;;              '("jsarticle"
;;                "\\documentclass[uplatex,dvipdfmx,12pt,a4paper,papersize]{jsarticle}
;; [NO-DEFAULT-PACKAGES]
;; \\usepackage{amsmath}
;; \\usepackage{newtxtext,newtxmath}
;; \\usepackage{graphicx}
;; \\usepackage{hyperref}
;; \\usepackage{pxjahyper}
;; \\hypersetup{setpagesize=false,colorlinks=true}"
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(setq org-latex-pdf-process '("/usr/texbin/latexmk -e '$latex=q/uplatex %S/' -e '$bibtex=q/upbibtex %B/' -e '$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/mendex -U -o %D %S/' -e '$dvipdf=q/dvipdfmx -o %D %S/' -norc -gg -pdfdvi %f"))
;(setq org-latex-pdf-process '("/usr/texbin/latexmk -e '$latex=q/uplatex %S/' -e '$bibtex=q/upbibtex %B/' -e '$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/mendex -U -o %D %S/' -e '$dvips=q/dvips -Ppdf -z -f %S | convbkmk -u > %D/' -e '$ps2pdf=q/ps2pdf %S %D/' -norc -gg -pdfps %f"))
;(setq org-latex-pdf-process '("/usr/texbin/latexmk -e '$pdflatex=q/pdflatex %S/' -e '$bibtex=q/bibtex %B/' -e '$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/makeindex -o %D %S/' -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("/usr/texbin/latexmk -e '$pdflatex=q/lualatex %S/' -e '$bibtex=q/bibtexu %B/' -e '$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/makeindex -o %D %S/' -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("/usr/texbin/latexmk -e '$pdflatex=q/luajitlatex %S/' -e '$bibtex=q/bibtexu %B/' -e '$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/makeindex -o %D %S/' -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("/usr/texbin/latexmk -e '$pdflatex=q/xelatex %S/' -e '$bibtex=q/bibtexu %B/' -e '$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/makeindex -o %D %S/' -norc -gg -pdf %f"))
