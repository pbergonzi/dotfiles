require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!

-- Faster refresh for git branch indicator and other updates
o.updatetime = 250  -- default is 4000ms, this makes it refresh faster

-- Auto-read files when changed externally
o.autoread = true
