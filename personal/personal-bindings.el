
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
