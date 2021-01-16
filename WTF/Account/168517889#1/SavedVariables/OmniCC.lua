
OmniCCDB = {
	["profileKeys"] = {
		["Magiccreamdz - 凤凰之神"] = "默认",
		["麦吉克库瑞姆 - 格雷迈恩"] = "默认",
		["哈尼臭嗨 - 格雷迈恩"] = "默认",
		["Magiccreamdk - 格雷迈恩"] = "默认",
		["Magiccream - 格雷迈恩"] = "默认",
		["余生请多指教 - 格雷迈恩"] = "默认",
	},
	["global"] = {
		["addonVersion"] = "9.0.5",
		["dbVersion"] = 5,
	},
	["profiles"] = {
		["默认"] = {
			["rules"] = {
				{
					["patterns"] = {
						"ThreatPlates", -- [1]
					},
					["id"] = "Threat Plates",
					["priority"] = 1,
					["theme"] = "Threat Plates",
				}, -- [1]
				{
					["priority"] = 2,
				}, -- [2]
				{
					["patterns"] = {
						"TellMeWhen", -- [1]
					},
					["id"] = "TMW",
					["priority"] = 3,
					["theme"] = "TMW",
				}, -- [3]
				{
					["patterns"] = {
						"GridLayoutHeader", -- [1]
					},
					["version"] = "20191126",
					["id"] = "163UI_Grid",
					["priority"] = 4,
				}, -- [4]
			},
			["themes"] = {
				["163UI_Grid"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1,
						},
						["seconds"] = {
							["a"] = 0.9,
						},
						["minutes"] = {
							["a"] = 0.8,
						},
						["hours"] = {
							["a"] = 0.7,
							["scale"] = 1,
						},
						["charging"] = {
							["a"] = 0.9,
							["scale"] = 1,
						},
						["controlled"] = {
							["scale"] = 1,
						},
					},
					["minDuration"] = 3,
					["minSize"] = 0.1,
					["effect"] = "none",
					["spiralOpacity"] = 0.6,
					["yOff"] = 5,
					["xOff"] = 10,
					["version"] = "20191126",
					["fontSize"] = 26,
					["name"] = "163UI_Grid",
					["anchor"] = "TOPRIGHT",
				},
				["TMW"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1,
						},
						["seconds"] = {
						},
						["minutes"] = {
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
					["fontFace"] = "Fonts\\ARKai_T.TTF",
					["tenthsDuration"] = 5.00000007450581,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["spiralOpacity"] = 1.00999997742474,
					["yOff"] = 1,
					["minEffectDuration"] = 30.0000004470348,
					["fontSize"] = 17,
					["minDuration"] = 0,
				},
				["Threat Plates"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1,
						},
						["seconds"] = {
						},
						["minutes"] = {
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
					["fontFace"] = "Fonts\\ARKai_T.TTF",
					["tenthsDuration"] = 5,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["spiralOpacity"] = 1.00999997742474,
					["minDuration"] = 0,
				},
				["默认"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1,
						},
						["seconds"] = {
						},
						["minutes"] = {
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
					["fontFace"] = "Fonts\\ARKai_T.TTF",
					["tenthsDuration"] = 5,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["spiralOpacity"] = 1.00999997742474,
					["minEffectDuration"] = 0,
					["minDuration"] = 0,
				},
			},
		},
	},
}
OmniCC4Config = {
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
			["fontSize"] = 17,
			["effect"] = "pulse",
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["minEffectDuration"] = 30.0000004470348,
			["minSize"] = 0,
			["spiralOpacity"] = 1.00999997742474,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 5.00000007450581,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 300,
			["yOff"] = 1,
			["minDuration"] = 0,
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
			["fontSize"] = 18,
			["fontFace"] = "Fonts\\ARKai_T.TTF",
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
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["fontSize"] = 18,
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
	},
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
	["version"] = "8.2.5",
}