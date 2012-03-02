.PHONY: FORCE all
all:			org-mode/lisp/org-install.elc

# org-mode 7.8.03
#
#     Builds only if we don't see the compiled .elc files.

org-mode:
	git clone git://orgmode.org/org-mode.git $@
	cd $@; git checkout release_7.8.03

org-mode/lisp/org-install.elc:				\
			org-mode
	cd $^; make
