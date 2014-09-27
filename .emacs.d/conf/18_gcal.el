;;; define categories that should be excluded
(setq org-export-exclude-category (list "google" "private"))

;;; define filter. The filter is called on each entry in the agenda.
;;; It defines a regexp to search for two timestamps, gets the start
;;; and end point of the entry and does a regexp search. It also
;;; checks if the category of the entry is in an exclude list and
;;; returns either t or nil to skip or include the entry.

(defun org-mycal-export-limit ()
  "Limit the export to items that have a date, time and a range. Also exclude certain categories."
  (setq org-tst-regexp "<\\([0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\} ... [0-9]\\{2\\}:[0-9]\\{2\\}[^\r\n>]*?\
\)>")
  (setq org-tstr-regexp (concat org-tst-regexp "--?-?" org-tst-regexp))
  (save-excursion
    ; get categories
    (setq mycategory (org-get-category))
    ; get start and end of tree
    (org-back-to-heading t)
    (setq mystart    (point))
    (org-end-of-subtree)
    (setq myend      (point))
    (goto-char mystart)
    ; search for timerange
    (setq myresult (re-search-forward org-tstr-regexp myend t))
    ; search for categories to exclude
    (setq mycatp (member mycategory org-export-exclude-category))
    ; return t if ok, nil when not ok
    (if (and myresult (not mycatp)) t nil)))

;;; activate filter and call export function
(defun org-mycal-export ()
  (let ((org-icalendar-verify-function 'org-mycal-export-limit))
    (org-export-icalendar-combine-agenda-files)))

;; -----------------------------------------------------------------------------
(require 'calfw-ical)
(require 'calfw-org)

;; private url
(setq normal_url "https://www.google.com/calendar/ical/su104003%40gmail.com/private-9ad03e9e5f6c581be1609cfe5cba89f7/basic.ics")
(setq school_url "https://www.google.com/calendar/ical/dmm3b5aum8f0ua8ko0r8b9heac%40group.calendar.google.com/private-3fbde18ed103df5606712ece483f0997/basic.ics")
(setq club_url "https://www.google.com/calendar/ical/50sk4jsh3jpm89ts048f896t1k%40group.calendar.google.com/private-b862c3079dd954e6b2c66af8a720072e/basic.ics")
(setq pastime_url "https://www.google.com/calendar/ical/9apklrdphgv36dd64eht719rfg%40group.calendar.google.com/private-b555ff73cad39ca9dda4910d6f23ea6b/basic.ics")
(setq work_url "https://www.google.com/calendar/ical/n6j1dcotvtv7uib184ftceo3hs%40group.calendar.google.com/private-80e4505998ac30386248fd1c3d0ff959/basic.ics")

(defun nu/open-calendar ()
  " my calendar settings "
  (interactive)
  (cfw:open-calendar-buffer
   :contents-sources
   (list
    (cfw:org-create-source "#bb44bb")   ; org mode source
;    (cfw:ical-create-source "Moon" "~/org/school.ics" "#111111") ; org mode source
    (cfw:ical-create-source "***" normal_url "#444444" ) ; org mode source
    (cfw:ical-create-source "School" school_url "#33aa33" ) ; org mode source
    (cfw:ical-create-source "Club" club_url "#7777ee" ) ; org mode source
    (cfw:ical-create-source "Pastime" pastime_url "#ee7777" ) ; org mode source
    (cfw:ical-create-source "Work" work_url "#225555" ) ; org mode source    
    )))
