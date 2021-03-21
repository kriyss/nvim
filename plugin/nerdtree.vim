let NERDTreeIgnore=[
			\'\.git$',
			\'\.idea$',
			\'\.vscode$',
			\'\.history$',
			\'^__pycache__$'
			\]
" Can maybe be replaced by :
"    // put this in your .vimrc
"    set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
"    // Nerdtree config for wildignore
"    let NERDTreeRespectWildIgnore=1
