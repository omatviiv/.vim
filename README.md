# .vim
My preconfigured scripts that vim is looking for at startup.

## how to use
1. Clone repository.
2. Install tpope/vim-pathogen:
```bash
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
3. Install plugins (optional)
~/.vim/vimrc contains section <PLUGINS></PLUGINS> which lists plugins with
plugin specifc configs. Simply choose plugins you want to install and run `git clone ...` from plugin description for each one.
