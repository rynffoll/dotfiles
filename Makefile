all: install_deps install_roles
	ansible-playbook -i local.inv envy.yml -vv -K

install_repos: install_deps install_roles
	ansible-playbook -i local.inv repos.yml -vv -K

install_packages: install_deps install_roles
	ansible-playbook -i local.inv packages.yml -vv -K

install_desktop: install_deps install_roles
	ansible-playbook -i local.inv desktop.yml -vv -K

install_dotfiles: install_deps install_roles
	ansible-playbook -i local.inv dotfiles.yml -vv -K

install_spacemacs: install_deps install_roles
	ansible-playbook -i local.inv spacemacs.yml -vv -K

install_roles:
	ansible-galaxy install -r requirements.yml -p .

install_deps:
	sudo dnf install ansible -y
