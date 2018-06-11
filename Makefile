all:
	ansible-playbook envy.yml -Kk ${OPS}

check:
	ansible-playbook envy.yml -Kk --check ${OPS}

install_roles:
	ansible-galaxy install -r requirements.yml -p galaxy_roles

install_deps_fedora:
	sudo dnf install -y ansible python2-psutil

install_deps_macos:
	brew install ansible

update_dconf_dump:
	dconf dump /org/gnome/shell/extensions/ > roles/system/files/extensions.dconf

update_brewfile:
	brew bundle dump --force --file=roles/system/files/Brewfile
