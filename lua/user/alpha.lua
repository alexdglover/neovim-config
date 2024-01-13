local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
-- dashboard.section.header.val = {
-- 	[[                               __                ]],
-- 	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
-- 	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
-- 	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
-- 	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
-- 	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
-- }



-- dashboard.section.header.val = {
-- 	[[.__                   __                                         ]],
-- 	[[|  |__ _____    ____ |  | __ ___________    _____ _____    ___   ]],
-- 	[[|  |  \\__  \ _/ ___\|  |/ // __ \_  __ \  /     \\__  \  /    \ ]],  
-- 	[[|   Y  \/ __ \\  \___|    <\  ___/|  | \/ |  Y Y  \/ __ \|   |  \]],
-- 	[[|___|  (____  /\___  >__|_ \\___  >__|    |__|_|  (____  /___|  /]],
-- 	[[     \/     \/     \/     \/    \/              \/     \/     \/ ]],
-- }



dashboard.section.header.val = {
  [[                                        $$\                                                                                                           ]],
  [[                                        \__|                                                                                                          ]],
  [[ $$$$$$\   $$$$$$$\  $$$$$$\  $$\   $$\ $$\  $$$$$$\   $$$$$$\         $$$$$$$\ $$\   $$\  $$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\   $$$$$$$\ $$\   $$\ ]],
  [[ \____$$\ $$  _____|$$  __$$\ $$ |  $$ |$$ |$$  __$$\ $$  __$$\       $$  _____|$$ |  $$ |$$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  _____|$$ |  $$ |]],
  [[ $$$$$$$ |$$ /      $$ /  $$ |$$ |  $$ |$$ |$$ |  \__|$$$$$$$$ |      $$ /      $$ |  $$ |$$ |  \__|$$ |  \__|$$$$$$$$ |$$ |  $$ |$$ /      $$ |  $$ |]],
  [[$$  __$$ |$$ |      $$ |  $$ |$$ |  $$ |$$ |$$ |      $$   ____|      $$ |      $$ |  $$ |$$ |      $$ |      $$   ____|$$ |  $$ |$$ |      $$ |  $$ |]],
  [[\$$$$$$$ |\$$$$$$$\ \$$$$$$$ |\$$$$$$  |$$ |$$ |      \$$$$$$$\       \$$$$$$$\ \$$$$$$  |$$ |      $$ |      \$$$$$$$\ $$ |  $$ |\$$$$$$$\ \$$$$$$$ |]],
  [[ \_______| \_______| \____$$ | \______/ \__|\__|       \_______|       \_______| \______/ \__|      \__|       \_______|\__|  \__| \_______| \____$$ |]],
  [[                          $$ |                                                                                                              $$\   $$ |]],
  [[                          $$ |                                                                                                              \$$$$$$  |]],
  [[                          \__|                                                                                                               \______/ ]],
}


dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "who needs a footer?"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
