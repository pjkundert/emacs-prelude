
;; Alternatives for <C-return>, <S-return> and <C-S-return>, which are
;; unavailable on OS-X.  The following bindings cannot be triggered
;; directly via the terminal
;;
;; key             org-mode binding                         iTerm sends
;; ----------      ---------------------------------------  -----------
;; <C-return>      org-insert-heading-respect-content       Esc+[CR
;; <C-S-return>    org-insert-todo-heading-respect-content  Esc+[CSR
;; <M-S-return>    org-insert-todo-heading
;; <S-return>      prelude-insert-empty-line                Esc+[SR
;;
;; In iTerm Preferences Profiles, Keys, add control-return,
;; shift-return and control-shift-return to Send Escape Sequences:
(define-key key-translation-map (kbd "ESC [ C R")   (kbd "<C-return>"))
(define-key key-translation-map (kbd "ESC [ S R")   (kbd "<S-return>"))
(define-key key-translation-map (kbd "ESC [ C S R") (kbd "<C-S-return>"))

;; Historically, C-SPC has been set-mark; use ESC-SPC or M-SPC to expand-region
(global-set-key (kbd "C-@")             'set-mark-command)
(global-set-key (kbd "<M-space>")	'er/expand-region)

;; Navigation between multiframe-windows
(global-set-key (kbd "C-x p")           'previous-multiframe-window )
(global-set-key (kbd "C-x n")           'next-multiframe-window )

;; My bindings for next/previous error, and goto line (was M-g n/p/g)
(global-set-key (kbd "M-g")             'goto-line )
(global-set-key (kbd "C-x C-e")         'compile )
(global-set-key (kbd "C-x C-n")         'next-error )
(global-set-key (kbd "C-x C-n")         'previous-error )

;; Rectangles
(global-set-key (kbd "C-M-k")           'kill-rectangle)        ;; also C-x r k
(global-set-key (kbd "C-M-y")           'yank-rectangle)        ;; also C-x r y

;; Indentation (use C-M-\)
;;(global-set-key (kbd "\M-i" )           'indent-region)       ;; keep M-i as tab-to-tab-stop
