
DCT_SAVE_PERCHAR = {
	["DCT_SHOWHITCRIT"] = {
		["show"] = {
			"-#am", -- [1]
			"-#am (#bt)", -- [2]
		},
		["per"] = 0,
		["fEff"] = 2,
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWSPECTARGETBUFF"] = {
		["show"] = {
			"*-#sn-*", -- [1]
			"O_O #sn", -- [2]
		},
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWDRAIN"] = {
		["color"] = {
			0.2, -- [1]
			0.2, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"-#am #pt", -- [1]
		},
	},
	["DCT_SHOWSPELLFAILED"] = {
		["show"] = {
			"#sn 未命中!", -- [1]
		},
		["fEff"] = 2,
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SPECBUFF"] = {
	},
	["DCT_SHOWSPELLSUCCESS"] = {
		["show"] = {
			"#sn! 命中!", -- [1]
		},
		["fEff"] = 2,
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWDEBUFF"] = {
		["color"] = {
			1, -- [1]
			0.2, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"不良效果: #sn", -- [1]
		},
	},
	["DCT_SHOWHEAL"] = {
		["show"] = {
			"+#am #sn", -- [1]
			"+#am {#oh} #sn", -- [2]
		},
		["per"] = 0,
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 3,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWSPECBUFFFADE"] = {
		["show"] = {
			"消失: #sn", -- [1]
			"#sn", -- [2]
		},
		["per"] = 3,
		["color"] = {
			0.8, -- [1]
			0.3, -- [2]
			0.3, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SSColor16"] = {
		["color"] = {
			0.4, -- [1]
			0.6, -- [2]
			0.9, -- [3]
		},
	},
	["DCT_SHOWIMMUNE"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWLOWMANA"] = {
		["show"] = {
			"魔法过低 #mp", -- [1]
		},
		["per"] = 40,
		["color"] = {
			0.3, -- [1]
			0.3, -- [2]
			1, -- [3]
		},
		["frame"] = 4,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "Sound\\Spells\\bind2_Impact_Base.wav",
	},
	["DCT_SHOWSPECTARGETDEBUFF"] = {
		["show"] = {
			"*-#sn-*", -- [1]
			"O_O #sn", -- [2]
		},
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWBUFFFADE"] = {
		["show"] = {
			"消失: #sn", -- [1]
			"#sn", -- [2]
		},
		["per"] = 3,
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWPARRY"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SPECSPELLSUCCESS"] = {
		["佯攻"] = 1,
	},
	["DCT_SHOWSPECTARGETBUFFFADE"] = {
		["show"] = {
			"*-#sn-*", -- [1]
			"O_O #sn", -- [2]
		},
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWPERIODICHEAL"] = {
		["show"] = {
			"+#am #sn", -- [1]
			"+#am {#oh} #sn", -- [2]
		},
		["per"] = 0,
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 3,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_CastBarWidth"] = 25,
	["DCT_SHOWFACTION"] = {
		["color"] = {
			0.4, -- [1]
			0.4, -- [2]
			1, -- [3]
		},
		["frame"] = 5,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0.4, -- [2]
				0.4, -- [3]
			}, -- [2]
		},
		["show"] = {
			"+#am #sn 声望", -- [1]
			"#c2-#am #sn 声望#ce", -- [2]
		},
	},
	["DCT_ScaleOnCrit"] = 0,
	["DCT_SHOWCP"] = {
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 3,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"#am 星", -- [1]
			"#c1**#ce满星#c1**#ce", -- [2]
		},
	},
	["DCT_SHOWSPELLCRIT"] = {
		["show"] = {
			"-#am #c1#sn#ce", -- [1]
			"-#am #c1#sn#ce (#bt)", -- [2]
		},
		["per"] = 0,
		["fEff"] = 2,
		["color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				0, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWLOWHEALTH"] = {
		["show"] = {
			"生命过低 #hp", -- [1]
		},
		["per"] = 40,
		["color"] = {
			1, -- [1]
			0.3, -- [2]
			0.3, -- [3]
		},
		["frame"] = 4,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "Sound\\Spells\\ShaysBell.wav",
	},
	["DCT_HealSelfNoneName"] = 0,
	["DCT_SHOWMISS"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWBUFFDOSE"] = {
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 5,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"叠加: #sn<#am>", -- [1]
			"减少: #sn<#am>", -- [2]
		},
	},
	["DCT_SHOWHIT"] = {
		["show"] = {
			"-#am", -- [1]
			"-#am (#bt)", -- [2]
		},
		["per"] = 0,
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [2]
		},
	},
	["DCT_SSC_SpellSchool"] = 1,
	["DCT_SHOWSPECBUFF"] = {
		["show"] = {
			"获得: #sn", -- [1]
			"#c1获得: #sn#ce", -- [2]
		},
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 4,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWSPELL"] = {
		["show"] = {
			"-#am #c1#sn#ce", -- [1]
			"-#am #c1#sn#ce (#bt)", -- [2]
		},
		["per"] = 0,
		["fEff"] = 2,
		["color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				0, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWACTIVE"] = {
		["fSizeCh"] = 4,
		["show"] = {
			"→#sn", -- [1]
		},
		["fSizeEn"] = 4,
		["fEff"] = 4,
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 0,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SPECTARGETBUFFFADE"] = {
	},
	["DCT_SPECSPELLFAILED"] = {
	},
	["DCT_SHOWDEBUFFDOSE"] = {
		["color"] = {
			1, -- [1]
			0.2, -- [2]
			0, -- [3]
		},
		["frame"] = 5,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"不良叠加: #sn<#am>", -- [1]
			"不良减少: #sn<#am>", -- [2]
		},
	},
	["DCT_ZeroHp_off"] = 1,
	["DCT_SHOWDEFLECT"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWDISPELLED"] = {
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"被驱散: #sn", -- [1]
			"被偷取: #sn", -- [2]
		},
	},
	["DCT_SHOWHONOR"] = {
		["color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 5,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"+#am 荣誉", -- [1]
		},
	},
	["DCT_SHOWCOMBATLEAVE"] = {
		["show"] = {
			"**离开战斗**", -- [1]
		},
		["fEff"] = 2,
		["color"] = {
			0.4, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 2,
		["colorEx"] = {
			{
				0, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_FRAME_CONFIG"] = {
		{
			["active"] = true,
			["param4"] = 50,
			["param5"] = -5,
			["param3"] = 225,
			["param1"] = 175,
			["aniType"] = 1,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 4,
			["param7"] = 1,
			["fCh"] = 4,
			["alpha"] = 100,
			["fEff"] = 1,
			["y"] = 0,
			["x"] = -20,
			["name"] = "",
			["fSizeCh"] = 18,
			["fSizeEn"] = 20,
			["param6"] = 30,
			["param2"] = 150,
			["anchor"] = 1,
		}, -- [1]
		{
			["active"] = true,
			["param4"] = 50,
			["param5"] = 0,
			["param3"] = 330,
			["param1"] = 65,
			["aniType"] = 1,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 4,
			["param7"] = 1,
			["fCh"] = 4,
			["alpha"] = 100,
			["anchor"] = 1,
			["y"] = 0,
			["x"] = 0,
			["name"] = "",
			["fEff"] = 1,
			["fSizeCh"] = 18,
			["fSizeEn"] = 20,
			["param6"] = 30,
			["param2"] = 100,
		}, -- [2]
		{
			["active"] = true,
			["param4"] = 50,
			["param5"] = 5,
			["param3"] = 330,
			["param1"] = 5,
			["aniType"] = 1,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 4,
			["param7"] = 1,
			["fCh"] = 4,
			["alpha"] = 100,
			["anchor"] = 1,
			["y"] = 0,
			["x"] = 20,
			["name"] = "",
			["fEff"] = 1,
			["fSizeCh"] = 18,
			["fSizeEn"] = 20,
			["param6"] = 30,
			["param2"] = 150,
		}, -- [3]
		{
			["active"] = true,
			["param4"] = 2,
			["param5"] = 1,
			["param3"] = 1,
			["param1"] = 3,
			["aniType"] = 3,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 3,
			["fCh"] = 3,
			["alpha"] = 100,
			["y"] = -60,
			["x"] = 0,
			["name"] = "",
			["anchor"] = 1,
			["fEff"] = 2,
			["fSizeCh"] = 24,
			["fSizeEn"] = 24,
			["param2"] = 3,
		}, -- [4]
		{
			["active"] = true,
			["param4"] = 1,
			["param5"] = 1,
			["param3"] = 1,
			["param1"] = 3,
			["aniType"] = 3,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 3,
			["fCh"] = 3,
			["alpha"] = 100,
			["y"] = -150,
			["x"] = 0,
			["name"] = "",
			["fEff"] = 2,
			["fSizeCh"] = 18,
			["fSizeEn"] = 18,
			["param2"] = 3,
			["anchor"] = 1,
		}, -- [5]
		{
			["active"] = true,
			["param4"] = 1,
			["param5"] = 1,
			["param3"] = 1,
			["param1"] = 3,
			["aniType"] = 3,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 3,
			["fCh"] = 3,
			["alpha"] = 100,
			["y"] = 200,
			["x"] = 0,
			["name"] = "",
			["fEff"] = 1,
			["fSizeCh"] = 15,
			["fSizeEn"] = 15,
			["param2"] = 4.5,
		}, -- [6]
		{
			["active"] = true,
			["param4"] = 0,
			["param5"] = 0,
			["param3"] = 1,
			["param1"] = 200,
			["aniType"] = 6,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 3,
			["fCh"] = 3,
			["alpha"] = 100,
			["anchor"] = 1,
			["y"] = 60,
			["x"] = 0,
			["name"] = "",
			["fEff"] = 1,
			["fSizeCh"] = 16,
			["fSizeEn"] = 18,
			["param6"] = 0,
			["param2"] = 2.5,
		}, -- [7]
		{
			["active"] = true,
			["param4"] = 0,
			["param5"] = 3,
			["param3"] = 1,
			["param1"] = 1.5,
			["aniType"] = 7,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 3,
			["fCh"] = 3,
			["alpha"] = 100,
			["anchor"] = 1,
			["y"] = 80,
			["x"] = 0,
			["name"] = "",
			["fEff"] = 1,
			["fSizeCh"] = 26,
			["fSizeEn"] = 26,
			["param6"] = 0,
			["param2"] = 1,
		}, -- [8]
		{
			["active"] = true,
			["param4"] = -40,
			["param5"] = 0,
			["param3"] = 1,
			["param1"] = 100,
			["aniType"] = 6,
			["speed"] = 100,
			["angle"] = 0,
			["fEn"] = 3,
			["fCh"] = 3,
			["alpha"] = 100,
			["anchor"] = 1,
			["y"] = 80,
			["x"] = -80,
			["name"] = "",
			["fEff"] = 1,
			["fSizeCh"] = 16,
			["fSizeEn"] = 18,
			["param6"] = 0,
			["param2"] = 2,
		}, -- [9]
		{
			["active"] = false,
		}, -- [10]
		{
			["active"] = false,
		}, -- [11]
		{
			["active"] = false,
		}, -- [12]
		{
			["active"] = false,
		}, -- [13]
		{
			["active"] = false,
		}, -- [14]
		{
			["active"] = false,
		}, -- [15]
	},
	["DCT_SSColor4"] = {
		["color"] = {
			1, -- [1]
			0.3, -- [2]
			0, -- [3]
		},
	},
	["DCT_SHOWKILLBLOW"] = {
		["show"] = {
			"击杀!", -- [1]
		},
		["fEff"] = 3,
		["color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SSC_Number"] = 0,
	["DCT_SSColor8"] = {
		["color"] = {
			0.5, -- [1]
			0.7, -- [2]
			0.2, -- [3]
		},
	},
	["DCT_SHOWREFLECT"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SPECBUFFFADE"] = {
	},
	["DCT_SaveVer"] = 2011,
	["DCT_SHOWRESIST"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWBLOCK"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SSColor2"] = {
		["color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
		},
	},
	["DCT_SHOWCOOLDOWN"] = {
		["show"] = {
			"可用:#sn", -- [1]
		},
		["fEff"] = 3,
		["color"] = {
			0.5, -- [1]
			0.5, -- [2]
			1, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWSHIELD"] = {
		["show"] = {
			"-#am #sn", -- [1]
		},
		["per"] = 0,
		["color"] = {
			1, -- [1]
			0.5, -- [2]
			1, -- [3]
		},
		["frame"] = 3,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWABSORB"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SPECCOOLDOWN"] = {
	},
	["DCT_SSColor64"] = {
		["color"] = {
			0, -- [1]
			1, -- [2]
			1, -- [3]
		},
	},
	["DCT_SHOWPERIODIC"] = {
		["show"] = {
			"-#am #sn", -- [1]
			"-#am #sn (#bt)", -- [2]
		},
		["per"] = 0,
		["color"] = {
			1, -- [1]
			0, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWSPECTARGETDEBUFFFADE"] = {
		["show"] = {
			"*-#sn-*", -- [1]
			"O_O #sn", -- [2]
		},
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SSC_Spell"] = 0,
	["DCT_SHOWSPECDEBUFFFADE"] = {
		["color"] = {
			0.8, -- [1]
			0.3, -- [2]
			0.3, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"消失: #sn", -- [1]
		},
	},
	["DCT_SSColor32"] = {
		["color"] = {
			1, -- [1]
			0.4, -- [2]
			1, -- [3]
		},
	},
	["DCT_SHOWEXTRAATTACKS"] = {
		["show"] = {
			"#sn x#am", -- [1]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 5,
		["sound"] = "",
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWENVIRONMENTAL"] = {
		["color"] = {
			1, -- [1]
			0, -- [2]
			0, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"-#am #et", -- [1]
		},
	},
	["DCT_SHOWPOWER"] = {
		["show"] = {
			"+#am #pt", -- [1]
		},
		["per"] = 0,
		["color"] = {
			1, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 3,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
	},
	["DCT_SHOWDODGE"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_SHOWBUFF"] = {
		["color"] = {
			0, -- [1]
			1, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["show"] = {
			"获得: #sn", -- [1]
		},
	},
	["DCT_SHOWDEBUFFFADE"] = {
		["color"] = {
			1, -- [1]
			0.5, -- [2]
			0, -- [3]
		},
		["frame"] = 0,
		["colorEx"] = {
			{
				1, -- [1]
				0.2, -- [2]
				0.2, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [2]
		},
		["show"] = {
			"消失:#c1#sn#ce", -- [1]
		},
	},
	["DCT_SHOWCOMBAT"] = {
		["show"] = {
			"**进入战斗**", -- [1]
		},
		["fEff"] = 2,
		["color"] = {
			1, -- [1]
			0.4, -- [2]
			0, -- [3]
		},
		["frame"] = 2,
		["colorEx"] = {
			{
				0, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				1, -- [2]
				1, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_ManaSelfNoneName"] = 0,
	["DCT_SSColor1"] = {
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
	},
	["DCT_PRETEXTNAME"] = "none",
	["DCT_EnglishInfo"] = 0,
	["DCT_Enable"] = 1,
	["DCT_SPECTARGETBUFF"] = {
	},
	["DCT_SHOWEVADE"] = {
		["show"] = {
			"#ms", -- [1]
			"#ms #c1(#sn)#ce", -- [2]
		},
		["color"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
		},
		["frame"] = 1,
		["colorEx"] = {
			{
				1, -- [1]
				1, -- [2]
				0, -- [3]
			}, -- [1]
			{
				1, -- [1]
				0, -- [2]
				0, -- [3]
			}, -- [2]
		},
		["sound"] = "",
	},
	["DCT_UseCastBar"] = 1,
}
