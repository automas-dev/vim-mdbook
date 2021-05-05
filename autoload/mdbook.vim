
let g:mdbook_electron_path = 'electron'

function! s:OnEvent(job_id, data, event) dict
    " OnExited
    silent! call mdbook#StopServer()
endfunction

let s:server_job = ''
let s:server_args = {'in_io': 'null', 'out_io': 'null', 'err_io': 'null', 'stoponexit': 'int', 'on_exit': function('s:OnEvent')}

function! mdbook#StartServer()
    if !s:server_job
        let l:cmd = [g:mdbook_electron_path, expand('<sfile>:p:h:h').'/electron-app']
        let s:server_job = jobstart(l:cmd, s:server_args)
        echomsg "Server job is " . s:server_job
    endif
endfunction

function! mdbook#StopServer()
    if s:server_job
        call jobstop(s:server_job)
        let s:server_job = ''
    endif
endfunction

function! mdbook#RestartServer()
    call mdbook#StopServer()
    sleep 1
    call mdbook#StartServer()
endfunction

