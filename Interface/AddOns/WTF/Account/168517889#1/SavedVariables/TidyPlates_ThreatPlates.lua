
ThreatPlatesDB = {
	["char"] = {
		["余生请多指教 - 格雷迈恩"] = {
			["spec"] = {
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
		["Qwerqwerwerw - 格雷迈恩"] = {
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
		["Magiccream - 格雷迈恩"] = {
			["spec"] = {
				nil, -- [1]
				nil, -- [2]
				true, -- [3]
				false, -- [4]
			},
			["welcome"] = true,
		},
		["Magiccream - 冰风岗"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
	},
	["global"] = {
		["CheckNewLookAndFeel"] = true,
		["version"] = "9.0.20",
	},
	["profileKeys"] = {
		["余生请多指教 - 格雷迈恩"] = "Default",
		["麦吉克库瑞姆 - 格雷迈恩"] = "ROGUE",
		["Qwerqwerwerw - 格雷迈恩"] = "Default",
		["Magiccream - 洛丹伦"] = "Default",
		["Magiccream - 格雷迈恩"] = "DRUID",
		["Magiccream - 冰风岗"] = "Default",
	},
	["profiles"] = {
		["DRUID"] = {
			["nameplate"] = {
				["toggle"] = {
					["TargetS"] = true,
				},
				["scale"] = {
					["Elite"] = 1,
					["Target"] = 0.4,
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
				["y"] = -10,
				["BarWidth"] = 120,
				["ON"] = true,
				["ShowOnlyAltPower"] = false,
			},
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["uniqueSettings"] = {
				[33] = {
					["scale"] = 1.5,
					["name"] = "戈霍恩之嗣",
					["color"] = {
						["g"] = 0,
						["b"] = 0.0666666666666667,
					},
				},
				[34] = {
					["scale"] = 1.5,
					["name"] = "爆炸",
					["color"] = {
						["g"] = 0.0313725490196078,
						["b"] = 0,
					},
				},
				[35] = {
				},
				[36] = {
				},
				[38] = {
				},
				[39] = {
				},
				[40] = {
				},
				[41] = {
				},
				[42] = {
				},
				[43] = {
				},
				[44] = {
				},
				[45] = {
				},
				[46] = {
				},
				[48] = {
				},
				[49] = {
				},
				[50] = {
				},
				["map"] = {
					["暗影幻灵"] = {
					},
					["被复活的追随者"] = {
					},
					["毒气之云"] = {
					},
					["食尸鬼苦工"] = {
					},
					["剧毒蛇"] = {
					},
					["沾泥龙虾"] = {
					},
					["动力炸弹"] = {
					},
					["黑锋石像鬼"] = {
					},
					["运河蟹"] = {
					},
					["蹒跚的血僵尸"] = {
					},
					["畸形的狂热者"] = {
					},
					["毒蛇"] = {
					},
					["树人"] = {
					},
					["瓦格里暗影戒卫者"] = {
					},
					["巫妖王"] = {
					},
					["水元素"] = {
					},
					["戈霍恩之嗣"] = {
						["scale"] = 1.5,
						["name"] = "戈霍恩之嗣",
						["color"] = {
							["g"] = 0,
							["b"] = 0.0666666666666667,
						},
					},
					["不稳定的软泥怪"] = {
					},
					["骨针"] = {
					},
					["亢奋的追随者"] = {
					},
					["暴怒的灵魂"] = {
					},
					["幽灵狼"] = {
					},
					["燃烧的余烬"] = {
					},
					["燃烧的炼狱火"] = {
					},
					["被复活的狂热者"] = {
					},
					["暗影魔"] = {
					},
					["被标记的不朽守护者"] = {
					},
					["达尔纳文"] = {
					},
					["爆炸"] = {
						["scale"] = 1.5,
						["name"] = "爆炸",
						["color"] = {
							["g"] = 0.0313725490196078,
							["b"] = 0,
						},
					},
					["缠网"] = {
					},
					["不朽守护者"] = {
					},
					["毒牙坑道蛇"] = {
					},
					["奥妮克希亚雏龙"] = {
					},
					["亡者军团食尸鬼"] = {
					},
				},
			},
			["BossModsWidget"] = {
				["FontSize"] = 20,
			},
			["cache"] = {
			},
			["threat"] = {
				["tank"] = {
					["scale"] = {
						["OFFTANK"] = 0,
						["LOW"] = 0,
						["MEDIUM"] = 0,
						["HIGH"] = 0,
					},
					["alpha"] = {
						["MEDIUM"] = 1,
						["OFFTANK"] = 1,
						["HIGH"] = 1,
					},
				},
				["dps"] = {
					["scale"] = {
						["LOW"] = 0,
						["MEDIUM"] = 0,
						["HIGH"] = 0,
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
				["FlashWhenExpiring"] = true,
				["ModeIcon"] = {
					["Columns"] = 4,
					["IconWidth"] = 30,
					["Rows"] = 1,
					["Style"] = "custom",
					["IconHeight"] = 15,
					["StackCount"] = {
						["Font"] = {
							["Size"] = 12,
						},
						["HorizontalOffset"] = 4,
						["VerticalOffset"] = -4,
					},
					["ColumnSpacing"] = 1,
					["Duration"] = {
						["Font"] = {
							["Size"] = 15,
						},
						["HorizontalOffset"] = -5,
						["VerticalOffset"] = 5,
					},
					["RowSpacing"] = 3,
				},
				["y"] = 6,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["LabelTextIndent"] = 0,
					["IconSpacing"] = 0,
					["Texture"] = "Gloss",
					["BackgroundTexture"] = "Gloss",
					["TimeTextIndent"] = 0,
				},
				["Debuffs"] = {
					["FilterBySpell"] = {
						"205644", -- [1]
						"276132", -- [2]
						"3409", -- [3]
						"268756", -- [4]
						"197051", -- [5]
						"256148", -- [6]
						"1330", -- [7]
						"280286", -- [8]
						"198097", -- [9]
						"197046", -- [10]
						"279956", -- [11]
						"198222", -- [12]
						"8680", -- [13]
						"2818", -- [14]
						"273794", -- [15]
						"185763", -- [16]
						"", -- [17]
					},
				},
				["Buffs"] = {
					["FilterMode"] = "whitelist",
					["FilterBySpell"] = {
						"277242", -- [1]
						"", -- [2]
					},
					["Scale"] = 1,
					["ShowOnEnemyNPCs"] = false,
					["ShowAllEnemy"] = true,
					["ShowDispellable"] = false,
				},
			},
			["settings"] = {
				["customtext"] = {
					["shadow"] = false,
					["height"] = 8,
					["typeface"] = "聊天",
					["size"] = 10,
				},
				["eliteicon"] = {
					["y"] = 0,
					["x"] = 55,
					["scale"] = 12,
				},
				["spellicon"] = {
					["x"] = 55,
					["scale"] = 18,
					["y"] = -16,
				},
				["spelltext"] = {
					["y_hv"] = 0,
					["align"] = "LEFT",
					["width"] = 120,
					["y"] = -16,
					["x"] = 7,
					["height"] = 15,
					["size"] = 10,
				},
				["level"] = {
					["shadow"] = false,
					["x"] = -52,
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
					["BackgroundUseForegroundColor"] = true,
					["y"] = -16,
					["x"] = -7,
					["width"] = 105,
					["height"] = 12,
					["y_target"] = 0,
				},
				["frame"] = {
					["height"] = 64.1250005364416,
					["width"] = 153.999997377391,
				},
				["raidicon"] = {
					["y_hv"] = 0,
					["scale"] = 25,
					["hpMarked"] = {
						["SKULL"] = {
							["b"] = 0,
							["g"] = 0.250980392156863,
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
					["ShowInterruptShield"] = true,
					["ShowOverlay"] = false,
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
			["uniqueWidget"] = {
				["ON"] = false,
			},
			["classWidget"] = {
				["y_hv"] = 0,
				["x_hv"] = -75,
				["scale"] = 20,
				["y"] = 0,
				["x"] = -72,
				["theme"] = "clean",
			},
			["questWidget"] = {
				["scale"] = 25,
			},
			["text"] = {
				["amount"] = true,
				["full"] = true,
				["LocalizedUnitSymbol"] = true,
			},
		},
		["Default"] = {
			["uniqueWidget"] = {
				["ON"] = false,
			},
			["ResourceWidget"] = {
				["ShowEnemyPlayer"] = true,
				["BorderOffset"] = 0,
				["BarWidth"] = 120,
				["y"] = -10,
				["BarHeight"] = 4,
				["ShowEnemyNPC"] = true,
				["ON"] = true,
				["ShowOnlyAltPower"] = false,
			},
			["tidyplatesFade"] = true,
			["cache"] = {
			},
			["stealthWidget"] = {
				["scale"] = 25,
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
				["y"] = 0,
				["theme"] = "clean",
				["x"] = -72,
			},
			["AuraWidget"] = {
				["FilterBySpell"] = {
					"279956", -- [1]
					"窒息尖啸", -- [2]
					"205644", -- [3]
					"", -- [4]
				},
				["CrowdControl"] = {
					["Scale"] = 1,
					["ShowBlizzardForEnemy"] = false,
					["ShowFriendly"] = false,
					["ShowAllEnemy"] = true,
				},
				["ModeIcon"] = {
					["Columns"] = 4,
					["IconWidth"] = 30,
					["Rows"] = 1,
					["Style"] = "custom",
					["IconHeight"] = 15,
					["ColumnSpacing"] = 1,
					["StackCount"] = {
						["HorizontalOffset"] = 4,
						["Font"] = {
							["Size"] = 12,
						},
						["VerticalOffset"] = -4,
					},
					["Duration"] = {
						["HorizontalOffset"] = -5,
						["Font"] = {
							["Size"] = 15,
						},
						["VerticalOffset"] = 5,
					},
					["RowSpacing"] = 10,
				},
				["y"] = 6,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["BackgroundTexture"] = "Gloss",
					["IconSpacing"] = 0,
					["TimeTextIndent"] = 0,
					["LabelTextIndent"] = 0,
					["Texture"] = "Gloss",
				},
				["Debuffs"] = {
					["FilterBySpell"] = {
						"205644", -- [1]
						"276132", -- [2]
						"3409", -- [3]
						"268756", -- [4]
						"197051", -- [5]
						"256148", -- [6]
						"1330", -- [7]
						"280286", -- [8]
						"198097", -- [9]
						"197046", -- [10]
						"279956", -- [11]
						"198222", -- [12]
						"8680", -- [13]
						"2818", -- [14]
						"273794", -- [15]
						"185763", -- [16]
						"", -- [17]
					},
				},
				["FlashWhenExpiring"] = true,
				["SortReverse"] = true,
				["Buffs"] = {
					["FilterMode"] = "whitelist",
					["FilterBySpell"] = {
						"277242", -- [1]
						"", -- [2]
					},
					["ShowAllEnemy"] = true,
					["Scale"] = 1,
					["ShowOnEnemyNPCs"] = false,
					["ShowDispellable"] = false,
				},
			},
			["uniqueSettings"] = {
				[33] = {
					["scale"] = 1.5,
					["name"] = "戈霍恩的爪牙",
				},
				[34] = {
					["scale"] = 1.5,
					["name"] = "爆炸",
				},
				[35] = {
				},
				[36] = {
				},
				[38] = {
				},
				[39] = {
				},
				[40] = {
				},
				[41] = {
				},
				[42] = {
				},
				[43] = {
				},
				[44] = {
				},
				[45] = {
				},
				[46] = {
				},
				[48] = {
				},
				[49] = {
				},
				[50] = {
				},
				["map"] = {
					["暗影幻灵"] = {
					},
					["被复活的追随者"] = {
					},
					["毒气之云"] = {
					},
					["食尸鬼苦工"] = {
					},
					["剧毒蛇"] = {
					},
					["沾泥龙虾"] = {
					},
					["动力炸弹"] = {
					},
					["黑锋石像鬼"] = {
					},
					["运河蟹"] = {
					},
					["蹒跚的血僵尸"] = {
					},
					["畸形的狂热者"] = {
					},
					["毒蛇"] = {
					},
					["树人"] = {
					},
					["瓦格里暗影戒卫者"] = {
					},
					["巫妖王"] = {
					},
					["水元素"] = {
					},
					["不稳定的软泥怪"] = {
					},
					["骨针"] = {
					},
					["亢奋的追随者"] = {
					},
					["暴怒的灵魂"] = {
					},
					["幽灵狼"] = {
					},
					["戈霍恩的爪牙"] = {
						["scale"] = 1.5,
						["name"] = "戈霍恩的爪牙",
					},
					["燃烧的余烬"] = {
					},
					["燃烧的炼狱火"] = {
					},
					["被复活的狂热者"] = {
					},
					["暗影魔"] = {
					},
					["被标记的不朽守护者"] = {
					},
					["达尔纳文"] = {
					},
					["爆炸"] = {
						["scale"] = 1.5,
						["name"] = "爆炸",
					},
					["缠网"] = {
					},
					["不朽守护者"] = {
					},
					["毒牙坑道蛇"] = {
					},
					["奥妮克希亚雏龙"] = {
					},
					["亡者军团食尸鬼"] = {
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
					["scale"] = 12,
					["x"] = 55,
					["y"] = 0,
				},
				["skullicon"] = {
					["scale"] = 12,
					["x"] = 45,
				},
				["spellicon"] = {
					["y"] = -16,
					["x"] = 55,
					["scale"] = 18,
				},
				["castnostop"] = {
					["ShowOverlay"] = false,
					["ShowInterruptShield"] = true,
				},
				["name"] = {
					["y"] = 8,
					["shadow"] = false,
					["flags"] = "OUTLINE",
				},
				["spelltext"] = {
					["y_hv"] = 0,
					["x"] = 7,
					["width"] = 120,
					["align"] = "LEFT",
					["y"] = -16,
					["height"] = 15,
					["size"] = 10,
				},
				["castbar"] = {
					["y"] = -16,
					["x"] = -7,
					["height"] = 12,
					["BackgroundUseForegroundColor"] = true,
					["y_target"] = 0,
					["width"] = 105,
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
							["b"] = 0.00392156862745098,
							["g"] = 0,
							["r"] = 0.984313725490196,
						},
						["CROSS"] = {
							["b"] = 0.909803921568627,
							["g"] = 0.976470588235294,
							["r"] = 0.92156862745098,
						},
					},
				},
			},
			["BossModsWidget"] = {
				["FontSize"] = 20,
			},
			["nameplate"] = {
				["scale"] = {
					["Elite"] = 1,
					["Totem"] = 0.8,
					["Target"] = 0.4,
					["Minus"] = 0.75,
					["NonTarget"] = 0,
				},
				["toggle"] = {
					["TargetS"] = true,
				},
			},
			["questWidget"] = {
				["scale"] = 25,
			},
			["friendlyClassIcon"] = true,
			["threat"] = {
				["tank"] = {
					["scale"] = {
						["LOW"] = 0,
						["MEDIUM"] = 0,
						["OFFTANK"] = 0,
						["HIGH"] = 0,
					},
					["alpha"] = {
						["OFFTANK"] = 1,
						["MEDIUM"] = 1,
						["HIGH"] = 1,
					},
				},
				["dps"] = {
					["scale"] = {
						["LOW"] = 0,
						["MEDIUM"] = 0,
						["HIGH"] = 0,
					},
				},
				["AdditiveScale"] = true,
			},
		},
		["ROGUE"] = {
			["nameplate"] = {
				["toggle"] = {
					["TargetS"] = true,
				},
				["scale"] = {
					["Elite"] = 1,
					["Totem"] = 0.8,
					["Target"] = 0.4,
					["Minus"] = 0.75,
					["NonTarget"] = 0,
				},
			},
			["ResourceWidget"] = {
				["ShowEnemyPlayer"] = true,
				["BorderOffset"] = 0,
				["ShowOnlyAltPower"] = false,
				["y"] = -10,
				["BarHeight"] = 4,
				["ShowEnemyNPC"] = true,
				["ON"] = true,
				["BarWidth"] = 120,
			},
			["tidyplatesFade"] = true,
			["cache"] = {
			},
			["threat"] = {
				["tank"] = {
					["scale"] = {
						["LOW"] = 0,
						["MEDIUM"] = 0,
						["OFFTANK"] = 0,
						["HIGH"] = 0,
					},
					["alpha"] = {
						["OFFTANK"] = 1,
						["MEDIUM"] = 1,
						["HIGH"] = 1,
					},
				},
				["dps"] = {
					["scale"] = {
						["MEDIUM"] = 0,
						["LOW"] = 0,
						["HIGH"] = 0,
					},
				},
				["AdditiveScale"] = true,
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
			["AuraWidget"] = {
				["FilterBySpell"] = {
					"279956", -- [1]
					"窒息尖啸", -- [2]
					"205644", -- [3]
					"", -- [4]
				},
				["CrowdControl"] = {
					["Scale"] = 1,
					["ShowBlizzardForEnemy"] = false,
					["ShowFriendly"] = false,
					["ShowAllEnemy"] = true,
				},
				["ModeIcon"] = {
					["Columns"] = 4,
					["IconWidth"] = 30,
					["Rows"] = 1,
					["Style"] = "custom",
					["IconHeight"] = 15,
					["StackCount"] = {
						["HorizontalOffset"] = 4,
						["Font"] = {
							["Size"] = 12,
						},
						["VerticalOffset"] = -4,
					},
					["ColumnSpacing"] = 1,
					["Duration"] = {
						["HorizontalOffset"] = -5,
						["Font"] = {
							["Size"] = 15,
						},
						["VerticalOffset"] = 5,
					},
					["RowSpacing"] = 3,
				},
				["y"] = 6,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["LabelTextIndent"] = 0,
					["IconSpacing"] = 0,
					["TimeTextIndent"] = 0,
					["BackgroundTexture"] = "Gloss",
					["Texture"] = "Gloss",
				},
				["SortReverse"] = true,
				["FlashWhenExpiring"] = true,
				["Debuffs"] = {
					["FilterBySpell"] = {
						"205644", -- [1]
						"276132", -- [2]
						"3409", -- [3]
						"268756", -- [4]
						"197051", -- [5]
						"256148", -- [6]
						"1330", -- [7]
						"280286", -- [8]
						"198097", -- [9]
						"197046", -- [10]
						"279956", -- [11]
						"198222", -- [12]
						"8680", -- [13]
						"2818", -- [14]
						"273794", -- [15]
						"185763", -- [16]
						"", -- [17]
					},
				},
				["Buffs"] = {
					["FilterMode"] = "whitelist",
					["FilterBySpell"] = {
						"277242", -- [1]
						"", -- [2]
					},
					["ShowAllEnemy"] = true,
					["Scale"] = 1,
					["ShowOnEnemyNPCs"] = false,
					["ShowDispellable"] = false,
				},
			},
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["uniqueSettings"] = {
				[33] = {
					["color"] = {
						["g"] = 0,
						["b"] = 0.0470588235294118,
					},
					["name"] = "戈霍恩之嗣",
					["scale"] = 1.5,
				},
				[34] = {
					["color"] = {
						["g"] = 0,
						["b"] = 0.0352941176470588,
					},
					["name"] = "爆炸物",
					["scale"] = 1.5,
				},
				[35] = {
				},
				[36] = {
				},
				[38] = {
				},
				[39] = {
				},
				[40] = {
				},
				[41] = {
				},
				[42] = {
				},
				[43] = {
				},
				[44] = {
				},
				[45] = {
				},
				[46] = {
				},
				[48] = {
				},
				[49] = {
				},
				[50] = {
				},
				["map"] = {
					["暗影幻灵"] = {
					},
					["被复活的追随者"] = {
					},
					["毒气之云"] = {
					},
					["食尸鬼苦工"] = {
					},
					["剧毒蛇"] = {
					},
					["沾泥龙虾"] = {
					},
					["动力炸弹"] = {
					},
					["黑锋石像鬼"] = {
					},
					["运河蟹"] = {
					},
					["蹒跚的血僵尸"] = {
					},
					["畸形的狂热者"] = {
					},
					["毒蛇"] = {
					},
					["树人"] = {
					},
					["瓦格里暗影戒卫者"] = {
					},
					["巫妖王"] = {
					},
					["水元素"] = {
					},
					["戈霍恩之嗣"] = {
						["color"] = {
							["g"] = 0,
							["b"] = 0.0470588235294118,
						},
						["name"] = "戈霍恩之嗣",
						["scale"] = 1.5,
					},
					["不稳定的软泥怪"] = {
					},
					["骨针"] = {
					},
					["亢奋的追随者"] = {
					},
					["暴怒的灵魂"] = {
					},
					["幽灵狼"] = {
					},
					["燃烧的余烬"] = {
					},
					["燃烧的炼狱火"] = {
					},
					["被复活的狂热者"] = {
					},
					["暗影魔"] = {
					},
					["被标记的不朽守护者"] = {
					},
					["爆炸物"] = {
						["color"] = {
							["g"] = 0,
							["b"] = 0.0352941176470588,
						},
						["name"] = "爆炸物",
						["scale"] = 1.5,
					},
					["达尔纳文"] = {
					},
					["缠网"] = {
					},
					["不朽守护者"] = {
					},
					["毒牙坑道蛇"] = {
					},
					["奥妮克希亚雏龙"] = {
					},
					["亡者军团食尸鬼"] = {
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
					["ShowInterruptShield"] = true,
					["ShowOverlay"] = false,
				},
				["spellicon"] = {
					["scale"] = 18,
					["x"] = 55,
					["y"] = -16,
				},
				["healthborder"] = {
					["Offset"] = 2,
					["EdgeSize"] = 2,
					["texture"] = "TP_Border_Default",
				},
				["name"] = {
					["flags"] = "OUTLINE",
					["shadow"] = false,
					["y"] = 8,
				},
				["spelltext"] = {
					["y_hv"] = 0,
					["x"] = 7,
					["width"] = 120,
					["align"] = "LEFT",
					["y"] = -16,
					["height"] = 15,
					["size"] = 10,
				},
				["level"] = {
					["height"] = 8,
					["shadow"] = false,
					["x"] = -52,
					["size"] = 10,
				},
				["frame"] = {
					["height"] = 64.1250005364416,
					["width"] = 153.999997377391,
				},
				["castbar"] = {
					["y"] = -16,
					["x"] = -7,
					["height"] = 12,
					["width"] = 105,
					["y_target"] = 0,
					["BackgroundUseForegroundColor"] = true,
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
			["classWidget"] = {
				["y_hv"] = 0,
				["x_hv"] = -75,
				["scale"] = 20,
				["y"] = 0,
				["theme"] = "clean",
				["x"] = -72,
			},
			["questWidget"] = {
				["scale"] = 25,
			},
			["friendlyClassIcon"] = true,
			["uniqueWidget"] = {
				["ON"] = false,
			},
		},
	},
}
