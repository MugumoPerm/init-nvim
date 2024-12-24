# Install latest nvim using snap
```shell
sudo apt install snapd
sudo systemctl start snapd
sudo systemctl enable --now snapd.apparmor.service
sudo snap install nvim --classic
```

# Clone the repository
	cd ~/.config/
	git clone https://github.com/MugumoPerm/nvim.git

# Setup Plug-in manager


	`curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

# Install dependencies

1. **Install Exuberant Ctags**
```
sudo apt-get update
sudo apt-get install exuberant-ctags
``` 
2. **Install nodejs**
```
sudo apt install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts
```
3. **Install npm**
```
sudo apt install npm
```
4. **Install Plugins**
```
nvim +PlugInstall +qall
```

6. **build coc.nvim**
```
cd ~/.vim/plugged/coc.nvim
npm ci
```
7. **Launch Nvim**
```
nvim
```
