#!/usr/bin/env bash

# OS type
MACHINE=nil
case $OSTYPE in
	darwin*) MACHINE="darwin" ;;
	linux*)  MACHINE="linux" ;;
esac

macos_config()
{
	brew install pure
	brew install zsh-autosuggestions
	brew install zsh-syntax-highlighting
}

linux_config()
{
	sudo apt update -y
	sudo apt install -y zsh
	sudo apt upgrade -y
	sudo apt autoremove -y
	chsh -s $(which zsh)
	# Create a directory to install plugins for zsh
	mkdir -p "${HOME}/.local/share/zsh"
	# Install plugin
	if [ ! -d "${HOME}/.local/share/zsh/pure" ]; then 
		git clone https://github.com/sindresorhus/pure.git "${HOME}/.local/share/zsh/pure"
	fi
	if [ ! -d "${HOME}/.local/share/zsh/zsh-autosuggestions" ]; then
		git clone https://github.com/zsh-users/zsh-autosuggestions "${HOME}/.local/share/zsh/zsh-autosuggestions"
	fi
	if [ ! -d "${HOME}/.local/share/zsh/zsh-syntax-highlighting" ]; then
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${HOME}/.local/share/zsh/zsh-syntax-highlighting"
	fi
}

main ()
{
	echo "========== Zsh Configuration =========="
	case "$MACHINE" in
		darwin) macos_config ;;
		linux)  linux_config ;;
	esac
	cp ${HOME}/.config/zsh/.zshrc ${HOME}/

	echo ""
	echo "Having configured the zsh, please logout your computer and login."
	echo "========== Good Jobs! =========="

}

main
