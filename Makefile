.ONESHELL:

.PHONY: all brewfile_dump brewfile_cleanup iterm_themes

all:

# Homebrew
brewfile_dump:
	brew bundle dump --force --file=Brewfile

brewfile_cleanup:
	brew bundle cleanup --force --file=Brewfile

# Themes
iterm_themes:
	for theme in themes/iterm/*.itermcolors; do open "$$theme"; done
