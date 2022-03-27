
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.1.0",
	},
	["profileKeys"] = {
		["余生请多指教 - 格雷迈恩"] = "默认",
		["麦吉克库瑞姆 - 格雷迈恩"] = "默认",
		["哈尼臭嗨 - 格雷迈恩"] = "默认",
		["芃芃其麦 - 格雷迈恩"] = "默认",
		["Magiccreamdk - 格雷迈恩"] = "默认",
		["Magiccream - 格雷迈恩"] = "默认",
		["Magiccreamdz - 凤凰之神"] = "默认",
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
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 5,
					["theme"] = "Plater Nameplates Theme",
				}, -- [5]
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
					["minDuration"] = 0,
					["tenthsDuration"] = 5,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["effect"] = "none",
					["spiralOpacity"] = 0.6,
					["yOff"] = 5,
					["xOff"] = 10,
					["version"] = "20191126",
					["fontSize"] = 26,
					["minEffectDuration"] = 0,
					["anchor"] = "TOPRIGHT",
					["name"] = "163UI_Grid",
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
					["minDuration"] = 0,
					["tenthsDuration"] = 5.0000000745058,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["spiralOpacity"] = 1.0099999774247,
					["yOff"] = 1,
					["minEffectDuration"] = 0,
					["fontSize"] = 17,
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
						},
						["soon"] = {
						},
					},
					["tenthsDuration"] = 5,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["minEffectDuration"] = 0,
					["minDuration"] = 0,
				},
				["默认"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
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
					["fontFace"] = "Fonts\\ARKai_T.TTF",
					["tenthsDuration"] = 5,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["spiralOpacity"] = 1.0099999774247,
					["minEffectDuration"] = 0,
					["minDuration"] = 0,
				},
				["Threat Plates"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
							["scale"] = 1,
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
					["minDuration"] = 0,
					["tenthsDuration"] = 5,
					["minSize"] = 0,
					["mmSSDuration"] = 300,
					["spiralOpacity"] = 1.0099999774247,
					["minEffectDuration"] = 0,
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
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["scaleText"] = true,
			["effect"] = "pulse",
			["styles"] = {
				["seconds"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1,
				},
				["minutes"] = {
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
			["mmSSDuration"] = 300,
			["minSize"] = 0,
			["spiralOpacity"] = 1.0099999774247,
			["minDuration"] = 0,
			["xOff"] = 0,
			["tenthsDuration"] = 5.0000000745058,
			["fontOutline"] = "OUTLINE",
			["anchor"] = "CENTER",
			["minEffectDuration"] = 30.000000447035,
			["yOff"] = 1,
			["fontSize"] = 17,
		},
		["base"] = {
			["enabled"] = true,
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["effect"] = "pulse",
			["scaleText"] = true,
			["fontSize"] = 18,
			["mmSSDuration"] = 300,
			["spiralOpacity"] = 1.0099999774247,
			["yOff"] = 0,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0,
			["minEffectDuration"] = 30,
			["minDuration"] = 0,
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
		},
		["Threat Plates"] = {
			["enabled"] = false,
			["fontSize"] = 18,
			["effect"] = "pulse",
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
			["fontFace"] = "Fonts\\ARKai_T.TTF",
			["mmSSDuration"] = 300,
			["spiralOpacity"] = 1.0099999774247,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0,
			["minEffectDuration"] = 30,
			["yOff"] = 0,
			["minDuration"] = 0,
		},
	},
	["version"] = "8.2.5",
	["groups"] = {
		{
			["enabled"] = true,
			["rules"] = {
				"TellMeWhen", -- [1]
			},
			["id"] = "TMW",
		}, -- [1]
		{
			["id"] = "Threat Plates",
			["rules"] = {
				"ThreatPlates", -- [1]
			},
			["enabled"] = true,
		}, -- [2]
	},
}
