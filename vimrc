runtime bundle/pathogen/autoload/pathogen.vim
if exists("g:loaded_pathogen")
	exec pathogen#infect()
	Helptags
endif
"Setting up color scheme, vim-colors-solarized 
syntax enable
if has('gui_running')
  set background=light
else
	set background=dark
	let g:solarized_termcolors=256
endif
colorscheme solarized


if has('mouse')
	set mouse=a
	if !empty($TMUX) && &ttym == "xterm"    " Fix mouse support under tmux
		set ttym=xterm2                 " TODO fix in my tmux settings
	end
end

" syntastic Settings: --------------------------------------------------------

let g:syntastic_auto_loc_list=1
let g:user_emmet_leader_key= '<C-E>'

