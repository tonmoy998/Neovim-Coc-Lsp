#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

packages=("node" "chafa" "ranger" "feh" "npm" "nvim" "git" "curl" "yarn")

uninstalled_packages=()

for package in "${packages[@]}"; do
    if ! command -v "$package" > /dev/null 2>&1; then
        uninstalled_packages+=("$package")
    fi
done

if [ ${#uninstalled_packages[@]} -eq 0 ]; then
    echo -e "${GREEN} All packages are installed. ${NC}"
else
    echo -e "${RED} packages: ${uninstalled_packages[@]} ${NC}"
fi


if [[ " ${uninstalled_packages[@]} " =~ "git" ]]; then
    echo "Installing git"
    sudo apt install git -y 
fi    
if [[ " ${uninstalled_packages[@]} " =~ "wget" ]]; then
    echo -e "${GREEN}wget is not installed.${NC}"
    echo "wget is installing ..."
    sudo apt install wget -y
fi

if [[ " ${uninstalled_packages[@]} " =~ "node" ]]; then
    echo -e "${GREEN}Nodejs installing ..${NC}"
    sudo apt install nodejs npm -y
fi
if [[ " ${uninstalled_packages[@]} " =~ "yarn" ]]; then
    echo -e "${GREEN}Nodejs installing .. ${NC}"
    sudo apt install yarn -y
fi


if [[ " ${uninstalled_packages[@]} " =~ "nvim" ]]; then
    echo -e "${RED}nvim is not installed.${NC}"
    echo "Downloading Neovim using wget ..."
    wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod +x ./nvim.appimage
    sudo mv nvim.appimage /usr/local/bin/nvim
    echo -e "${GREEN}Neovim successfully installed!${NC}"
fi
echo "Intalling extra dependencies ..."
sudo apt install chafa ranger feh -y 
echo -e "${GREEN}All packages are installed successfully! ${NC}"


# text="Hello, this is a colored string!"
# printf "${RED}Red:${RESET} %s\n" "$text"
# printf "${GREEN}Green:${RESET} %s\n" "$text"
