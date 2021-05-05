
if exists('g:loaded_mdbook') && g:loaded_mdbook
    finish
endif

command! MdBookPreview call mdbook#StartServer()
command! MdBookRestart call mdbook#RestartServer()
command! MdBookClose call mdbook#StopServer()

let g:loaded_mdbook = 1

