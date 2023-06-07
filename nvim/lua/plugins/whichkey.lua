local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find File" },
		b = { "Find Buffer" },
		h = { "Find Help" },
		w = { "Find Text" },
	},
	e = { "File Manager Floating" },
	p = { "File Manager Right Split" },
	o = { "Git status" },
	x = { "Close Buffer" },
	w = { "Save" },
	t = { name = "Terminal", f = { "Float terminal" }, h = { "Horizontal terminal" } },
	h = { "No highlight" },
	g = { name = "Git", b = "Branches", c = "Commits", s = "Status" },
	c = { name = "Comment", l = "Comment Line" },
	l = {
		name = "LSP",
		d = "Diagnostic",
		D = "Hover diagnostic",
		f = "Format",
		r = "References",
		R = "Rename",
		a = "Action",
		s = "Symbol",
		w = {
			name = "Workspace",
			a = "Add",
			r = "Remove",
			l = "List",
		},
	},
}, { prefix = "<leader>" })
