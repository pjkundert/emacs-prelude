(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal/multi-web-mode/"))

(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)
(setq mweb-submode-indent-offset 4)

(add-hook 'html-mode-hook
          (lambda ()
            (setq sgml-basic-offset 4)) 'append)
