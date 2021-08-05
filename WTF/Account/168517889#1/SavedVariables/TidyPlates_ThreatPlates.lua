
ThreatPlatesDB = {
	["char"] = {
		["Magiccream - 冰风岗"] = {
			["welcome"] = true,
			["spec"] = {
				[3] = false,
			},
		},
		["Magiccream - 洛丹伦"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
		["Qwerqwerwerw - 格雷迈恩"] = {
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
		["Magiccreamdz - 凤凰之神"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
		["哈尼臭嗨 - 格雷迈恩"] = {
			["spec"] = {
				nil, -- [1]
				true, -- [2]
				false, -- [3]
			},
			["welcome"] = true,
		},
		["Magiccreamdk - 格雷迈恩"] = {
			["welcome"] = true,
			["spec"] = {
				true, -- [1]
				[3] = false,
			},
		},
		["Magiccreamcn - 格雷迈恩"] = {
			["spec"] = {
				nil, -- [1]
				true, -- [2]
			},
			["welcome"] = true,
		},
		["麦吉克库瑞姆 - 格雷迈恩"] = {
			["welcome"] = true,
			["spec"] = {
				[3] = false,
			},
		},
		["余生请多指教 - 格雷迈恩"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
	},
	["global"] = {
		["CheckNewLookAndFeel"] = true,
		["version"] = "10.2.9",
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Magiccream - 冰风岗"] = "Default",
		["Magiccream - 洛丹伦"] = "Default",
		["Qwerqwerwerw - 格雷迈恩"] = "Default",
		["Magiccream - 格雷迈恩"] = "Default",
		["Magiccreamdz - 凤凰之神"] = "Default",
		["哈尼臭嗨 - 格雷迈恩"] = "Default",
		["Magiccreamdk - 格雷迈恩"] = "Default",
		["Magiccreamcn - 格雷迈恩"] = "Default",
		["麦吉克库瑞姆 - 格雷迈恩"] = "Default",
		["余生请多指教 - 格雷迈恩"] = "Default",
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
				["ShowOnlyAltPower"] = false,
				["BorderOffset"] = 0,
				["y"] = -9,
				["BarWidth"] = 120,
			},
			["ShowFriendlyBlizzardNameplates"] = true,
			["totemWidget"] = {
				["ON"] = false,
			},
			["threatWidget"] = {
				["ThreatPercentage"] = {
					["HorizontalOffset"] = 0,
				},
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
				["useAlpha"] = false,
				["useScale"] = false,
				["art"] = {
					["ON"] = false,
				},
				["toggle"] = {
					["Tapped"] = false,
					["Neutral"] = false,
					["InstancesOnly"] = true,
				},
				["AdditiveScale"] = true,
			},
			["text"] = {
				["full"] = true,
				["LocalizedUnitSymbol"] = true,
				["amount"] = true,
			},
			["FocusWidget"] = {
				["ON"] = false,
			},
			["BossModsWidget"] = {
				["y"] = 50,
				["ShowInHeadlineView"] = false,
				["FontSize"] = 20,
			},
			["questWidget"] = {
				["y_hv"] = 20,
				["scale"] = 25,
				["y"] = 20,
				["HideInCombatAttacked"] = false,
			},
			["uniqueWidget"] = {
				["ON"] = false,
			},
			["arenaWidget"] = {
				["ShowNumber"] = false,
				["ShowOrb"] = false,
			},
			["AuraWidget"] = {
				["CrowdControl"] = {
					["ShowBlizzardForEnemy"] = false,
					["ShowAllEnemy"] = true,
					["ShowFriendly"] = false,
					["Scale"] = 1,
				},
				["ModeIcon"] = {
					["IconWidth"] = 25,
					["Duration"] = {
						["Font"] = {
							["Size"] = 14,
						},
						["HorizontalOffset"] = -5,
						["VerticalOffset"] = 5,
					},
					["Style"] = "custom",
					["IconHeight"] = 20,
					["ColumnSpacing"] = 1,
					["StackCount"] = {
						["Font"] = {
							["Size"] = 12,
						},
						["HorizontalOffset"] = 4,
						["VerticalOffset"] = -4,
					},
					["Rows"] = 1,
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
						"321519", -- [27]
						"334058", -- [28]
						"345209", -- [29]
						"345319", -- [30]
						"356329", -- [31]
						"", -- [32]
					},
				},
				["ShowOmniCC"] = false,
				["ShowCooldownSpiral"] = true,
				["ShowTooltips"] = true,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["LabelTextIndent"] = 0,
					["IconSpacing"] = 0,
					["TimeTextIndent"] = 0,
					["BackgroundTexture"] = "Gloss",
					["Texture"] = "Gloss",
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
				["FilterBySpell"] = {
					"279956", -- [1]
					"窒息尖啸", -- [2]
					"205644", -- [3]
					"", -- [4]
				},
			},
			["settings"] = {
				["customtext"] = {
					["shadow"] = false,
					["typeface"] = "聊天",
					["height"] = 8,
				},
				["eliteicon"] = {
					["y"] = 0,
					["x"] = 55,
					["scale"] = 12,
				},
				["spellicon"] = {
					["x"] = 53,
					["scale"] = 18,
					["y"] = -16,
				},
				["spelltext"] = {
					["height"] = 15,
					["size"] = 10,
				},
				["level"] = {
					["shadow"] = false,
					["x"] = -60,
					["height"] = 8,
					["size"] = 8,
				},
				["healthbar"] = {
					["AlwaysFullAbsorb"] = true,
					["BackgroundOpacity"] = 1,
					["BackgroundUseForegroundColor"] = true,
					["height"] = 8,
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
				["frame"] = {
					["height"] = 50.525,
					["width"] = 154,
				},
				["castnostop"] = {
					["ShowInterruptShield"] = true,
					["ShowOverlay"] = false,
				},
				["raidicon"] = {
					["y_hv"] = 0,
					["scale"] = 25,
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
					["y"] = 10,
					["x"] = 0,
				},
			},
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
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["socialWidget"] = {
				["ShowFriendIcon"] = false,
				["ShowFactionIcon"] = false,
			},
		},
		["备份"] = {
			["nameplate"] = {
				["scale"] = {
					["Elite"] = 1,
					["Totem"] = 0.8,
					["Target"] = 0.4,
					["NonTarget"] = 0,
					["Minus"] = 0.75,
				},
				["toggle"] = {
					["TargetS"] = true,
				},
			},
			["ResourceWidget"] = {
				["ShowEnemyPlayer"] = true,
				["BorderOffset"] = 0,
				["BarWidth"] = 120,
				["y"] = -9,
				["ShowEnemyNPC"] = true,
				["BarHeight"] = 4,
				["ON"] = true,
				["ShowOnlyAltPower"] = false,
			},
			["CVarsBackup"] = {
				["showQuestTrackingTooltips"] = "0",
			},
			["tidyplatesFade"] = true,
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
				["x"] = -72,
				["theme"] = "clean",
				["y"] = 0,
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
					["ShowAllEnemy"] = true,
					["ShowFriendly"] = false,
					["ShowBlizzardForEnemy"] = false,
				},
				["ModeIcon"] = {
					["IconHeight"] = 14,
					["Rows"] = 1,
					["Style"] = "custom",
					["IconWidth"] = 25,
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
							["Size"] = 14,
						},
						["VerticalOffset"] = 5,
					},
					["ColumnSpacing"] = 1,
					["RowSpacing"] = 3,
				},
				["y"] = 6,
				["SortReverse"] = true,
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
				["ModeBar"] = {
					["LabelTextIndent"] = 0,
					["IconSpacing"] = 0,
					["Texture"] = "Gloss",
					["BackgroundTexture"] = "Gloss",
					["TimeTextIndent"] = 0,
				},
				["FlashWhenExpiring"] = true,
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
				["SortOrder"] = "AtoZ",
				["ShowTooltips"] = true,
			},
			["uniqueSettings"] = {
				{
					["UseAutomaticIcon"] = false,
					["color"] = {
						["b"] = 0.9647058823529412,
						["r"] = 0.9882352941176471,
					},
					["scale"] = 1.5,
					["icon"] = "",
					["Trigger"] = {
						["Name"] = {
							["Input"] = "爆炸物",
							["AsArray"] = {
								"爆炸物", -- [1]
							},
						},
					},
				}, -- [1]
				{
					["UseAutomaticIcon"] = false,
					["color"] = {
						["g"] = 0,
						["b"] = 0.0470588235294118,
					},
					["scale"] = 1.5,
					["icon"] = "",
					["Trigger"] = {
						["Name"] = {
							["Input"] = "戈霍恩之嗣",
							["AsArray"] = {
								"戈霍恩之嗣", -- [1]
							},
						},
					},
				}, -- [2]
			},
			["settings"] = {
				["customtext"] = {
					["typeface"] = "聊天",
					["shadow"] = false,
					["height"] = 8,
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
				["raidicon"] = {
					["y_hv"] = 0,
					["x"] = 0,
					["scale"] = 25,
					["y"] = 10,
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
				},
				["spellicon"] = {
					["y"] = -16,
					["x"] = 53,
					["scale"] = 18,
				},
				["healthborder"] = {
					["Offset"] = 2,
					["EdgeSize"] = 2,
					["texture"] = "TP_Border_Default",
				},
				["name"] = {
					["y"] = 8,
					["shadow"] = false,
					["flags"] = "OUTLINE",
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
				["castnostop"] = {
					["ShowInterruptShield"] = true,
					["ShowOverlay"] = false,
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
			["threat"] = {
				["tank"] = {
					["scale"] = {
						["LOW"] = 0,
						["OFFTANK"] = 0,
						["MEDIUM"] = 0,
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
		},
	},
}
