.PHONY: FORCE all
all:			personal			\
			org-mode/lisp/org-install.elc	\
			$(HOME)/org			\
			multi-web-mode

# Load any personalized data configured.  Any personal-*.el
# file that needs these should say:
#
#     (require 'personal-ids)
#
# to ensure these get loaded first.
include ../../Makefile.personal

personal:		personal-ids.el
	@if ! grep -q 'hc/org-user "$(username)"' $<; then \
	    echo '(defvar hc/org-user "$(username)")' >> $<; \
	fi
	@if ! grep -q 'hc/gmail-addr "$(gmailaddr)"' $<; then \
	    echo '(defvar hc/gmail-addr "$(gmailaddr)")' >> $<; \
	fi
	@if ! grep -q 'hc/full-name "$(fullname)"' $<; then \
	    echo '(defvar hc/full-name "$(fullname)")' >> $<; \
	fi
	@if ! grep -q 'hc/email-addr "$(emailaddr)"' $<; then \
	    echo '(defvar hc/email-addr "$(emailaddr)")' >> $<; \
	fi

personal-ids.el:
	@echo "(provide 'personal-ids)" > $@


# ~/org/ is typically shared via Dropbox/org; create symlink if it doesn't exist
$(HOME)/org:		FORCE
	@if [ ! -d $@ ] || [ ! -d $@/ ]; then		\
	    echo "!!! Creating $(HOME)/org/";		\
	    mkdir $(HOME)/org;				\
	fi
	@echo "Your $(HOME)/org/ directory is:"
	@ls -ld $@

# org-mode 7.8.03
#
#     Builds only if we don't see the compiled .elc files.

org-mode:
	git clone http://orgmode.org/org-mode.git $@
	cd $@; git checkout release_7.8.03

org-mode/lisp/org-install.elc:				\
			org-mode
	cd $^; make

multi-web-mode:
	git clone http://github.com/fgallina/multi-web-mode.git $@
