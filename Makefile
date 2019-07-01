all:
	ansible-playbook envy.yml -K ${OPS}

system:
	ansible-playbook envy.yml -K ${OPS} --tags "system"

dotfiles:
	ansible-playbook envy.yml ${OPS} --tags "dotfiles"

emacs:
	ansible-playbook envy.yml ${OPS} --tags "emacs"

check:
	ansible-playbook envy.yml -K --check ${OPS}

lint:
	ansible-lint envy.yml

install_deps_fedora:
	sudo dnf install -y ansible python2-psutil

install_deps_macos:
	brew install ansible

update_dconf_dump:
	dconf dump /org/gnome/shell/extensions/ > roles/system/files/extensions.dconf

update_brewfile:
	brew bundle dump --force --file=roles/system/files/Brewfile
