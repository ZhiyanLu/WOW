
ThreatPlatesDB = {
	["char"] = {
		["Magiccream - 冰风岗"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
		["Magiccream - 洛丹伦"] = {
			["welcome"] = true,
			["spec"] = {
				[3] = false,
			},
		},
		["Qwerqwerwerw - 格雷迈恩"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
		["Magiccream - 格雷迈恩"] = {
			["spec"] = {
				nil, -- [1]
				nil, -- [2]
				true, -- [3]
				false, -- [4]
			},
			["welcome"] = true,
		},
		["Magiccreamdz - 凤凰之神"] = {
			["welcome"] = true,
			["spec"] = {
				[3] = false,
			},
		},
		["哈尼臭嗨 - 格雷迈恩"] = {
			["welcome"] = true,
			["spec"] = {
				nil, -- [1]
				true, -- [2]
				false, -- [3]
			},
		},
		["余生请多指教 - 格雷迈恩"] = {
			["welcome"] = true,
			["spec"] = {
				[3] = false,
			},
		},
		["Magiccreamdk - 格雷迈恩"] = {
			["spec"] = {
				true, -- [1]
				[3] = false,
			},
			["welcome"] = true,
		},
		["麦吉克库瑞姆 - 格雷迈恩"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
		["Magiccreamcn - 格雷迈恩"] = {
			["welcome"] = true,
			["spec"] = {
				nil, -- [1]
				true, -- [2]
			},
		},
	},
	["global"] = {
		["CheckNewLookAndFeel"] = true,
		["version"] = "10.0.9",
	},
	["profileKeys"] = {
		["Magiccream - 冰风岗"] = "Default",
		["Magiccream - 洛丹伦"] = "Default",
		["Qwerqwerwerw - 格雷迈恩"] = "Default",
		["Magiccream - 格雷迈恩"] = "Default",
		["Magiccreamdz - 凤凰之神"] = "Default",
		["哈尼臭嗨 - 格雷迈恩"] = "Default",
		["余生请多指教 - 格雷迈恩"] = "Default",
		["Magiccreamdk - 格雷迈恩"] = "Default",
		["麦吉克库瑞姆 - 格雷迈恩"] = "Default",
		["Magiccreamcn - 格雷迈恩"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["nameplate"] = {
				["toggle"] = {
					["TargetS"] = true,
				},
				["scale"] = {
					["Elite"] = 1,
					["Target"] = 0.5000000000000002,
					["Minus"] = 0.75,
					["Totem"] = 0.8,
					["NonTarget"] = 0,
				},
			},
			["ResourceWidget"] = {
				["BarHeight"] = 4,
				["ShowEnemyPlayer"] = true,
				["ShowEnemyNPC"] = true,
				["BorderOffset"] = 0,
				["y"] = -9,
				["BarWidth"] = 120,
				["ON"] = true,
				["ShowOnlyAltPower"] = false,
			},
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["uniqueSettings"] = {
				nil, -- [1]
				{
				}, -- [2]
				{
				}, -- [3]
				{
				}, -- [4]
				{
				}, -- [5]
				{
				}, -- [6]
				{
				}, -- [7]
				{
				}, -- [8]
				{
				}, -- [9]
				{
				}, -- [10]
				{
				}, -- [11]
				{
				}, -- [12]
				{
				}, -- [13]
				{
				}, -- [14]
				nil, -- [15]
				{
				}, -- [16]
				{
				}, -- [17]
				nil, -- [18]
				nil, -- [19]
				{
				}, -- [20]
				{
				}, -- [21]
				nil, -- [22]
				nil, -- [23]
				{
				}, -- [24]
				{
				}, -- [25]
				nil, -- [26]
				{
				}, -- [27]
				{
				}, -- [28]
				{
				}, -- [29]
				nil, -- [30]
				nil, -- [31]
				{
				}, -- [32]
				{
					["color"] = {
						["g"] = 0,
						["b"] = 0.0470588235294118,
					},
					["Trigger"] = {
						["Name"] = {
							["Input"] = "戈霍恩之嗣",
							["AsArray"] = {
								"戈霍恩之嗣", -- [1]
							},
						},
					},
					["name"] = "戈霍恩之嗣",
					["scale"] = 1.5,
				}, -- [33]
				{
					["color"] = {
						["r"] = 0.9882352941176471,
						["b"] = 0.9647058823529412,
					},
					["Trigger"] = {
						["Name"] = {
							["Input"] = "爆炸物",
							["AsArray"] = {
								"爆炸物", -- [1]
							},
						},
					},
					["name"] = "爆炸物",
					["scale"] = 1.5,
				}, -- [34]
			},
			["questWidget"] = {
				["y_hv"] = 20,
				["scale"] = 25,
				["y"] = 20,
				["HideInCombatAttacked"] = false,
			},
			["threatWidget"] = {
				["ThreatPercentage"] = {
					["HorizontalOffset"] = 0,
				},
			},
			["arenaWidget"] = {
				["ShowNumber"] = false,
				["ShowOrb"] = false,
			},
			["text"] = {
				["full"] = true,
				["LocalizedUnitSymbol"] = true,
				["amount"] = true,
			},
			["BossModsWidget"] = {
				["FontSize"] = 20,
			},
			["uniqueWidget"] = {
				["ON"] = false,
			},
			["threat"] = {
				["dps"] = {
					["scale"] = {
						["MEDIUM"] = 0,
						["LOW"] = 0,
						["HIGH"] = 0,
					},
				},
				["tank"] = {
					["scale"] = {
						["OFFTANK"] = 0,
						["MEDIUM"] = 0,
						["LOW"] = 0,
						["HIGH"] = 0,
					},
					["alpha"] = {
						["OFFTANK"] = 1,
						["MEDIUM"] = 1,
						["HIGH"] = 1,
					},
				},
				["AdditiveScale"] = true,
			},
			["AuraWidget"] = {
				["FilterBySpell"] = {
					"279956", -- [1]
					"窒息尖啸", -- [2]
					"205644", -- [3]
					"", -- [4]
				},
				["CrowdControl"] = {
					["ShowBlizzardForEnemy"] = false,
					["ShowAllEnemy"] = true,
					["ShowFriendly"] = false,
					["Scale"] = 1,
				},
				["ModeIcon"] = {
					["IconWidth"] = 25,
					["Duration"] = {
						["HorizontalOffset"] = -5,
						["Font"] = {
							["Size"] = 14,
						},
						["VerticalOffset"] = 5,
					},
					["Style"] = "custom",
					["IconHeight"] = 18,
					["ColumnSpacing"] = 1,
					["Rows"] = 1,
					["StackCount"] = {
						["HorizontalOffset"] = 4,
						["Font"] = {
							["Size"] = 12,
						},
						["VerticalOffset"] = -4,
					},
					["RowSpacing"] = 3,
				},
				["y"] = 2,
				["Debuffs"] = {
					["FilterBySpell"] = {
						"1330", -- [1]
						"2818", -- [2]
						"3409", -- [3]
						"8680", -- [4]
						"58180", -- [5]
						"185763", -- [6]
						"197046", -- [7]
						"197051", -- [8]
						"198097", -- [9]
						"198222", -- [10]
						"205644", -- [11]
						"256148", -- [12]
						"268756", -- [13]
						"273794", -- [14]
						"273836", -- [15]
						"276132", -- [16]
						"279956", -- [17]
						"280286", -- [18]
						"280404", -- [19]
						"286581", -- [20]
						"288330", -- [21]
						"295367", -- [22]
						"302565", -- [23]
						"303568", -- [24]
						"304645", -- [25]
						"317792", -- [26]
						"334058", -- [27]
						"345209", -- [28]
						"345319", -- [29]
						"", -- [30]
					},
				},
				["ShowOmniCC"] = false,
				["ShowCooldownSpiral"] = true,
				["ShowTooltips"] = true,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["BackgroundTexture"] = "Gloss",
					["Texture"] = "Gloss",
					["IconSpacing"] = 0,
					["LabelTextIndent"] = 0,
					["TimeTextIndent"] = 0,
				},
				["Buffs"] = {
					["FilterBySpell"] = {
						"277242", -- [1]
						"", -- [2]
					},
					["ShowAllEnemy"] = true,
					["FilterMode"] = "Allow",
					["ShowOnEnemyNPCs"] = false,
					["ShowDispellable"] = false,
					["Scale"] = 1,
				},
			},
			["settings"] = {
				["eliteicon"] = {
					["y"] = 0,
					["x"] = 55,
					["scale"] = 12,
				},
				["spellicon"] = {
					["y"] = -16,
					["x"] = 53,
					["scale"] = 18,
				},
				["spelltext"] = {
					["height"] = 15,
					["size"] = 10,
				},
				["level"] = {
					["shadow"] = false,
					["x"] = -58,
					["height"] = 8,
					["size"] = 10,
				},
				["healthbar"] = {
					["AlwaysFullAbsorb"] = true,
					["BackgroundOpacity"] = 1,
					["BackgroundUseForegroundColor"] = true,
				},
				["healthborder"] = {
					["EdgeSize"] = 2,
					["Offset"] = 2,
					["texture"] = "TP_Border_Default",
				},
				["skullicon"] = {
					["x"] = 45,
					["scale"] = 12,
				},
				["name"] = {
					["shadow"] = false,
					["flags"] = "OUTLINE",
					["y"] = 8,
				},
				["castbar"] = {
					["CastTarget"] = {
						["VerticalOffset"] = 2,
					},
					["BackgroundUseForegroundColor"] = true,
					["width"] = 105,
					["y"] = -16,
					["x"] = -8,
					["height"] = 12,
					["SpellNameText"] = {
						["HorizontalOffset"] = 10,
					},
				},
				["customtext"] = {
					["shadow"] = false,
					["height"] = 8,
					["typeface"] = "聊天",
					["size"] = 10,
				},
				["frame"] = {
					["height"] = 52.875,
					["width"] = 154,
				},
				["raidicon"] = {
					["y_hv"] = 0,
					["scale"] = 25,
					["hpMarked"] = {
						["SKULL"] = {
							["b"] = 0,
							["g"] = 0.290196078431373,
							["r"] = 0.984313725490196,
						},
						["CROSS"] = {
							["b"] = 0.909803921568627,
							["g"] = 0.976470588235294,
							["r"] = 0.92156862745098,
						},
					},
					["y"] = 10,
					["x"] = 0,
				},
				["castnostop"] = {
					["ShowOverlay"] = false,
					["ShowInterruptShield"] = true,
				},
			},
			["friendlyClassIcon"] = true,
			["tidyplatesFade"] = true,
			["HeadlineView"] = {
				["customtext"] = {
					["y"] = 0,
				},
				["FriendlySubtext"] = "ROLE_GUILD_LEVEL",
				["name"] = {
					["y"] = 0,
				},
			},
			["classWidget"] = {
				["y_hv"] = 0,
				["x_hv"] = -75,
				["scale"] = 20,
				["y"] = 0,
				["x"] = -72,
				["theme"] = "clean",
			},
		},
		["备份"] = {
			["nameplate"] = {
				["toggle"] = {
					["TargetS"] = true,
				},
				["scale"] = {
					["Elite"] = 1,
					["Totem"] = 0.8,
					["Target"] = 0.4,
					["NonTarget"] = 0,
					["Minus"] = 0.75,
				},
			},
			["ResourceWidget"] = {
				["ShowEnemyPlayer"] = true,
				["BorderOffset"] = 0,
				["ShowOnlyAltPower"] = false,
				["y"] = -9,
				["ShowEnemyNPC"] = true,
				["BarHeight"] = 4,
				["ON"] = true,
				["BarWidth"] = 120,
			},
			["CVarsBackup"] = {
				["showQuestTrackingTooltips"] = "0",
			},
			["threat"] = {
				["dps"] = {
					["scale"] = {
						["LOW"] = 0,
						["MEDIUM"] = 0,
						["HIGH"] = 0,
					},
				},
				["tank"] = {
					["scale"] = {
						["LOW"] = 0,
						["OFFTANK"] = 0,
						["MEDIUM"] = 0,
						["HIGH"] = 0,
					},
					["alpha"] = {
						["MEDIUM"] = 1,
						["OFFTANK"] = 1,
						["HIGH"] = 1,
					},
				},
				["AdditiveScale"] = true,
			},
			["AuraWidget"] = {
				["Debuffs"] = {
					["FilterBySpell"] = {
						"1330", -- [1]
						"2818", -- [2]
						"3409", -- [3]
						"8680", -- [4]
						"58180", -- [5]
						"185763", -- [6]
						"197046", -- [7]
						"197051", -- [8]
						"198097", -- [9]
						"198222", -- [10]
						"205644", -- [11]
						"256148", -- [12]
						"268756", -- [13]
						"273794", -- [14]
						"273836", -- [15]
						"276132", -- [16]
						"279956", -- [17]
						"280286", -- [18]
						"280404", -- [19]
						"286581", -- [20]
						"288330", -- [21]
						"295367", -- [22]
						"302565", -- [23]
						"303568", -- [24]
						"304645", -- [25]
					},
				},
				["CrowdControl"] = {
					["Scale"] = 1,
					["ShowAllEnemy"] = true,
					["ShowFriendly"] = false,
					["ShowBlizzardForEnemy"] = false,
				},
				["ModeIcon"] = {
					["IconHeight"] = 14,
					["StackCount"] = {
						["HorizontalOffset"] = 4,
						["Font"] = {
							["Size"] = 12,
						},
						["VerticalOffset"] = -4,
					},
					["Style"] = "custom",
					["IconWidth"] = 25,
					["ColumnSpacing"] = 1,
					["Duration"] = {
						["HorizontalOffset"] = -5,
						["Font"] = {
							["Size"] = 14,
						},
						["VerticalOffset"] = 5,
					},
					["Rows"] = 1,
					["RowSpacing"] = 3,
				},
				["y"] = 6,
				["SortReverse"] = true,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["BackgroundTexture"] = "Gloss",
					["IconSpacing"] = 0,
					["TimeTextIndent"] = 0,
					["LabelTextIndent"] = 0,
					["Texture"] = "Gloss",
				},
				["ShowTooltips"] = true,
				["Buffs"] = {
					["FilterMode"] = "Allow",
					["FilterBySpell"] = {
						"277242", -- [1]
						"", -- [2]
					},
					["ShowAllEnemy"] = true,
					["Scale"] = 1,
					["ShowOnEnemyNPCs"] = false,
					["ShowDispellable"] = false,
				},
				["FlashWhenExpiring"] = true,
				["FilterBySpell"] = {
					"279956", -- [1]
					"窒息尖啸", -- [2]
					"205644", -- [3]
					"", -- [4]
				},
			},
			["text"] = {
				["amount"] = true,
				["full"] = true,
				["LocalizedUnitSymbol"] = true,
			},
			["HeadlineView"] = {
				["customtext"] = {
					["y"] = 0,
				},
				["FriendlySubtext"] = "ROLE_GUILD_LEVEL",
				["name"] = {
					["y"] = 0,
				},
			},
			["classWidget"] = {
				["y_hv"] = 0,
				["x_hv"] = -75,
				["scale"] = 20,
				["x"] = -72,
				["theme"] = "clean",
				["y"] = 0,
			},
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["uniqueSettings"] = {
				nil, -- [1]
				{
				}, -- [2]
				{
				}, -- [3]
				{
				}, -- [4]
				{
				}, -- [5]
				{
				}, -- [6]
				{
				}, -- [7]
				{
				}, -- [8]
				{
				}, -- [9]
				{
				}, -- [10]
				{
				}, -- [11]
				{
				}, -- [12]
				{
				}, -- [13]
				{
				}, -- [14]
				[24] = {
				},
				[25] = {
				},
				[27] = {
				},
				[28] = {
				},
				[29] = {
				},
				[16] = {
				},
				[17] = {
				},
				[34] = {
					["color"] = {
						["b"] = 0.9647058823529412,
						["r"] = 0.9882352941176471,
					},
					["scale"] = 1.5,
					["name"] = "爆炸物",
					["Trigger"] = {
						["Name"] = {
							["Input"] = "爆炸物",
							["AsArray"] = {
								"爆炸物", -- [1]
							},
						},
					},
				},
				[20] = {
				},
				[21] = {
				},
				[32] = {
				},
				[33] = {
					["color"] = {
						["g"] = 0,
						["b"] = 0.0470588235294118,
					},
					["scale"] = 1.5,
					["name"] = "戈霍恩之嗣",
					["Trigger"] = {
						["Name"] = {
							["Input"] = "戈霍恩之嗣",
							["AsArray"] = {
								"戈霍恩之嗣", -- [1]
							},
						},
					},
				},
			},
			["settings"] = {
				["customtext"] = {
					["height"] = 8,
					["shadow"] = false,
					["typeface"] = "聊天",
					["size"] = 10,
				},
				["healthbar"] = {
					["AlwaysFullAbsorb"] = true,
					["BackgroundOpacity"] = 1,
					["BackgroundUseForegroundColor"] = true,
				},
				["eliteicon"] = {
					["y"] = 0,
					["x"] = 55,
					["scale"] = 12,
				},
				["skullicon"] = {
					["scale"] = 12,
					["x"] = 45,
				},
				["castnostop"] = {
					["ShowOverlay"] = false,
					["ShowInterruptShield"] = true,
				},
				["spellicon"] = {
					["y"] = -16,
					["x"] = 53,
					["scale"] = 18,
				},
				["castbar"] = {
					["y"] = -16,
					["x"] = -8,
					["SpellNameText"] = {
						["HorizontalOffset"] = 10,
					},
					["height"] = 12,
					["BackgroundUseForegroundColor"] = true,
					["width"] = 105,
				},
				["name"] = {
					["flags"] = "OUTLINE",
					["shadow"] = false,
					["y"] = 8,
				},
				["spelltext"] = {
					["height"] = 15,
					["size"] = 10,
				},
				["frame"] = {
					["height"] = 52.875,
					["width"] = 154,
				},
				["level"] = {
					["height"] = 8,
					["shadow"] = false,
					["x"] = -52,
					["size"] = 10,
				},
				["healthborder"] = {
					["Offset"] = 2,
					["EdgeSize"] = 2,
					["texture"] = "TP_Border_Default",
				},
				["raidicon"] = {
					["y_hv"] = 0,
					["x"] = 0,
					["scale"] = 25,
					["y"] = 10,
					["hpMarked"] = {
						["SKULL"] = {
							["r"] = 0.984313725490196,
							["g"] = 0.290196078431373,
							["b"] = 0,
						},
						["CROSS"] = {
							["r"] = 0.92156862745098,
							["g"] = 0.976470588235294,
							["b"] = 0.909803921568627,
						},
					},
				},
			},
			["BossModsWidget"] = {
				["FontSize"] = 20,
			},
			["uniqueWidget"] = {
				["ON"] = false,
			},
			["questWidget"] = {
				["y_hv"] = 25,
				["scale"] = 25,
				["y"] = 25,
				["HideInCombatAttacked"] = false,
			},
			["friendlyClassIcon"] = true,
			["tidyplatesFade"] = true,
		},
	},
}
