all:
	ansible-playbook -i local.inv envy.yml -vv -K

install_repos:
	ansible-playbook -i local.inv repos.yml -vv -K

install_packages:
	ansible-playbook -i local.inv packages.yml -vv -K

install_desktop:
	ansible-playbook -i local.inv desktop.yml -vv -K

install_dotfiles:
	ansible-playbook -i local.inv dotfiles.yml -vv -K

install_spacemacs:
	ansible-playbook -i local.inv spacemacs.yml -vv -K

install_roles:
	ansible-galaxy install -r requirements.yml -p .

install_deps:
	sudo dnf install ansible -y
