.ONESHELL:

.PHONY: all $(MAKECMDGOALS)

all:
	./bootstrap.sh

# Homebrew
brewfile_dump:
	brew bundle dump --force

brewfile_cleanup:
	brew bundle cleanup --force

# Themes
iterm_themes:
	for theme in themes/iterm/*.itermcolors; do open "$$theme"; done
