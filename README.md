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
```
3. **Install npm**
```
sudo apt install npm
```
4. **build coc.nvim**
```
cd ~/.vim/plugged/coc.nvim
npm ci
```
