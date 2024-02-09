local cmd = vim.cmd
local exec = vim.api.nvim_exec
local opt = vim.opt
local g = vim.g

-------------------------------------- globals --------------------------------

-- Направление перевода с русского на английский

g.translate_source = 'ru'
g.translate_target = 'en'


-------------------------------------- options ------------------------------------------

opt.relativenumber = true -- Относительная нумерация строк
opt.colorcolumn = '80' -- Вертикальная линия до 80 символов
opt.spelllang = { 'en_us', 'ru' } -- Словари рус eng
opt.scrolloff = 7      -- Курсор не переходит ниже 7 символов
opt.colorcolumn = '80' -- Вертикальная линия до 80 символов
opt.swapfile = false -- не создавать swap-файлы
opt.autoindent = true


------------------------------------------------------------------------------
-- Полезные фишки
------------------------------------------------------------------------------


-- Запоминает где nvim последний раз редактировал файл
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]

-- Подсвечивает на доли секунды скопированную часть текста
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Highlights
vim.cmd("hi link NvimTreeExecFile Title")
