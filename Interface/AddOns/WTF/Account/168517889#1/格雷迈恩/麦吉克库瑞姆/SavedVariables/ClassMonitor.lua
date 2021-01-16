
ClassMonitorDataPerChar = {
	["Plugins"] = {
		["CM_RESOURCE"] = {
			["width"] = 170,
			["color"] = {
				0.929411764705882, -- [1]
				0.313725490196078, -- [2]
				0, -- [3]
			},
			["height"] = 25,
			["text"] = true,
			["textSize"] = 24,
			["customcolor"] = false,
		},
		["CM_ENERGY"] = {
			["anchor"] = {
				"TOPLEFT", -- [1]
				"CM_MOVER", -- [2]
				"TOPLEFT", -- [3]
				0, -- [4]
				0, -- [5]
			},
			["height"] = 20,
			["textSize"] = 24,
			["width"] = 165,
		},
		["CM_MOVER"] = {
			["height"] = 22,
			["width"] = 165,
		},
		["CM_COMBO"] = {
			["specs"] = {
				"any", -- [1]
			},
			["borderRemind"] = false,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.0352941176470588, -- [3]
			},
			["customcolor"] = true,
			["autohide"] = false,
			["reverse"] = false,
			["height"] = 20,
			["width"] = 165,
			["filled"] = true,
			["anchor"] = {
				"BOTTOMLEFT", -- [1]
				"CM_ENERGY", -- [2]
				"TOPLEFT", -- [3]
				0, -- [4]
				0, -- [5]
			},
		},
	},
	["Global"] = {
		["autogridanchor"] = false,
		["configVersion"] = "1.4.3",
		["debug"] = false,
		["height"] = 22,
		["version"] = "3.7.2.2",
		["autogridanchorspacing"] = 3,
		["width"] = 165,
	},
}
