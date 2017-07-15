if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/okamu/.config/nvim/init.vim', '/Users/okamu/.config/nvim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/okamu/.cache/dein'
let g:dein#_runtime_path = '/Users/okamu/.cache/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/okamu/.cache/dein/.cache/init.vim'
let &runtimepath = '/Users/okamu/.cache/dein/repos/github.com/Shougo/dein.vim/,/Users/okamu/.config/nvim,/etc/xdg/nvim,/Users/okamu/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/okamu/.cache/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/HEAD-ca385db/share/nvim/runtime,/Users/okamu/.cache/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/okamu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/okamu/.config/nvim/after'
filetype off
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['auto-pairs', 'neoyank.vim', 'neosnippet', 'deoplete.nvim'])
