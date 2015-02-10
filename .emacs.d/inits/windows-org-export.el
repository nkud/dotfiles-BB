;;
;; Org mode
;;
(require 'ox-latex)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-latex-default-class "jsarticle")
(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$latex=q/uplatex -kanji=utf8 -no-guess-input-enc %S/\" -e \"$bibtex=q/upbibtex %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/mendex -U -o %D %S/\" -e \"$dvipdf=q/dvipdfmx -o %D %S/\" -norc -gg -pdfdvi %f"))
;(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$latex=q/uplatex -kanji=utf8 -no-guess-input-enc %S/\" -e \"$bibtex=q/upbibtex %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/mendex -U -o %D %S/\" -e \"$dvips=q/dvips -Ppdf -z -f %S | convbkmk -u > %D/\" -e \"$ps2pdf=q/ps2pdf.exe %S %D/\" -norc -gg -pdfps %f"))
;(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$pdflatex=q/platex-ng %S/\" -e \"$bibtex=q/upbibtex %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/mendex -U -o %D %S/\" -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$pdflatex=q/pdflatex %S/\" -e \"$bibtex=q/bibtex %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/makeindex -o %D %S/\" -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$pdflatex=q/lualatex %S/\" -e \"$bibtex=q/bibtexu %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/makeindex -o %D %S/\" -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$pdflatex=q/luajitlatex %S/\" -e \"$bibtex=q/bibtexu %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/makeindex -o %D %S/\" -norc -gg -pdf %f"))
;(setq org-latex-pdf-process '("tasklist /fi \"IMAGENAME eq AcroRd32.exe\" /nh | findstr \"AcroRd32.exe\" > nul && pdfopen --rxi --file %b.pdf && pdfclose --rxi --file %b.pdf & latexmk -e \"$pdflatex=q/xelatex %S/\" -e \"$bibtex=q/bibtexu %B/\" -e \"$biber=q/biber --bblencoding=utf8 -u -U --output_safechars %B/\" -e \"$makeindex=q/makeindex -o %D %S/\" -norc -gg -pdf %f"))
;(setq org-export-in-background t)
(if (not (eq org-export-in-background t))
    (setq org-file-apps
          '(("pdf" . "cmd /c echo powershell -Command \"& {$pages = (pdfinfo %s | Select-String \"^Pages:\"); $page = (-split $pages)[1]; pdfopen --rxi --file %s --page $page}\" | cmd"))))

(add-to-list 'org-latex-classes
             '("jsarticle"
               "\\documentclass[uplatex,dvipdfmx,12pt,a4paper,papersize]{jsarticle}
[NO-DEFAULT-PACKAGES]
\\usepackage{amsmath}
\\usepackage{newtxtext,newtxmath}
\\usepackage{graphicx}
\\usepackage{hyperref}
\\usepackage{pxjahyper}
\\hypersetup{setpagesize=false,colorlinks=true}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             '("jsarticle-dvips"
               "\\documentclass[uplatex,12pt,a4paper,papersize]{jsarticle}
[NO-DEFAULT-PACKAGES]
\\usepackage{amsmath}
\\usepackage{newtxtext,newtxmath}
\\usepackage{graphicx}
\\usepackage{hyperref}
\\hypersetup{setpagesize=false,colorlinks=true}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             '("ltjsarticle"
               "\\documentclass[12pt,a4paper]{ltjsarticle}
[NO-DEFAULT-PACKAGES]
\\usepackage{amsmath}
\\usepackage{newtxtext,newtxmath}
\\usepackage{graphicx}
\\usepackage{hyperref}
\\hypersetup{pdfencoding=auto,colorlinks=true}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             '("bxjsarticle"
               "\\ifdefined\\kanjiskip
  \\documentclass[autodetect-engine,dvipdfmx,12pt,a4paper,jadriver=standard]{bxjsarticle}
\\else
  \\ifdefined\\pdfoutput
    \\ifnum\\pdfoutput=0
      \\documentclass[autodetect-engine,dvipdfmx,12pt,a4paper,jadriver=standard]{bxjsarticle}
    \\else
      \\documentclass[autodetect-engine,12pt,a4paper,jadriver=standard]{bxjsarticle}
    \\fi
  \\else
    \\documentclass[autodetect-engine,12pt,a4paper,jadriver=standard]{bxjsarticle}
  \\fi
\\fi
[NO-DEFAULT-PACKAGES]
\\usepackage{amsmath}
\\usepackage{newtxtext,newtxmath}
\\usepackage{graphicx}
\\usepackage{hyperref}
\\ifdefined\\kanjiskip
  \\usepackage{pxjahyper}
  \\hypersetup{colorlinks=true}
\\else
  \\ifdefined\\XeTeXversion
      \\hypersetup{colorlinks=true}
  \\else
    \\ifdefined\\directlua
      \\hypersetup{pdfencoding=auto,colorlinks=true}
    \\else
      \\hypersetup{unicode,colorlinks=true}
    \\fi
  \\fi
\\fi"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
