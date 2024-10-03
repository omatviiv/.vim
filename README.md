# .vim
Preconfigured scripts that vim is looking for at startup.

## how to use
1. Clone repository.
2. Install tpope/vim-pathogen:
```bash
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
3. `brew install jq` - install commandline json parser which is used in vim scripts
4. (optional) Install plugins
~/.vim/vimrc contains section <PLUGINS></PLUGINS> which lists plugins with
plugin specifc configs. Simply choose plugins you want to install and run `git clone ...` from plugin description for each one.
5. (optional) Install [translate shell](https://github.com/soimort/translate-shell) (used by commands :TUK :TEN).

## notes
.vim/pack/github/start/copilot.vim is in .gitignore because better to follow
copilot installation instructions from copilot repo since there is an auth
required anyway so including it here won't really help.

**Why this repo is on gihub:** it is refered in some of my stackoverflow answers so it has to be public.
