ANSIBLE_EXTRA_ARGS =
ANSIBLE_PLAYBOOK_CMD = ANSIBLE_CONFIG=ansible/ansible.cfg ansible-playbook ansible/envy.yml $(ANSIBLE_EXTRA_ARGS)

.ONESHELL:

.PHONY: all roles system dotfiles check lint dconf_dump brewfile_dump brewfile_cleanup iterm

all:

# Ansible
roles:
	$(ANSIBLE_PLAYBOOK_CMD) -K

system:
	$(ANSIBLE_PLAYBOOK_CMD) -K --tags "system"

dotfiles:
	$(ANSIBLE_PLAYBOOK_CMD) --tags "dotfiles"

check:
	$(ANSIBLE_PLAYBOOK_CMD) -K --check

lint:
	ansible-lint ansible/envy.yml

# Helpers
dconf_dump:
	(echo "# -*- mode: conf -*-" && dconf dump /org/gnome/shell/extensions/) > ansible/roles/system/files/extensions.dconf

brewfile_dump:
	brew bundle dump --force --file=ansible/roles/system/files/Brewfile

brewfile_cleanup:
	brew bundle cleanup --force --file=ansible/roles/system/files/Brewfile

# Themes
iterm:
	for theme in themes/iterm/*.itermcolors; do open "$$theme"; done
