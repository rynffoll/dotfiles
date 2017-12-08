all:
	ansible-playbook envy.yml -vv -K

install_repos:
	ansible-playbook repos.yml -vv -K

install_system:
	ansible-playbook system.yml -vv -K

install_packages:
	ansible-playbook packages.yml -vv -K

install_desktop:
	ansible-playbook desktop.yml -vv -K

install_dotfiles:
	ansible-playbook dotfiles.yml -vv -K

install_spacemacs:
	ansible-playbook spacemacs.yml -vv -K

install_roles:
	ansible-galaxy install -r requirements.yml -p galaxy_roles

install_deps:
	sudo dnf install -y ansible python2-psutil

update_dconf_dump:
	dconf dump /org/gnome/shell/extensions/ > files/extensions.dconf
