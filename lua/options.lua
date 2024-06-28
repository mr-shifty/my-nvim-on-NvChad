require "nvchad.options"

-- add yours here!

-- local g = vim.g
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local cmd = vim.cmd
local opt = vim.opt



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
cmd([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Highlights
-- vim.cmd("hi link NvimTreeExecFile Title") -- Переопределение выделения исполняемых файлов
