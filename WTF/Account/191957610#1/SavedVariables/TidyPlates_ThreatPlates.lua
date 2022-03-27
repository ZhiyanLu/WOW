
ThreatPlatesDB = {
	["char"] = {
		["Magiccream - 冰风岗"] = {
			["welcome"] = true,
			["spec"] = {
				[3] = false,
			},
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
			["welcome"] = true,
			["spec"] = {
				[3] = true,
				[4] = false,
			},
		},
		["Magiccreamdz - 凤凰之神"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
		},
		["哈尼臭嗨 - 格雷迈恩"] = {
			["spec"] = {
				[2] = true,
				[3] = false,
			},
			["welcome"] = true,
		},
		["Magiccreamcn - 格雷迈恩"] = {
			["spec"] = {
				[2] = true,
			},
			["welcome"] = true,
		},
		["余生请多指教 - 格雷迈恩"] = {
			["spec"] = {
				[3] = false,
			},
			["welcome"] = true,
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
		["芃芃其麦 - 格雷迈恩"] = {
			["welcome"] = true,
			["spec"] = {
				true, -- [1]
				[3] = false,
			},
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
		["麦吉克库瑞姆 - 格雷迈恩"] = "Default",
		["Magiccreamcn - 格雷迈恩"] = "Default",
		["余生请多指教 - 格雷迈恩"] = "Default",
		["芃芃其麦 - 格雷迈恩"] = "Default",
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["CheckNewLookAndFeel"] = true,
		["version"] = "10.2.11",
	},
	["profiles"] = {
		["Default"] = {
			["nameplate"] = {
				["toggle"] = {
					["TargetS"] = true,
				},
				["scale"] = {
					["Elite"] = 1,
					["Target"] = 0.6,
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
			["uniqueSettings"] = {
				{
					["Trigger"] = {
						["Name"] = {
							["Input"] = "爆炸物",
							["AsArray"] = {
								"爆炸物", -- [1]
							},
						},
					},
				}, -- [1]
			},
			["totemWidget"] = {
				["ON"] = false,
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
			["FocusWidget"] = {
				["ON"] = false,
			},
			["BossModsWidget"] = {
				["y"] = 50,
				["ShowInHeadlineView"] = false,
				["FontSize"] = 20,
			},
			["uniqueWidget"] = {
				["ON"] = false,
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
					["IconWidth"] = 22,
					["Rows"] = 1,
					["Style"] = "custom",
					["IconHeight"] = 15,
					["StackCount"] = {
						["HorizontalOffset"] = 3,
						["VerticalOffset"] = -3,
					},
					["Duration"] = {
						["Font"] = {
							["Size"] = 12,
						},
						["HorizontalOffset"] = -5,
						["VerticalOffset"] = 5,
					},
					["ColumnSpacing"] = 1,
					["RowSpacing"] = 3,
				},
				["y"] = 4,
				["ShowOmniCC"] = false,
				["ShowCooldownSpiral"] = true,
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
						"345466", -- [31]
						"353254", -- [32]
						"353354", -- [33]
						"355759", -- [34]
						"356329", -- [35]
						"356372", -- [36]
						"357610", -- [37]
						"", -- [38]
					},
				},
				["ShowTooltips"] = true,
				["SortOrder"] = "AtoZ",
				["ModeBar"] = {
					["LabelTextIndent"] = 0,
					["IconSpacing"] = 0,
					["Texture"] = "Gloss",
					["BackgroundTexture"] = "Gloss",
					["TimeTextIndent"] = 0,
				},
				["Buffs"] = {
					["FilterBySpell"] = {
						"277242", -- [1]
						"", -- [2]
					},
					["ShowUnlimitedInCombat"] = false,
					["ShowUnlimitedOnBosses"] = false,
					["ShowUnlimitedInInstances"] = false,
					["ShowAllEnemy"] = true,
					["FilterMode"] = "Allow",
					["ShowOnEnemyNPCs"] = false,
					["ShowDispellable"] = false,
					["Scale"] = 1,
					["ShowUnlimitedAlways"] = true,
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
					["x"] = 52,
					["scale"] = 15,
					["y"] = -15,
				},
				["spelltext"] = {
					["height"] = 15,
					["size"] = 10,
				},
				["level"] = {
					["shadow"] = false,
					["x"] = -60,
					["height"] = 8,
					["size"] = 7,
				},
				["healthbar"] = {
					["BackgroundUseForegroundColor"] = true,
					["AlwaysFullAbsorb"] = true,
					["BackgroundOpacity"] = 1,
					["width"] = 110,
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
					["y"] = 8,
					["flags"] = "OUTLINE",
					["size"] = 8,
				},
				["castbar"] = {
					["CastTarget"] = {
						["VerticalOffset"] = 2,
					},
					["BackgroundUseForegroundColor"] = true,
					["width"] = 100,
					["y"] = -14,
					["x"] = -5,
					["SpellNameText"] = {
						["HorizontalOffset"] = 10,
					},
				},
				["frame"] = {
					["height"] = 50.525,
					["width"] = 140,
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
							["r"] = 0.9843137254902,
							["g"] = 0.29019607843137,
							["b"] = 0,
						},
						["CROSS"] = {
							["r"] = 0.92156862745098,
							["g"] = 0.97647058823529,
							["b"] = 0.90980392156863,
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
				["ForceHealthbarOnTarget"] = true,
				["name"] = {
					["y"] = 0,
				},
			},
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["classWidget"] = {
				["y_hv"] = 0,
				["x_hv"] = -75,
				["scale"] = 20,
				["y"] = 0,
				["x"] = -72,
				["theme"] = "clean",
			},
			["socialWidget"] = {
				["ShowFriendIcon"] = false,
				["ShowFactionIcon"] = false,
			},
			["questWidget"] = {
				["y_hv"] = 20,
				["scale"] = 25,
				["y"] = 20,
				["HideInCombatAttacked"] = false,
			},
			["Visibility"] = {
				["FriendlyMinus"] = {
					["Show"] = false,
				},
			},
			["threat"] = {
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
				["art"] = {
					["ON"] = false,
				},
				["useAlpha"] = false,
				["useScale"] = false,
				["dps"] = {
					["scale"] = {
						["MEDIUM"] = 0,
						["LOW"] = 0,
						["HIGH"] = 0,
					},
				},
				["toggle"] = {
					["Tapped"] = false,
					["Neutral"] = false,
					["InstancesOnly"] = true,
				},
				["AdditiveScale"] = true,
			},
		},
		["备份"] = {
			["uniqueWidget"] = {
				["ON"] = false,
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
			["stealthWidget"] = {
				["scale"] = 25,
			},
			["tidyplatesFade"] = true,
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
			["nameplate"] = {
				["scale"] = {
					["NonTarget"] = 0,
					["Totem"] = 0.8,
					["Target"] = 0.4,
					["Minus"] = 0.75,
					["Elite"] = 1,
				},
				["toggle"] = {
					["TargetS"] = true,
				},
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
				["SortOrder"] = "AtoZ",
				["SortReverse"] = true,
				["ModeBar"] = {
					["LabelTextIndent"] = 0,
					["IconSpacing"] = 0,
					["TimeTextIndent"] = 0,
					["BackgroundTexture"] = "Gloss",
					["Texture"] = "Gloss",
				},
				["ShowTooltips"] = true,
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
				["FilterBySpell"] = {
					"279956", -- [1]
					"窒息尖啸", -- [2]
					"205644", -- [3]
					"", -- [4]
				},
			},
			["uniqueSettings"] = {
				{
					["UseAutomaticIcon"] = false,
					["Trigger"] = {
						["Name"] = {
							["Input"] = "爆炸物",
							["AsArray"] = {
								"爆炸物", -- [1]
							},
						},
					},
					["color"] = {
						["b"] = 0.96470588235294,
						["r"] = 0.98823529411765,
					},
					["icon"] = "",
					["scale"] = 1.5,
				}, -- [1]
				{
					["UseAutomaticIcon"] = false,
					["Trigger"] = {
						["Name"] = {
							["Input"] = "戈霍恩之嗣",
							["AsArray"] = {
								"戈霍恩之嗣", -- [1]
							},
						},
					},
					["color"] = {
						["g"] = 0,
						["b"] = 0.047058823529412,
					},
					["icon"] = "",
					["scale"] = 1.5,
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
				["healthborder"] = {
					["Offset"] = 2,
					["EdgeSize"] = 2,
					["texture"] = "TP_Border_Default",
				},
				["skullicon"] = {
					["scale"] = 12,
					["x"] = 45,
				},
				["raidicon"] = {
					["y"] = 10,
					["x"] = 0,
					["scale"] = 25,
					["y_hv"] = 0,
					["hpMarked"] = {
						["SKULL"] = {
							["r"] = 0.9843137254902,
							["g"] = 0.29019607843137,
							["b"] = 0,
						},
						["CROSS"] = {
							["b"] = 0.90980392156863,
							["g"] = 0.97647058823529,
							["r"] = 0.92156862745098,
						},
					},
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
					["y"] = 8,
					["shadow"] = false,
					["flags"] = "OUTLINE",
				},
				["spelltext"] = {
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
					["height"] = 52.875,
					["width"] = 154,
				},
				["eliteicon"] = {
					["scale"] = 12,
					["x"] = 55,
					["y"] = 0,
				},
				["castnostop"] = {
					["ShowInterruptShield"] = true,
					["ShowOverlay"] = false,
				},
			},
			["classWidget"] = {
				["y"] = 0,
				["x"] = -72,
				["scale"] = 20,
				["x_hv"] = -75,
				["theme"] = "clean",
				["y_hv"] = 0,
			},
			["BossModsWidget"] = {
				["FontSize"] = 20,
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
						["OFFTANK"] = 0,
						["LOW"] = 0,
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
