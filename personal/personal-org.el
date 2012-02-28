;; In addition to the default org bindings:
;; C-c a           org-agenda
;; C-c b           org-iswitchb
;; C-c l           org-store-link
(global-set-key  (kbd "C-c c")          'org-capture)

;; alternatives for <C-return>, <S-return> and <C-S-return>, which are
;; unavailable on OS-X.  The following bindings cannot be triggered
;; directly via the terminal
;;
;; <C-return>      org-insert-heading-respect-content
;; <C-S-return>    org-insert-todo-heading-respect-content
;; <M-S-return>    org-insert-todo-heading
;; <S-return>      prelude-insert-empty-line
;;
;; in iTerm, set Keys to send the following text instead:
(global-set-key (kbd "C-c C-x C-h")     'org-insert-heading-respect-content)
(global-set-key (kbd "C-c C-x C-m")     'org-insert-todo-heading-respect-content)


(setq org-agenda-files (quote ("~/org/")))
(setq org-default-notes-file "~/org/refile.org")

;; MobileOrg iPhone app support
;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")

;; org-capture templates
;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Dropbox/org/refile.org")
               "* TODO %?\n%U\n%a\n  %i" :clock-in t :clock-resume t)
              ("n" "note" entry (file "~/Dropbox/org/refile.org")
               "* %? :NOTE:\n%U\n%a\n  %i" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/Dropbox/org/diary.org")
               "* %?\n%U\n  %i" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/Dropbox/org/refile.org")
               "* TODO Review %c\n%U\n  %i" :immediate-finish t)
              ("p" "Phone call" entry (file "~/Dropbox/org/refile.org")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t))))

;; org-refile settings
;; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

;; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)
