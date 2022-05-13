scriptencoding utf-8

if exists('g:loaded_au_mkdir') | finish | endif
let g:loaded_au_mkdir = 1


com!  -bang -nargs=* -complete=dir Mkdir call au_mkdir#mkdir_p(
                                                            \<q-args>,
                                                            \<bang>get(g:, 'auto_mkdir2_confirm', 1),
                                                            \)

