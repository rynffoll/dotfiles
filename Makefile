.ONESHELL:

MAKEFLAGS += --always-make

all:
	./bootstrap.sh

dotfiles:
	./scripts/dotfiles.sh

# Homebrew
brewfile_dump:
	brew bundle dump --force --global --no-describe

brewfile_cleanup:
	brew bundle cleanup --force --global
