" Create the directory path.
" This will also create any intermediate  directories.
"
fun! au_mkdir#mkdir_p(path) abort
	let need_dir = expand(a:path)
	if need_dir is# ''
		let need_dir = expand('%:p:h')
	en

	if isdirectory(need_dir)
		return
	en

	if filereadable(need_dir)
		echohl Error | echom printf("%s exists and isn't a directory", need_dir) | echohl None
		return
	en


    call mkdir( need_dir, 'p')
    en
endf

fun! au_mkdir#AutoCmd() abort
	return auto_mkdir2#mkdir_p(
                \expand('<amatch>:p:h'),
                \!v:cmdbang,
                \)
endf
