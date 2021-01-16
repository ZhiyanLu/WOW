
OmniCC4Config = {
	["version"] = "8.0.9",
	["groups"] = {
		{
			["id"] = "TMW",
			["rules"] = {
				"TellMeWhen", -- [1]
			},
			["enabled"] = true,
		}, -- [1]
		{
			["id"] = "Threat Plates",
			["rules"] = {
				"ThreatPlates", -- [1]
			},
			["enabled"] = true,
		}, -- [2]
	},
	["engine"] = "AniUpdater",
	["groupSettings"] = {
		["TMW"] = {
			["enabled"] = true,
			["styles"] = {
				["minutes"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1,
				},
				["seconds"] = {
					["scale"] = 1,
				},
				["hours"] = {
					["scale"] = 1,
				},
				["charging"] = {
					["scale"] = 1,
				},
				["controlled"] = {
					["scale"] = 1,
				},
			},
			["yOff"] = 0,
			["effect"] = "pulse",
			["scaleText"] = true,
			["mmSSDuration"] = 300,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 0,
			["xOff"] = 0,
			["tenthsDuration"] = 5.00000007450581,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0,
			["minEffectDuration"] = 30.0000004470348,
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["fontSize"] = 18,
		},
		["base"] = {
			["enabled"] = true,
			["styles"] = {
				["seconds"] = {
					["scale"] = 1,
				},
				["minutes"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1,
				},
				["hours"] = {
					["scale"] = 1,
				},
				["charging"] = {
					["scale"] = 1,
				},
				["controlled"] = {
					["scale"] = 1,
				},
			},
			["effect"] = "pulse",
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["fontSize"] = 20,
			["mmSSDuration"] = 300,
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 0,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0,
			["minEffectDuration"] = 30,
			["yOff"] = 0,
			["scaleText"] = true,
		},
		["Threat Plates"] = {
			["enabled"] = false,
			["styles"] = {
				["minutes"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1,
				},
				["seconds"] = {
					["scale"] = 1,
				},
				["hours"] = {
					["scale"] = 1,
				},
				["charging"] = {
					["scale"] = 1,
				},
				["controlled"] = {
					["scale"] = 1,
				},
			},
			["effect"] = "pulse",
			["yOff"] = 0,
			["minDuration"] = 0,
			["minEffectDuration"] = 30,
			["spiralOpacity"] = 1.00999997742474,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0,
			["mmSSDuration"] = 300,
			["fontSize"] = 20,
			["fontFace"] = "Fonts\\ARKai_T.TTF",
		},
	},
}
