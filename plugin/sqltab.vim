"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Opens nowrite buffers with sql filetype
" 

"FUNCTION: _SQLTAB() - opens sql tab
fu! _SQLTab()
    :if exists("g:SQLTAB_tabs_counter")
        let g:SQLTAB_tabs_counter = g:SQLTAB_tabs_counter+1
    :else
        let g:SQLTAB_tabs_counter = 0
    :endif

    execute 'tabnew ~/SQLTAB-'.g:SQLTAB_tabs_counter
    :setf sql
    :set buftype=nowrite

endfu!


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"
nmap <leader>ss :call _SQLTab()<CR> " open pgtab
