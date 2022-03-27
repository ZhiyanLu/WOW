
DCTSA_CONFIG = {
	["DCTSA_SAVE"] = {
		["DCTSA_FILTER_CASTSUCCESS_SORT"] = {
			["buffer"] = {
				"尖啸", -- [1]
				"斜掠", -- [2]
			},
			["filt"] = {
			},
		},
		["DCTSA_FILTER_CASTSUCCESS"] = {
			["buffer"] = {
				["斜掠"] = 0,
				["尖啸"] = 0,
			},
			["filt"] = {
			},
		},
		["DCTSA_SAVEDATA_VER"] = 2001,
		["DCTSA_FILTER_BUFF_SORT"] = {
			["buffer"] = {
			},
			["filt"] = {
			},
		},
		["DCTSA_FILTER_CASTSTART"] = {
			["buffer"] = {
				["瘟疫之种"] = 0,
			},
			["filt"] = {
			},
		},
		["DCTSA_FILTER_DISPELLED"] = {
			["buffer"] = {
			},
			["filt"] = {
			},
		},
		["DCTSA_FILTER_DISPELLED_SORT"] = {
			["buffer"] = {
			},
			["filt"] = {
			},
		},
		["DCTSA_FILTER_BUFF"] = {
			["buffer"] = {
			},
			["filt"] = {
			},
		},
		["DCTSA_FILTER_CASTSTART_SORT"] = {
			["buffer"] = {
				"瘟疫之种", -- [1]
			},
			["filt"] = {
			},
		},
		["PROFILE"] = {
			["1"] = {
				["DCTSA_SHOW_BUFFGET_FOCUS"] = {
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce获得了#c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SSC_Spell"] = 1,
				["DCTSA_SHOW_CASTSTART_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce施放 #c2#sn#ce", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_CASTSTART"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce施放 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SAVEDATA_VER"] = 2001,
				["DCTSA_SHOW_CASTSUCCESS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 0,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi 对[#di]#ce施放了 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_ENABLE_ONCOMBAT"] = 0,
				["DCTSA_ENABLE_ONPVP"] = 1,
				["DCTSA_SHOW_DISPELLED_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce#c2#sn#ce被驱散", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_BUFFFADE"] = {
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce#c2#sn#ce消失了", -- [1]
					},
				},
				["DCTSA_FILTER_ENABLE"] = 0,
				["DCTSA_SHOW_BUFFGET"] = {
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce获得了#c2#sn#ce", -- [1]
					},
				},
				["DCTSA_FILTER_MODE"] = 0,
				["DCTSA_SHOW_BUFFGET_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce获得了#c2#sn#ce", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_CASTTIME"] = 1,
				["DCTSA_SHOW_CASTSTART_FOCUS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce施放 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SHOW_CASTSUCCESS_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★对[#di]#ce施放了 #c2#sn#ce", -- [1]
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
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_DISPELLED"] = {
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce#c2#sn#ce被驱散", -- [1]
					},
				},
				["DCTSA_CASTSUCCESS_ONLYTOYOU"] = 1,
				["DCTSA_SHOW_DISPELLED_FOCUS"] = {
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce #c2#sn#ce被驱散", -- [1]
					},
				},
				["DCTSA_MERGE_CASTSUCCESS_AND_BUFFGET"] = 1,
				["DCTSA_SHOW_BUFFFADE_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce#c2#sn#ce消失了", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_ENABLE"] = 0,
				["DCTSA_SHOW_BUFFFADE_FOCUS"] = {
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce #c2#sn#ce消失了", -- [1]
					},
				},
				["DCTSA_SHOW_CASTSUCCESS_FOCUS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 0,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇ 对[#di]#ce施放了 #c2#sn#ce", -- [1]
					},
				},
			},
			["备份"] = {
				["DCTSA_SHOW_BUFFGET_FOCUS"] = {
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce获得了#c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SSC_Spell"] = 1,
				["DCTSA_SHOW_CASTSTART_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce施放 #c2#sn#ce", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_CASTSTART"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce施放 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SAVEDATA_VER"] = 2001,
				["DCTSA_SHOW_CASTSUCCESS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 0,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi 对[#di]#ce施放了 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_ENABLE_ONCOMBAT"] = 0,
				["DCTSA_ENABLE_ONPVP"] = 1,
				["DCTSA_SHOW_DISPELLED_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce#c2#sn#ce被驱散", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_BUFFFADE"] = {
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce#c2#sn#ce消失了", -- [1]
					},
				},
				["DCTSA_FILTER_ENABLE"] = 0,
				["DCTSA_SHOW_BUFFGET"] = {
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce获得了#c2#sn#ce", -- [1]
					},
				},
				["DCTSA_FILTER_MODE"] = 0,
				["DCTSA_SHOW_BUFFGET_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce获得了#c2#sn#ce", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_CASTTIME"] = 1,
				["DCTSA_SHOW_CASTSTART_FOCUS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce施放 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SHOW_CASTSUCCESS_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★对[#di]#ce施放了 #c2#sn#ce", -- [1]
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
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_DISPELLED"] = {
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce#c2#sn#ce被驱散", -- [1]
					},
				},
				["DCTSA_CASTSUCCESS_ONLYTOYOU"] = 1,
				["DCTSA_SHOW_DISPELLED_FOCUS"] = {
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce #c2#sn#ce被驱散", -- [1]
					},
				},
				["DCTSA_MERGE_CASTSUCCESS_AND_BUFFGET"] = 1,
				["DCTSA_SHOW_BUFFFADE_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce#c2#sn#ce消失了", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_ENABLE"] = 0,
				["DCTSA_SHOW_BUFFFADE_FOCUS"] = {
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce #c2#sn#ce消失了", -- [1]
					},
				},
				["DCTSA_SHOW_CASTSUCCESS_FOCUS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 0,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇ 对[#di]#ce施放了 #c2#sn#ce", -- [1]
					},
				},
			},
			["备份2"] = {
				["DCTSA_SHOW_BUFFGET_FOCUS"] = {
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce获得了#c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SSC_Spell"] = 1,
				["DCTSA_SHOW_CASTSTART_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce施放 #c2#sn#ce", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_CASTSTART"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce施放 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SAVEDATA_VER"] = 2001,
				["DCTSA_SHOW_CASTSUCCESS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 0,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi 对[#di]#ce施放了 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_ENABLE_ONCOMBAT"] = 0,
				["DCTSA_ENABLE_ONPVP"] = 1,
				["DCTSA_SHOW_DISPELLED_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce#c2#sn#ce被驱散", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_BUFFFADE"] = {
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce#c2#sn#ce消失了", -- [1]
					},
				},
				["DCTSA_FILTER_ENABLE"] = 0,
				["DCTSA_SHOW_BUFFGET"] = {
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce获得了#c2#sn#ce", -- [1]
					},
				},
				["DCTSA_FILTER_MODE"] = 0,
				["DCTSA_SHOW_BUFFGET_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce获得了#c2#sn#ce", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0.35, -- [1]
						0.35, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_CASTTIME"] = 1,
				["DCTSA_SHOW_CASTSTART_FOCUS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce施放 #c2#sn#ce", -- [1]
					},
				},
				["DCTSA_SHOW_CASTSUCCESS_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★对[#di]#ce施放了 #c2#sn#ce", -- [1]
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
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_SHOW_DISPELLED"] = {
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1#oi#ce#c2#sn#ce被驱散", -- [1]
					},
				},
				["DCTSA_CASTSUCCESS_ONLYTOYOU"] = 1,
				["DCTSA_SHOW_DISPELLED_FOCUS"] = {
					["color"] = {
						0, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce #c2#sn#ce被驱散", -- [1]
					},
				},
				["DCTSA_MERGE_CASTSUCCESS_AND_BUFFGET"] = 1,
				["DCTSA_SHOW_BUFFFADE_YOURTARGET"] = {
					["show"] = {
						"#ic#c1★#ce#c2#sn#ce消失了", -- [1]
					},
					["fEff"] = 2,
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							0, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
				},
				["DCTSA_ENABLE"] = 0,
				["DCTSA_SHOW_BUFFFADE_FOCUS"] = {
					["color"] = {
						0, -- [1]
						0.8, -- [2]
						1, -- [3]
					},
					["frame"] = 6,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇#ce #c2#sn#ce消失了", -- [1]
					},
				},
				["DCTSA_SHOW_CASTSUCCESS_FOCUS"] = {
					["color"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
					},
					["frame"] = 0,
					["colorEx"] = {
						{
							1, -- [1]
							1, -- [2]
							1, -- [3]
						}, -- [1]
						{
							1, -- [1]
							1, -- [2]
							0, -- [3]
						}, -- [2]
					},
					["show"] = {
						"#ic#c1◇ 对[#di]#ce施放了 #c2#sn#ce", -- [1]
					},
				},
			},
		},
	},
}
