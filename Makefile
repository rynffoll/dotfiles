.ONESHELL:

.PHONY: all $(MAKECMDGOALS)

all:
	./bootstrap.sh

# Homebrew
brewfile_dump:
	arch -x86_64 brew bundle dump --force --file=Brewfile

brewfile_cleanup:
	arch -x86_64 brew bundle cleanup --force --file=Brewfile

# Themes
iterm_themes:
	for theme in themes/iterm/*.itermcolors; do open "$$theme"; done
