.ONESHELL:

MAKEFLAGS += --always-make

all:
	./bootstrap.sh

dotfiles:
	./scripts/dotfiles.sh

# Homebrew
brewfile_dump:
	brew bundle dump --force --global --formula --casks --taps --mas

brewfile_cleanup:
	brew bundle cleanup --force --global --formula --casks --taps --mas
