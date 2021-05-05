# vim-mdbook

mdbook live preview Neovim. Vim is not yet supported since it handles jobs
differently form neovim.

## Install

For [vim-plug](https://github.com/junegunn/vim-plug) add the following to your
`.vimrc` or `.config/nvim/init.vim`

```vim
Plug 'twh2898/vim-mdbook'
```

and then restart Vim / Neovim and run `:PlugInstall`.

## Features

- Launches `mdbook serve` in the background
- Opens an electron window with a live preview

## Usage

### Commands

Command          | Mapping
-----------------|--------
`:MdBookPreview` | `call mdbook#StartServer()`
`:MdBookRestart` | `call mdbook#RestartServer()`
`:MdBookClose`   | `call mdbook#StopServer()`

### Functions

Function                      | Description
------------------------------|------------
`call mdbook#StartServer()`   | Start the `mdbook serve` command and open the preview window
`call mdbook#StopServer()`    | Stop the `mdbook serve` command and close the preview window
`call mdbook#RestartServer()` | Restart the `mdbook serve` command and reload the preview window

### Configuration

Options                  | Description
-------------------------|------------
`g:mdbook_electron_path` | A path to the `electron` executable

## Licence

vim-mdbook uses the [MIT](LICENCE) Licence

