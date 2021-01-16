
TellMeWhenDB = {
	["Version"] = 84201,
	["profileKeys"] = {
		["余生请多指教 - 格雷迈恩"] = "余生请多指教 - 格雷迈恩",
		["熊熊雄 - 寒冰皇冠"] = "Magiccream - 格雷迈恩",
		["Magiccreamcn - 格雷迈恩"] = "Magiccreamcn - 格雷迈恩",
		["Magiccream - 格雷迈恩"] = "Magiccream - 格雷迈恩",
		["德国熊 - 寒冰皇冠"] = "德国熊 - 寒冰皇冠",
	},
	["global"] = {
		["TextLayouts"] = {
			["icon1"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
			["bar2"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
		},
		["Groups"] = {
			{
				["Point"] = {
					["y"] = 107.39158520178,
					["x"] = -4.51704040416554,
					["point"] = "RIGHT",
					["relativePoint"] = "RIGHT",
				},
				["Scale"] = 1.76661658287048,
				["Role"] = 1,
				["EnabledSpecs"] = {
					[260] = false,
					[259] = false,
				},
				["Columns"] = 3,
				["Icons"] = {
					{
						["CLEUEvents"] = {
							["SWING_DAMAGE"] = true,
						},
						["Type"] = "cleu",
						["CLEUDur"] = 10,
						["Name"] = "普攻计数",
						["Events"] = {
							{
								["Type"] = "Counter",
								["Counter"] = "k",
								["Event"] = "OnCLEUEvent",
							}, -- [1]
							["n"] = 1,
						},
						["GUID"] = "TMW:icon:1NgZ514JIFq2",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "icon1",
								["Texts"] = {
									"", -- [1]
									"[Counter(\"K\")]", -- [2]
								},
							},
						},
						["CustomTex"] = "196912",
						["States"] = {
							{
							}, -- [1]
							{
								["Alpha"] = 1,
							}, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["FakeHidden"] = true,
						["SourceUnit"] = "player",
						["Enabled"] = true,
					}, -- [1]
					{
						["CLEUEvents"] = {
							["SPELL_ENERGIZE"] = true,
						},
						["Type"] = "cleu",
						["CLEUDur"] = 1,
						["Name"] = "阴影技巧",
						["Events"] = {
							{
								["Type"] = "Counter",
								["CounterAmt"] = 0,
								["Counter"] = "k",
								["CounterOperation"] = "=",
								["Event"] = "OnShow",
							}, -- [1]
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnCLEUEvent",
								["Infinite"] = true,
							}, -- [2]
							["n"] = 2,
						},
						["GUID"] = "TMW:icon:1NgZ514StO=K",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "icon1",
								["Texts"] = {
									"", -- [1]
									"[Counter(\"K\")]", -- [2]
								},
							},
						},
						["CustomTex"] = "暗影技巧",
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["FakeHidden"] = true,
						["SourceUnit"] = "player",
						["Enabled"] = true,
					}, -- [2]
					{
						["Icons"] = {
							"TMW:icon:1NgZ514JIFq2", -- [1]
						},
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [3]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [4]
				},
				["Name"] = "阴影技巧计数器",
				["GUID"] = "TMW:group:1NgiUI3miskG",
			}, -- [1]
			{
				["Icons"] = {
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [1]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [2]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [3]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [4]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [5]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [6]
				},
			}, -- [2]
			{
				["Icons"] = {
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [1]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [2]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [3]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [4]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [5]
					{
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [6]
				},
			}, -- [3]
		},
		["AllowCombatConfig"] = true,
		["ReceiveComm"] = false,
		["HelpSettings"] = {
			["ICON_DURS_FIRSTSEE"] = true,
			["SUG_FIRSTHELP"] = true,
			["SCROLLBAR_DROPDOWN"] = true,
			["ICON_POCKETWATCH_FIRSTSEE"] = true,
			["CNDT_ANDOR_FIRSTSEE"] = true,
			["ICON_EXPORT_DOCOPY"] = true,
		},
		["NumGroups"] = 1,
	},
	["profiles"] = {
		["余生请多指教 - 格雷迈恩"] = {
			["DrawEdge"] = true,
			["Version"] = 84201,
			["ForceNoBlizzCC"] = true,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Role"] = 1,
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 0.00018310546875,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Columns"] = 3,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[266] = false,
						[102] = false,
						[104] = false,
						[265] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "爆燃",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "献祭",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "灭杀",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1PSptpV7urXB",
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["Enabled"] = true,
							["Name"] = "浩劫",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["Name"] = "毁灭s主要",
				}, -- [1]
				{
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "灵魂收割",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "混沌燃烧",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "灼疗主人",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "黑暗契约",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "永恒斗争",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "不灭决心",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Role"] = 1,
					["Name"] = "毁灭自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[266] = false,
						[102] = false,
						[104] = false,
						[265] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "灵魂榨取",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend] ", -- [2]
									},
								},
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "player; nameplate 1-30",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "浩劫",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "奥蕾塞丝的高温",
							["CustomTex"] = "205675",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "强化生命分流",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "恶魔之力",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["CustomTex"] = "196099",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "塞露布拉的暗影; 塞露布拉的星光",
							["OnlyMine"] = true,
							["CustomTex"] = "241835",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "恶魔法阵",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
					},
					["Role"] = 1,
					["Name"] = "毁灭目标debuff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[266] = false,
						[102] = false,
						[104] = false,
						[265] = false,
					},
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [3]
				{
					["GUID"] = "TMW:group:1PSqgB4X61gn",
					["Role"] = 1,
					["Name"] = "痛苦s主要",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[266] = false,
						[102] = false,
						[267] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "痛楚",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "腐蚀术",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "EITHER",
							["Unit"] = "target; player",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "诡异魅影; 灵魂收割",
							["CustomTex"] = "196098",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "腐蚀之种; 生命虹吸",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 3.05175781250e-005,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [4]
				{
					["GUID"] = "TMW:group:1PSqjlmIR3JQ",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "被折磨的幽魂",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["CustomTex"] = "216695",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["Name"] = "逆风收割者",
							["CustomTex"] = "216708",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "恶魔之速",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "吞噬之怒",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "延绵恐惧",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["GUID"] = "TMW:icon:1Pon0M9wQzND",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "强化生命分流",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "不灭决心",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 1,
					["Name"] = "痛苦自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[266] = false,
						[102] = false,
						[267] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1PSqqGgc7PmQ",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend] ",
									},
								},
							},
							["Enabled"] = true,
							["Name"] = "灵魂榨取",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "233490",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "233496",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "233497",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "233498",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "233499",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "恶魔法阵",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 1,
					["Name"] = "痛苦目标debuff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[266] = false,
						[102] = false,
						[267] = false,
					},
					["Point"] = {
						["y"] = 55.0000038146973,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PSsr=AFHle6",
					["Role"] = 1,
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 3.05175781250e-005,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Columns"] = 2,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[265] = false,
						[102] = false,
						[104] = false,
						[267] = false,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "pet",
							["Name"] = "恶魔增效",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "末日降临",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "pet",
							["Name"] = "恶魔增效",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["Name"] = "丛林之魂; 化身：生命之树",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["Name"] = "愈合",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["Name"] = "恶魔s主要",
				}, -- [7]
				{
					["GUID"] = "TMW:group:1PSsuCK5pkNG",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["Name"] = "魔性征召",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "暗影启迪",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Type"] = "guardian",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "野生小鬼",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["Name"] = "塞纳里奥结界; 塞纳里奥结界",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "激活",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "树皮术",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "不灭决心",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 1,
					["Name"] = "恶魔自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[265] = false,
						[102] = false,
						[104] = false,
						[267] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [8]
				{
					["GUID"] = "TMW:group:1PSsu1pzr7Uw",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["Type"] = "buff",
							["Name"] = "灵魂榨取",
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "guardian",
							["ShowTimerText"] = true,
							["Unit"] = "pet",
							["Name"] = "野生小鬼; 野生小鬼",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "guardian",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["Name"] = "恐惧猎犬",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["Unit"] = "pet",
							["Name"] = "牺牲品",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "月火术",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "阳炎术",
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "恶魔法阵",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 1,
					["Name"] = "恶魔目标hot",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[265] = false,
						[102] = false,
						[104] = false,
						[267] = false,
					},
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [9]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Locked"] = true,
					["Name"] = "个人触发Buff",
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "爆燃冲刺; 黑暗契约",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ICONFLASH",
									["AnimColor"] = "cdff0000",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["Name"] = "抗魔联军的调和; 抗魔联军的调和; 抗魔联军的调和",
							["CustomTex"] = "242583",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["EnableStacks"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["OnlyInBags"] = true,
							["Name"] = "涨潮; 苦痛之矛; 邪罪契约; 恶魔代价",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "暗影大师; 蜂拥之影; 暗影打击",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["GUID"] = "TMW:icon:1PVpSt5Sl_k4",
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["Enabled"] = true,
							["Name"] = "延时之力药水",
							["CustomTex"] = "229206",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1Pogo6GcTZiR", -- [1]
								"TMW:icon:1PoJH68NehSb", -- [2]
							},
							["CustomTex"] = "208052",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["GUID"] = "TMW:icon:1PVpSt5DLZX5",
							["OnlyMine"] = true,
							["Name"] = "灵魂碎片",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"[SoulShards]", -- [2]
									},
								},
							},
							["Enabled"] = true,
							["Type"] = "conditionicon",
							["CustomTex"] = "138556",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
					},
					["Point"] = {
						["y"] = 115,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [10]
				{
					["GUID"] = "TMW:group:1PohxwPUhnSL",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Locked"] = true,
					["Name"] = "个人技能",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "作茧缚命",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["ClockGCD"] = true,
							["Type"] = "buff",
							["Name"] = "守护之魂",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "痛苦压制",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "牺牲祝福",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "铁木树皮",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "保护祝福; 破咒祝福",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "狂奔怒吼; 狂奔怒吼",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Point"] = {
						["y"] = 145,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [11]
				{
					["GUID"] = "TMW:group:1Pohxwj973AE",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Locked"] = true,
					["Name"] = "团队技能",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "嗜血; 时间扭曲; 暴怒之鼓; 虚空之风; 狂怒战鼓; 远古狂乱; 高山战鼓",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["Unit"] = "player; t",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "命令怒吼",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "先祖护佑图腾",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "灵魂链接图腾",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "真言术：障",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "光环掌握",
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "幻影打击",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["Unit"] = "player; target",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Point"] = {
						["y"] = 175,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [12]
				{
					["GUID"] = "TMW:group:1PoJH68Kkkhl",
					["Columns"] = 6,
					["Scale"] = 1.7,
					["Locked"] = true,
					["Name"] = "塞弗斯的秘密",
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["GUID"] = "TMW:icon:1Pogo6GcTZiR",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnHide",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Enabled"] = true,
							["Name"] = "塞弗斯的秘密",
							["CustomTex"] = "208052",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["GUID"] = "TMW:icon:1PoJH68NehSb",
							["ShowTimer"] = true,
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyEquipped"] = true,
							["Type"] = "icd",
							["FakeHidden"] = true,
							["Name"] = "塞弗斯的秘密: 30",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5.8,
									["Event"] = "OnFinish",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "塞弗斯的秘密",
									["Type"] = "ITEMEQUIPPED",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "208052",
							["OnlyInBags"] = true,
						}, -- [6]
					},
					["Point"] = {
						["y"] = -106.530162535274,
						["x"] = 0.225578449723556,
						["point"] = "TOPRIGHT",
						["relativePoint"] = "TOPRIGHT",
					},
				}, -- [13]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
				}, -- [14]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
				}, -- [15]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [16]
			},
			["NumGroups"] = 13,
			["CodeSnippets"] = {
				["n"] = 1,
			},
		},
		["Magiccreamcn - 格雷迈恩"] = {
			["DrawEdge"] = true,
			["Version"] = 84201,
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Role"] = 1,
					["Name"] = "猫D主要",
					["Locked"] = true,
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 0.000152587890625,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "野蛮咆哮",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "斜掠",
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "割裂",
							["Unit"] = "target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "痛击",
							["Unit"] = "target",
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "掠食者的迅捷",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Name"] = "血腥爪击; 火红割裂者",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["OnlyMine"] = true,
							["Name"] = "猛虎之怒",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "狂暴; 化身：丛林之王",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "节能施法",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["CustomTex"] = "210655",
							["Icons"] = {
								"TMW:icon:1Ppig=lc8aFb", -- [1]
								"TMW:icon:1Ppig=lgUPEg", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "生存本能",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Role"] = 1,
					["Name"] = "猫D自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "阿莎曼的撕扯",
							["CustomTex"] = "210705",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["GUID"] = "TMW:icon:1PSptpV7urXB",
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["Enabled"] = true,
							["Name"] = "阿莎曼的狂乱",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "月火术",
							["Unit"] = "target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "割碎",
							["Unit"] = "target",
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "无尽毒药",
							["CustomTex"] = "242497",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "血之气息",
							["CustomTex"] = "210663",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "猎人冲动",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
					},
					["Role"] = 1,
					["Name"] = "猫D目标debuff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [3]
				{
					["GUID"] = "TMW:group:1PSqgB4X61gn",
					["Role"] = 4,
					["Name"] = "熊T主要",
					["Locked"] = true,
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 3.05175781250e-005,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "铁鬃",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "痛击",
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "月火术",
							["Unit"] = "target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "狂暴回复",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
				}, -- [4]
				{
					["GUID"] = "TMW:group:1PSqjlmIR3JQ",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "沉睡者之怒",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "生存本能",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "树皮术",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾露恩的卫士",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "血污毛皮",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "大地守卫者",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "热血咆哮",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1PSqqGgc7PmQ",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "低吼",
							["Unit"] = "target",
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "淤血",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "星河守护者",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "化身：乌索克的守护者",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["OnlyMine"] = true,
							["Name"] = "鬃毛倒竖",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Name"] = "血腥之爪",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 4,
					["Name"] = "熊T目标debuff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PSsr=AFHle6",
					["Role"] = 2,
					["Columns"] = 5,
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 3.05175781250e-005,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Locked"] = true,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "回春术",
							["Unit"] = "target",
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "回春术（萌芽）; 春暖花开",
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "生命绽放",
							["Unit"] = "target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "愈合",
							["Unit"] = "target",
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "野性成长",
							["Unit"] = "target",
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
					["Name"] = "奶N主要",
				}, -- [7]
				{
					["GUID"] = "TMW:group:1PSsuCK5pkNG",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["OnlyMine"] = true,
							["Name"] = "丛林之魂",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "化身：生命之树",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "大德鲁伊的力量",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["OnlyMine"] = true,
							["Name"] = "节能施法",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["OnlyMine"] = true,
							["Name"] = "加尼尔的精华",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "激活",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "树皮术",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Role"] = 2,
					["Name"] = "奶N自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [8]
				{
					["GUID"] = "TMW:group:1PSsu1pzr7Uw",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "totem",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "栽培",
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "百花盛放",
							["CustomTex"] = "242315",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "丰饶",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "塞纳里奥结界; 塞纳里奥结界",
							["Unit"] = "target",
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "月火术",
							["Unit"] = "target",
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "阳炎术",
							["Unit"] = "target",
						}, -- [7]
					},
					["Role"] = 2,
					["Name"] = "奶N目标hot",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [9]
				{
					["GUID"] = "TMW:group:1PTG0tUByGo5",
					["Role"] = 1,
					["Name"] = "鸟D主要",
					["Locked"] = true,
					["Point"] = {
						["y"] = 47.7750053405762,
						["x"] = 3.05175781250e-005,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "月火术",
							["Unit"] = "target",
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "月光增效",
							["CustomTex"] = "164547",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "日光增效",
							["CustomTex"] = "164545",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "阳炎术",
							["Unit"] = "target",
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
					},
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
				}, -- [10]
				{
					["GUID"] = "TMW:group:1PTG53mjKRE8",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "星辰坠落",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "化身：艾露恩之眷",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾露恩的祝福; 安瑟的祝福; 艾露恩的战士",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "星辰能量",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾露恩之怒",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "树皮术",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Role"] = 1,
					["Name"] = "鸟D自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
				}, -- [11]
				{
					["GUID"] = "TMW:group:1PTG7OmiRQok",
					["Columns"] = 7,
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "新月",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "星界增效",
							["Unit"] = "target",
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "鸟D目标debuff",
					["Locked"] = true,
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["OnlyInCombat"] = true,
				}, -- [12]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Columns"] = 7,
					["Point"] = {
						["y"] = 115,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Locked"] = true,
					["Name"] = "个人触发Buff",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "潜行",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "抗魔联军的调和; 抗魔联军的调和; 抗魔联军的调和",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "242583",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["EnableStacks"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "哀嚎之魂; 地狱火皮肤; 恶魔活力; 海洋的拥抱; 指挥恐怖映像",
							["OnlyInBags"] = true,
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "塞弗斯的秘密; 欺诈者的狡诈; 造物者的恩赐; 增速",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["GUID"] = "TMW:icon:1PVpSt5Sl_k4",
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["Enabled"] = true,
							["Name"] = "延时之力药水",
							["CustomTex"] = "229206",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["GUID"] = "TMW:icon:1PVpSt5_uqrg",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Enabled"] = true,
							["Name"] = "急奔",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["GUID"] = "TMW:icon:1PVpSt5DLZX5",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]", -- [2]
									},
								},
							},
							["OnlyMine"] = true,
							["Enabled"] = true,
							["Name"] = "野性位移",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
					},
					["Scale"] = 1.7,
				}, -- [13]
				{
					["GUID"] = "TMW:group:1PohxwPUhnSL",
					["Columns"] = 7,
					["Point"] = {
						["y"] = 145,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Locked"] = true,
					["Name"] = "个人技能",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "作茧缚命",
							["Unit"] = "player; target",
						}, -- [1]
						{
							["ClockGCD"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["Name"] = "守护之魂",
							["Unit"] = "player; target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "痛苦压制",
							["Unit"] = "player; target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "牺牲祝福",
							["Unit"] = "player; target",
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "铁木树皮",
							["Unit"] = "player; target",
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "保护祝福; 破咒祝福",
							["Unit"] = "player; target",
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Name"] = "狂奔怒吼; 狂奔怒吼",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Scale"] = 1.7,
				}, -- [14]
				{
					["GUID"] = "TMW:group:1Pohxwj973AE",
					["Columns"] = 7,
					["Point"] = {
						["y"] = 175,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Locked"] = true,
					["Name"] = "团队技能",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "嗜血; 时间扭曲; 暴怒之鼓; 虚空之风; 狂怒战鼓; 远古狂乱; 高山战鼓",
							["Unit"] = "player; t",
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "命令怒吼",
							["Unit"] = "player; target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "先祖护佑图腾",
							["Unit"] = "player; target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "灵魂链接图腾",
							["Unit"] = "player; target",
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "真言术：障",
							["Unit"] = "player; target",
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "光环掌握",
							["Unit"] = "player; target",
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "幻影打击",
							["Unit"] = "player; target",
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Scale"] = 1.7,
				}, -- [15]
				{
					["GUID"] = "TMW:group:1Ppig=lKhJSe",
					["Point"] = {
						["y"] = -120.548854735483,
						["x"] = -0.313166701332944,
						["point"] = "TOPRIGHT",
						["relativePoint"] = "TOPRIGHT",
					},
					["Scale"] = 1.5,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["GUID"] = "TMW:icon:1Ppig=lgUPEg",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "阿莎曼的庇护",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnHide",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "210655",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1Ppig=lc8aFb",
							["ShowTimer"] = true,
							["FakeHidden"] = true,
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Type"] = "icd",
							["Name"] = "阿莎曼的庇护: 30",
							["Conditions"] = {
								{
									["Name"] = "猎豹形态",
									["Type"] = "STANCE",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "210655",
							["States"] = {
								{
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["Locked"] = true,
				}, -- [16]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [17]
			},
			["NumGroups"] = 16,
			["ForceNoBlizzCC"] = true,
		},
		["Magiccream - 格雷迈恩"] = {
			["ForceNoBlizzCC"] = true,
			["Version"] = 84201,
			["NumGroups"] = 7,
			["DrawEdge"] = true,
			["Groups"] = {
				{
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Name"] = "敏锐主要",
					["Icons"] = {
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "敏锐大师; 大师",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [1]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "大师刺客的决意",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "235027",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [2]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "暗影之舞",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [3]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "夜刃",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Point"] = {
						["y"] = 47.7750053405762,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
						["x"] = 0.000152587890625,
					},
				}, -- [1]
				{
					["Scale"] = 1.7,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Columns"] = 7,
					["Name"] = "敏锐自身buff",
					["Icons"] = {
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "死亡符记",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [1]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "终结技：刺骨",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "197496",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [2]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "终结技：夜刃",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "197498",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [3]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "暗影之刃",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [4]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "佯攻",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [5]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "暗影斗篷",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [6]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "闪避",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
					},
					["Point"] = {
						["y"] = 85,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
						["x"] = -173,
					},
				}, -- [2]
				{
					["Scale"] = 1.7,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Columns"] = 7,
					["Name"] = "敏锐目标debuff",
					["Icons"] = {
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "恐惧魔王的谎言",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [1]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "袖剑连击",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1PSptpV7urXB",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [2]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "进食狂热",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "242705",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [3]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "赤喉之咬",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [4]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1NgZ514StO=K", -- [1]
								"TMW:icon:1NgZ514JIFq2", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [5]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "肾击",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [6]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "黑暗之拥; 猩红之瓶",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
					},
					["Point"] = {
						["y"] = 55,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
						["x"] = -173,
					},
				}, -- [3]
				{
					["Scale"] = 1.7,
					["Locked"] = true,
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Columns"] = 7,
					["Name"] = "个人触发Buff",
					["Icons"] = {
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "潜行; 消失",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [1]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "抗魔联军的调和; 抗魔联军的调和; 抗魔联军的调和",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "242583",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [2]
						{
							["Type"] = "buff",
							["OnlyInBags"] = true,
							["ShowTimerText"] = true,
							["Name"] = "敏捷",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["EnableStacks"] = true,
							["OnlyMine"] = true,
						}, -- [3]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "恶魔活力",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [4]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "延时之力药水",
							["GUID"] = "TMW:icon:1PVpSt5Sl_k4",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["CustomTex"] = "229206",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [5]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "疾跑",
							["GUID"] = "TMW:icon:1PVpSt5_uqrg",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [6]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "嫁祸诀窍; 嫁祸诀窍",
							["GUID"] = "TMW:icon:1PVpSt5DLZX5",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]", -- [2]
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
					},
					["Point"] = {
						["y"] = 115,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
						["x"] = -173,
					},
				}, -- [4]
				{
					["Scale"] = 1.7,
					["Locked"] = true,
					["GUID"] = "TMW:group:1PohxwPUhnSL",
					["Columns"] = 7,
					["Name"] = "个人技能",
					["Icons"] = {
						{
							["Unit"] = "player; target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "作茧缚命",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [1]
						{
							["Unit"] = "player; target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "守护之魂",
							["ClockGCD"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [2]
						{
							["Unit"] = "player; target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "痛苦压制",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [3]
						{
							["Unit"] = "player; target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "牺牲祝福",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [4]
						{
							["Unit"] = "player; target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "铁木树皮",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [5]
						{
							["Unit"] = "player; target",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "保护祝福; 破咒祝福",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [6]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "狂奔怒吼; 狂奔怒吼",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [7]
					},
					["Point"] = {
						["y"] = 145,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
						["x"] = -173,
					},
				}, -- [5]
				{
					["Scale"] = 1.7,
					["Locked"] = true,
					["GUID"] = "TMW:group:1Pohxwj973AE",
					["Columns"] = 7,
					["Name"] = "团队技能",
					["Icons"] = {
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "嗜血; 时间扭曲; 暴怒之鼓; 虚空之风; 狂怒战鼓; 远古狂乱; 高山战鼓",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [1]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "命令怒吼",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [2]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "先祖护佑图腾",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [3]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "灵魂链接图腾",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [4]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "真言术：障",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [5]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "光环掌握",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [6]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "幻影打击",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
					},
					["Point"] = {
						["y"] = 175,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
						["x"] = -173,
					},
				}, -- [6]
				{
					["Scale"] = 2.65,
					["Locked"] = true,
					["GUID"] = "TMW:group:1PxZTZRPmxpU",
					["Columns"] = 1,
					["Name"] = "装死",
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "装死",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 1.5,
									["Animation"] = "SCREENFLASH",
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
					["Point"] = {
						["y"] = -53.6688114510002,
						["point"] = "RIGHT",
						["relativePoint"] = "RIGHT",
						["x"] = -81,
					},
				}, -- [7]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [8]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [9]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [10]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [11]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [12]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [13]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [14]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [7]
					},
				}, -- [15]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
				}, -- [16]
			},
			["Locked"] = true,
		},
		["德国熊 - 寒冰皇冠"] = {
			["Version"] = 84201,
			["Groups"] = {
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [4]
					},
					["GUID"] = "TMW:group:1Pw=Kr18vzuv",
				}, -- [1]
			},
		},
	},
}