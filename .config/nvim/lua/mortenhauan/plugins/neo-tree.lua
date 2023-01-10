-- import neo-tree plugin safely
local status, neo_tree = pcall(require, "neo-tree")
if not status then
	print("NeoTree plugin not found")
	return
end

-- Neo tree
neo_tree.setup({
	close_if_last_window = false,
	enable_diagnostics = true,
	enable_git_status = true,
	popup_border_style = "rounded",
	sort_case_insensitive = false,
	filesystem = {
		filtered_items = {
			visible = false,
			hide_dotfiles = true,
			hide_gitignored = false,
			always_show = {
				".gitignore",
			},
			never_show = {
				".DS_Store",
				"thumbs.db",
			},
		},
	},
	window = { width = 30 },
})
