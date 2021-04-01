" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

" Strip whitespace for code files
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp,*.swift call StripTrailingWhitespace()
autocmd BufWritePre *.rb,*.yml,*.js,*.jsx,*.json,*.ts,*.tsx,*.coffee,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.jbuilder,*.erb,*.haml,*.slim call StripTrailingWhitespace()
autocmd BufWritePre *.lua,*.java,*.php,*.feature,*.py call StripTrailingWhitespace()
autocmd BufWritePre *.md,*.ex,*.exs,*.erl,*.hs,*.rs,*.go call StripTrailingWhitespace()

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
autocmd FileType mkd normal zR

autocmd FileType sql set filetype=sqlanywhere

autocmd FileType swift setlocal tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
