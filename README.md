# .vim
Preconfigured scripts that vim is looking for at startup.

## how to use
1. Clone repository.
2. Install tpope/vim-pathogen:
```bash
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
3. (optional) Install plugins
~/.vim/vimrc contains section <PLUGINS></PLUGINS> which lists plugins with
plugin specifc configs. Simply choose plugins you want to install and run `git clone ...` from plugin description for each one.
4. (optional) Install [translate shell](https://github.com/soimort/translate-shell) (used by commands :TUK :TEN).
