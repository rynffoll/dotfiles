.ONESHELL:

MAKEFLAGS += --always-make

all:
	./bootstrap.sh

# Homebrew
brewfile_dump:
	brew bundle dump --force --global --formula --casks --taps --mas

brewfile_cleanup:
	brew bundle cleanup --force --global --formula --casks --taps --mas

# Themes
iterm_themes:
	for theme in themes/iterm/*.itermcolors; do open "$$theme"; done
