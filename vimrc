runtime bundle/pathogen/autoload/pathogen.vim
if exists("g:loaded_pathogen")
	exec pathogen#infect()
	Helptags
endif

set background=dark

if has('mouse')
	set mouse=a
	if !empty($TMUX) && &ttym == "xterm"    " Fix mouse support under tmux
		set ttym=xterm2                 " TODO fix in my tmux settings
	end
end

" syntastic Settings: --------------------------------------------------------

let g:syntastic_auto_loc_list=1
