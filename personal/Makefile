.PHONY: FORCE all
all:			org-mode/lisp/org-install.elc	\
			$(HOME)/org

# ~/org/ is typically shared via Dropbox/org; create symlink if it doesn't exist
$(HOME)/org:		FORCE
	@if [ ! -d $@ ] && [] ! -L $@ ]; then		\
	    echo "!!! Creating $(HOME)/org -> $(HOME)/Dropbox/org"; \
	    ln -fs $(HOME)/Dropbox/org $@;		\
	fi
	@echo "Your $(HOME)/org/ directory is:"
	@ls -ld $@

# org-mode 7.8.03
#
#     Builds only if we don't see the compiled .elc files.

org-mode:
	git clone git://orgmode.org/org-mode.git $@
	cd $@; git checkout release_7.8.03

org-mode/lisp/org-install.elc:				\
			org-mode
	cd $^; make
