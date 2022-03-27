
TellMeWhenDB = {
	["profileKeys"] = {
		["Magiccreamdz - 凤凰之神"] = "Magiccreamdz - 凤凰之神",
		["Magiccreamdk - 格雷迈恩"] = "Magiccreamdk - 格雷迈恩",
		["Magiccream - 格雷迈恩"] = "Magiccream - 格雷迈恩",
		["余生请多指教 - 格雷迈恩"] = "余生请多指教 - 格雷迈恩",
	},
	["global"] = {
		["BackdropColor"] = "80333333",
		["TextLayouts"] = {
			["TMW:textlayout:1U99JCtDAnqq"] = {
				{
					["Justify"] = "RIGHT",
					["Anchors"] = {
						{
							["point"] = "BOTTOMRIGHT",
							["relativePoint"] = "BOTTOMRIGHT",
						}, -- [1]
					},
					["SkinAs"] = "HotKey",
					["Name"] = "聊天",
					["StringName"] = "层数",
				}, -- [1]
				{
					["DefaultText"] = "[Spell]",
					["Anchors"] = {
						{
							["y"] = 18.5,
						}, -- [1]
					},
					["JustifyV"] = "TOP",
					["Name"] = "聊天",
					["StringName"] = "技能名称",
					["Outline"] = "OUTLINE",
					["Size"] = 7,
				}, -- [2]
				{
					["Outline"] = "OUTLINE",
					["Anchors"] = {
						{
							["y"] = -19.5,
						}, -- [1]
					},
					["Name"] = "聊天",
					["StringName"] = "应对",
					["Size"] = 7,
				}, -- [3]
				["GUID"] = "TMW:textlayout:1U99JCtDAnqq",
				["Name"] = "森林de字体",
				["n"] = 3,
			},
			["TMW:textlayout:1RmzKllD8C7R"] = {
				{
					["Anchors"] = {
						{
							["y"] = -2,
							["x"] = -4,
							["point"] = "TOPLEFT",
							["relativePoint"] = "TOPLEFT",
						}, -- [1]
						{
							["y"] = -2,
							["x"] = -2,
							["point"] = "TOPRIGHT",
							["relativePoint"] = "TOPRIGHT",
						}, -- [2]
						["n"] = 2,
					},
					["StringName"] = "绑定/标签",
					["Height"] = 1,
					["Size"] = 10,
				}, -- [1]
				{
					["Anchors"] = {
						{
							["y"] = -8,
							["x"] = 2,
						}, -- [1]
					},
					["StringName"] = "叠加数量",
					["DefaultText"] = "[Stacks:Hide(0)]",
					["Size"] = 11,
				}, -- [2]
				["GUID"] = "TMW:textlayout:1RmzKllD8C7R",
				["Name"] = "图标下方显示文字",
				["n"] = 2,
			},
			["icon1"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
			[",Rr\\)h/,f.i["] = {
				{
					["Justify"] = "RIGHT",
					["Anchors"] = {
						{
							["point"] = "TOPRIGHT",
							["relativePoint"] = "TOPRIGHT",
						}, -- [1]
					},
					["Name"] = "默认",
					["StringName"] = "绑定/标签",
					["Size"] = 8,
				}, -- [1]
				{
					["DefaultText"] = "[Spell]",
					["SkinAs"] = "Count",
					["Outline"] = "OUTLINE",
					["Name"] = "默认",
					["StringName"] = "技能名称",
					["Anchors"] = {
						{
							["y"] = -8,
						}, -- [1]
					},
					["Size"] = 8,
				}, -- [2]
				["GUID"] = ",Rr\\)h/,f.i[",
				["Name"] = "森林自制王座TMW文字样式",
				["n"] = 2,
			},
			["TMW:textlayout:1SNOoinspdY9"] = {
				{
					["Outline"] = "OUTLINE",
					["Anchors"] = {
						{
							["y"] = -6,
						}, -- [1]
					},
					["Name"] = "默认",
					["StringName"] = "内容",
					["Size"] = 10,
				}, -- [1]
				["GUID"] = "TMW:textlayout:1SNOoinspdY9",
				["Name"] = "多行文字",
			},
			["bar2"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
		},
		["NumGroups"] = 13,
		["CodeSnippets"] = {
			{
				["Name"] = "减伤增益统计",
				["Code"] = "local TMW = TMW\nlocal CNDT = TMW.CNDT\nlocal Env = TMW.CNDT.Env\nlocal DogTag = LibStub(\"LibDogTag-3.0\")\nlocal frame = CreateFrame(\"frame\")      --创建框架\nlocal C_hujia = nil     --获取护甲值\nlocal C_maxHP = nil     --获取最大生命值\nlocal C_quanneng = nil  --获取全能\nlocal C_jisu = nil      --获取急速\nlocal C_jingtong = nil  --获取精通\nlocal C_baoji = nil     --获取暴击\nlocal xishou = 0        --吸收\nlocal xishou_mofa = 0   --魔法吸收\nlocal xishou_wuli = 0   --物理吸收\nlocal jian = 0          --减伤\nlocal jian_mofa = 0     --魔法减伤\nlocal jian_fanwei = 0   --范围减伤\nlocal jian_wuli = 0     --物理减伤\nlocal jia_xueliang = 0  --最大血量\nlocal jia_liaoxiao = 0  --治疗效果\nlocal jia_shanbilv = 0  --闪避率\nlocal jia_zhaojialv = 0 --招架率\nlocal jia_gedanglv = 0  --格挡率\nlocal jia_hujia = 0     --护甲\nlocal jia_quanneng = 0  --全能\nlocal jia_jisu = 0      --急速\nlocal jia_jintong = 0   --精通\nlocal jia_baoji = 0     --暴击\n\nframe:RegisterEvent(\"PLAYER_REGEN_DISABLED\") --玩家进入战斗\nframe:RegisterEvent(\"PLAYER_REGEN_ENABLED\")  --玩家退出战斗\nframe:RegisterEvent(\"PLAYER_UNGHOST\")        --玩家复活\nframe:RegisterEvent(\"UNIT_AURA\")  --获得或消除buff，debuff时被触发\nframe:SetScript(\"OnEvent\", function(self,event,arg1)\n        if arg1 == \"player\" or event == \"PLAYER_REGEN_DISABLED\" or event == \"PLAYER_REGEN_ENABLED\" or event == \"PLAYER_UNGHOST\" then\n            C_Timer.After(0.3, function()\n                    --根据身上BUFF情况，获取基础属性\n                    local k1 = nil\n                    local k2 = nil\n                    local k3 = nil\n                    local k4 = nil\n                    local k5 = nil\n                    local k6 = nil\n                    local ida = 1\n                    repeat\n                        local name,_,_,_,_,_,_,_,_,spellID= UnitAura(\"player\",ida,\"HELPFUL\")\n                        if spellID ~= nil then\n                            local description = GetSpellDescription(spellID)\n                            if k1 == nil then\n                                k1 = string.find(description,\"护甲\",1)\n                            end\n                            if k2 == nil then\n                                k2 = string.find(description,\"生命\",1)\n                            end\n                            if k3 == nil then\n                                k3 = string.find(description,\"全能\",1)\n                            end\n                            if k4 == nil then\n                                k4 = string.find(description,\"急速\",1)\n                            end\n                            if k5 == nil then\n                                k5 = string.find(description,\"精通\",1)\n                            end\n                            if k6 == nil then\n                                k6 = string.find(description,\"暴击\",1)\n                            end\n                        end\n                        ida = ida + 1\n                    until name == nil\n                    \n                    if k1 == nil or C_hujia == nil then\n                        local baseArmor, effectiveArmor= UnitArmor(\"player\")\n                        C_hujia = string.format(\"%.1f\",PaperDollFrame_GetArmorReduction(effectiveArmor, UnitLevel(\"player\"))) --获取护甲值\n                    end\n                    if k2 == nil or C_maxHP == nil then\n                        C_maxHP = UnitHealthMax(\"player\") --获取最大生命值\n                    end\n                    if k3 == nil or C_quanneng == nil then\n                        C_quanneng = string.format(\"%.1f\",GetCombatRatingBonus(29) + GetVersatilityBonus(30)) --获取全能\n                    end\n                    if k4 == nil or C_jisu == nil then\n                        C_jisu = string.format(\"%.1f\",GetHaste()) --获取急速\n                    end\n                    if k5 == nil or C_jingtong == nil then\n                        C_jingtong = string.format(\"%.1f\",GetMasteryEffect()) --获取精通\n                    end\n                    if k6 == nil or C_baoji == nil then\n                        C_baoji = string.format(\"%.1f\",GetCritChance()) --获取暴击\n                    end\n                    \n                    --获取实时属性\n                    local baseArmor, effectiveArmor= UnitArmor(\"player\")\n                    local D_hujia = string.format(\"%.1f\",PaperDollFrame_GetArmorReduction(effectiveArmor, UnitLevel(\"player\")))\n                    local D_maxHP = UnitHealthMax(\"player\")\n                    local D_quanneng = string.format(\"%.1f\",GetCombatRatingBonus(29) + GetVersatilityBonus(30))\n                    local D_jisu = string.format(\"%.1f\",GetHaste())\n                    local D_jingtong = string.format(\"%.1f\",GetMasteryEffect())\n                    local D_baoji = string.format(\"%.1f\",GetCritChance())\n                    \n                    --计算部分\n                    --增加血量百分比\n                    jia_xueliang = (D_maxHP/C_maxHP-1)*100\n                    --增加护甲\n                    jia_hujia = D_hujia-C_hujia\n                    --增加全能\n                    jia_quanneng = D_quanneng-C_quanneng\n                    --增加急速\n                    jia_jisu = D_jisu-C_jisu\n                    --增加精通\n                    jia_jintong = D_jingtong-C_jingtong\n                    --增加暴击\n                    jia_baoji = D_baoji-C_baoji\n            end)\n        end\n        \n        if arg1 == \"player\" then\n            --获取BUFF增益\n            local zongxishou = UnitGetTotalAbsorbs(\"player\")  --获取总吸收值\n            xishou = 0\n            xishou_mofa = 0\n            xishou_wuli = 0\n            jian = 1\n            jian_mofa = 1\n            jian_fanwei = 1\n            jian_wuli = 1\n            jia_shengming = 1\n            jia_liaoxiao = 1\n            jia_shanbilv = 0\n            jia_zhaojialv = 0\n            jia_gedanglv = 0\n            \n            local idx = 1\n            repeat\n                --根据ID号获取玩家身上BUFF的名称，层数，法术ID，数值 4个参数\n                local name,_,count,_,_,_,_,_,_,spellID,_,_,_,_,_,Amount= UnitAura(\"player\", idx,\"HELPFUL\")\n                --吸收\n                if spellID and spellID == 219809 then      --DK墓石\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 207203 then  --DK寒冰之盾\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 190456 then  --ZS无视苦痛\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 184662 then  --QS复仇之盾\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 115295 then  --WS金钟罩\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 116849 then  --WS作茧缚命+\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 205655 then  --WS_PVP迷雾护体+ !\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 263648 then  --DH灵魂壁障\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 11426  then  --FS寒冰护体\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 235313 then  --FS烈焰护体\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 235450 then  --FS棱光屏障\n                    xishou = xishou+Amount\n                    jian_mofa = jian_mofa-(jian_mofa*0.15)\n                elseif spellID and spellID == 108416 then  --SS黑暗契约\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 108366 then  --SS灵魂榨取\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 17     then  --MS真言术：盾+\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 271466 then  --MS微光屏障+\n                    xishou = xishou+Amount\n                elseif spellID and spellID == 196439 then  --MS_PVP纯净决心+ !\n                    xishou = xishou+Amount\n                    --魔法吸收\n                elseif spellID and spellID == 48707  then  --DK反魔法护罩\n                    xishou_mofa = xishou_mofa+Amount\n                    --物理吸收\n                elseif spellID and spellID == 77535  then  --DK鲜血护盾\n                    xishou_wuli = xishou_wuli+Amount\n                    --减伤\n                elseif spellID and spellID == 48792  then  --DK冰封之韧\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 194679 then  --DK符文分流\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 287081 then  --DK_PVP巫妖之躯\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 871 then     --ZS盾墙\n                    jian = jian-(jian*0.4)\n                elseif spellID and spellID == 184364 then  --ZS狂怒回复\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 118038 then  --ZS剑在人在\n                    jian = jian-(jian*0.3)\n                    jia_zhaojialv = jia_zhaojialv+100\n                elseif spellID and spellID == 197690 then  --ZS防御姿态\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 223658 then  --ZS捍卫+\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 498    then  --QS圣佑术\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 31850  then  --QS炽热防御者\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 86659  then  --QS远古列王守卫\n                    jian = jian-(jian*0.5)\n                elseif spellID and spellID == 6940   then  --QS牺牲祝福+ t100\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 204150 then  --QS圣光护盾+\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 216857 then  --QS_PVP圣光守护+\n                    jian = jian-(jian*(count*0.1))\n                elseif spellID and spellID == 199507 then  --QS_PVP广布圣言：保护+\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 216328 then  --QS_PVP光之优雅+\n                    jian = jian-(jian*0.05)\n                elseif spellID and spellID == 186265 then  --LR灵龟守护\n                    jian = jian-(jian*0.3)\n                elseif spellID and spellID == 264735 then  --LR优胜劣汰\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 281195 then  --LR优胜劣汰\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 204205 then  --LR_PVP荒野守护者+\n                    jian = jian-(jian*0.1)\n                elseif spellID and spellID == 108271 then  --SM星界转移\n                    jian = jian-(jian*0.4)\n                elseif spellID and spellID == 98007  then  --SM灵魂链接图腾+\n                    jian = jian-(jian*0.1)\n                elseif spellID and spellID == 260881 then  --SM幽灵狼\n                    jian = jian-(jian*(count*0.05))\n                elseif spellID and spellID == 61336  then  --XD生存本能\n                    jian = jian-(jian*0.5)    \n                elseif spellID and spellID == 22812  then  --XD树皮术\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 102342 then  --XD铁木树皮+\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 158792 then  --XD粉碎\n                    jian = jian-(jian*0.09)\n                elseif spellID and spellID == 201939 then  --XD_PVP盟友守护+ !\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 115176 then  --WS禅悟冥想\n                    jian = jian-(jian*0.6)\n                elseif spellID and spellID == 261769 then  --WS铁布衫\n                    jian = jian-(jian*(count*0.02))\n                elseif spellID and spellID == 122278 then  --WS躯不坏\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 212800 then  --DH疾影 t50\n                    jian = jian-(jian*0.35)\n                    jia_shanbilv = jia_shanbilv+50\n                elseif spellID and spellID == 45182  then  --DZ装死\n                    jian = jian-(jian*0.85)\n                elseif spellID and spellID == 113862 then  --FS强化隐形术\n                    jian = jian-(jian*0.6)\n                elseif spellID and spellID == 104773 then  --SS不灭决心\n                    jian = jian-(jian*0.4)\n                elseif spellID and spellID == 47585  then  --MS消散\n                    jian = jian-(jian*0.75)\n                elseif spellID and spellID == 33206  then  --MS痛苦压制+\n                    jian = jian-(jian*0.4)\n                elseif spellID and spellID == 81782  then  --MS真言术：障+\n                    jian = jian-(jian*0.25)\n                elseif spellID and spellID == 45242  then  --MS专注意志\n                    jian = jian-(jian*(count*0.15))\n                elseif spellID and spellID == 193065 then  --MS_PVP忍辱负重\n                    jian = jian-(jian*0.1)\n                elseif spellID and spellID == 199412 then  --MS_PVP狂乱边缘\n                    jian = jian-(jian*0.05)\n                    --魔法减伤\n                elseif spellID and spellID == 145629 then  --DK_PVP反魔法领域+\n                    jian_mofa = jian_mofa-(jian_mofa*0.2)\n                elseif spellID and spellID == 122783 then  --WS散魔功\n                    jian_mofa = jian_mofa-(jian_mofa*0.6)\n                elseif spellID and spellID == 198065 then  --FS_PVP棱彩屏障\n                    jian_mofa = jian_mofa-(jian_mofa*0.5)\n                    --范围减伤\n                elseif spellID and spellID == 1966   then  --DZ佯攻 t40\n                    jian_fanwei = jian_fanwei-(jian_fanwei*0.4)\n                elseif spellID and spellID == 289318 then  --XD_PVP野性印记+\n                    jian_fanwei = jian_fanwei-(jian_fanwei*0.15)\n                    --物理减伤\n                elseif spellID and spellID == 205191 then  --QS以眼还眼\n                    jian_wuli = jian_wuli-(jian_wuli*0.35)\n                elseif spellID and spellID == 197548 then  --MS_PVP灵魂之力\n                    jian_wuli = jian_wuli-(jian_wuli*0.15)\n                    --加最大血量\n                elseif spellID and spellID == 55233  then  --DK吸血鬼之血\n                    jia_shengming = jia_shengming*1.3\n                    jia_liaoxiao  = jia_liaoxiao*1.3\n                elseif spellID and spellID == 12975  then  --ZS破釜沉舟\n                    jia_shengming = jia_shengming*1.3\n                elseif spellID and spellID == 97463  then  --ZS集结呐喊+ t30\n                    jia_shengming = jia_shengming*1.15\n                elseif spellID and spellID == 207498 then  --SM先祖护佑图腾+\n                    jia_shengming = jia_shengming*1.1\n                elseif spellID and spellID == 236181 then  --XD_PVP兽穴之母+\n                    jia_shengming = jia_shengming*1.15\n                elseif spellID and spellID == 120954 then  --WS壮胆酒\n                    jia_shengming = jia_shengming*1.2\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 243435 then  --WS壮胆酒\n                    jia_shengming = jia_shengming*1.2\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 201318 then  --WS壮胆酒\n                    jia_shengming = jia_shengming*1.2\n                    jian = jian-(jian*0.2)\n                elseif spellID and spellID == 187827 then  --DH恶魔变形\n                    jia_shengming = jia_shengming*1.3\n                elseif spellID and spellID == 285933 then  --SS_PVP魔甲术\n                    jia_shengming = jia_shengming*1.1\n                elseif spellID and spellID == 19236  then  --MS绝望祷言\n                    jia_shengming = jia_shengming*1.25\n                    --加治疗效果\n                elseif spellID and spellID == 64844  then  --MS神圣赞美诗+\n                    jia_liaoxiao = jia_liaoxiao*1.1\n                elseif spellID and spellID == 47788  then  --MS守护之魂+\n                    jia_liaoxiao = jia_liaoxiao*1.6\n                    --增加闪避\n                elseif spellID and spellID == 195630 then  --WS醉拳大师\n                    jia_shanbilv = jia_shanbilv+Amount\n                elseif spellID and spellID == 188499 then  --DH刃舞\n                    jia_shanbilv = jia_shanbilv+100\n                elseif spellID and spellID == 209426 then  --DH黑暗+ t70\n                    jia_shanbilv = jia_shanbilv+20\n                elseif spellID and spellID == 5277   then  --DZ闪避\n                    jia_shanbilv = jia_shanbilv+100\n                elseif spellID and spellID == 199027 then  --DZ_PVP午夜帷幕\n                    jia_shanbilv = jia_shanbilv+100\n                    --增加招架\n                elseif spellID and spellID == 81256  then  --DK符文刃舞\n                    jia_zhaojialv = jia_zhaojialv+40\n                elseif spellID and spellID == 227744 then  --ZS破坏者\n                    jia_zhaojialv = jia_zhaojialv+35\n                elseif spellID and spellID == 203819 then  --DH恶魔尖刺\n                    jia_zhaojialv = jia_zhaojialv+15\n                elseif spellID and spellID == 199754 then  --DZ还击\n                    jia_zhaojialv = jia_zhaojialv+100\n                    --增加格挡\n                elseif spellID and spellID == 132404 then  --ZS盾牌格挡\n                    jia_gedanglv = jia_gedanglv+100\n                elseif spellID and spellID == 280375 then  --QS多面防御\n                    jia_gedanglv = jia_gedanglv+75\n                end\n                idx = idx + 1\n            until name == nil\n            \n            --计算部分\n            --吸收\n            xishou = zongxishou-xishou_mofa-xishou_wuli\n            --减伤百分比\n            jian = (1-jian)*100\n            --魔法减伤百分比\n            jian_mofa = (1-jian_mofa)*100\n            --范围技能减伤百分比\n            jian_fanwei = (1-jian_fanwei)*100\n            --物理减伤百分比\n            jian_wuli = (1-jian_wuli)*100\n            --增加疗效百分比\n            jia_liaoxiao = (jia_liaoxiao-1)*100\n        end\nend)\n\n--显示标签部分\nDogTag:AddTag(\"TMW\", \"xishou\", {\n        code = function()\n            if xishou > 1 then\n                return \"吸收:\"..xishou.. \"\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"xishou_mofa\", {\n        code = function()\n            if xishou_mofa > 1 then\n                return \"魔法吸收:\"..xishou_mofa.. \"\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"xishou_wuli\", {\n        code = function()\n            if xishou_wuli > 1 then\n                return \"物理吸收:\"..xishou_wuli.. \"\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jian\", {\n        code = function()\n            if jian > 0 then\n                return \"减伤:\"..jian.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jian_mofa\", {\n        code = function()\n            if jian_mofa > 0 then\n                return \"魔法减伤:\"..jian_mofa.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jian_fanwei\", {\n        code = function()\n            if jian_fanwei > 0 then\n                return \"范围减伤:\"..jian_fanwei.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jian_wuli\", {\n        code = function()\n            if jian_wuli > 0 then\n                return \"物理减伤:\"..jian_wuli.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_xueliang\", {\n        code = function()\n            if jia_xueliang > 0 then\n                return \"血量:\"..string.format(\"%.1f\",jia_xueliang).. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_liaoxiao\", {\n        code = function()\n            if jia_liaoxiao > 0 then\n                return \"疗效:\"..jia_liaoxiao.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_hujia\", {\n        code = function()\n            if jia_hujia > 0 then\n                return \"护甲:\"..jia_hujia.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_shanbilv\", {\n        code = function()\n            if jia_shanbilv > 0 then\n                return \"闪避:\"..jia_shanbilv.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_zhaojialv\", {\n        code = function()\n            if jia_zhaojialv > 0 then\n                return \"招架:\"..jia_zhaojialv.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_gedanglv\", {\n        code = function()\n            if jia_gedanglv > 0 then\n                return \"格挡:\"..jia_gedanglv.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_quanneng\", {\n        code = function()\n            if jia_quanneng > 0 then\n                return \"全能:\"..jia_quanneng.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_jisu\", {\n        code = function()\n            if jia_jisu > 0 then\n                return \"急速:\"..jia_jisu.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_jintong\", {\n        code = function()\n            if jia_jintong > 0 then\n                return \"精通:\"..jia_jintong.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})\n\nDogTag:AddTag(\"TMW\", \"jia_baoji\", {\n        code = function()\n            if jia_baoji > 0 then\n                return \"暴击:\"..jia_baoji.. \"%\\n\"\n            end\n        end,\n        ret = \"number\",\n        noDoc = true,\n        events = \"COMBAT_LOG_EVENT_UNFILTERED;Update\"\n})",
			}, -- [1]
			["n"] = 1,
		},
		["Groups"] = {
			{
				["GUID"] = "TMW:group:1NgUx0BN6Ifl",
				["Scale"] = 1.28,
				["Locked"] = true,
				["Columns"] = 8,
				["Icons"] = {
					{
						["Type"] = "buff",
						["Name"] = "209426; 反魔法领域",
						["ShowTimerText"] = true,
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [2]
							["n"] = 2,
						},
					}, -- [1]
					{
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "先祖护佑",
						["CustomTex"] = "207495",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [2]
					{
						["Type"] = "buff",
						["Name"] = "圣光护盾",
						["ShowTimerText"] = true,
						["CustomTex"] = "216109",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [3]
					{
						["Unit"] = "party 1-4; group 1-40",
						["Type"] = "buff",
						["Name"] = "光环掌握",
						["ShowTimerText"] = true,
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [2]
							["n"] = 2,
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [2]
							["n"] = 2,
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [2]
							["n"] = 2,
						},
					}, -- [6]
					{
						["Type"] = "buff",
						["Name"] = "集结呐喊",
						["ShowTimerText"] = true,
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
					}, -- [7]
					{
						["Type"] = "meta",
						["Icons"] = {
							"TMW:icon:1RpbOAxKP4Vy", -- [1]
							"TMW:icon:1RpbOAxO6pac", -- [2]
						},
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
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
					}, -- [151]
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
					}, -- [152]
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
					}, -- [153]
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
					}, -- [154]
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
					}, -- [155]
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
					}, -- [156]
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
					}, -- [157]
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
					}, -- [158]
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
					}, -- [159]
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
					}, -- [160]
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
					}, -- [161]
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
					}, -- [162]
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
					}, -- [163]
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
					}, -- [164]
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
					}, -- [165]
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
					}, -- [166]
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
					}, -- [167]
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
					}, -- [168]
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
					}, -- [169]
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
					}, -- [170]
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
					}, -- [171]
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
					}, -- [172]
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
					}, -- [173]
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
					}, -- [174]
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
					}, -- [175]
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
					}, -- [176]
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
					}, -- [177]
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
					}, -- [178]
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
					}, -- [179]
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
					}, -- [180]
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
					}, -- [181]
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
					}, -- [182]
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
					}, -- [183]
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
					}, -- [184]
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
					}, -- [185]
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
					}, -- [186]
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
					}, -- [187]
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
					}, -- [188]
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
					}, -- [189]
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
					}, -- [190]
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
					}, -- [191]
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
					}, -- [192]
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
					}, -- [193]
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
					}, -- [194]
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
					}, -- [195]
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
					}, -- [196]
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
					}, -- [197]
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
					}, -- [198]
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
					}, -- [199]
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
					}, -- [200]
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
					}, -- [201]
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
					}, -- [202]
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
					}, -- [203]
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
					}, -- [204]
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
					}, -- [205]
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
					}, -- [206]
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
					}, -- [207]
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
					}, -- [208]
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
					}, -- [209]
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
					}, -- [210]
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
					}, -- [211]
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
					}, -- [212]
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
					}, -- [213]
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
					}, -- [214]
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
					}, -- [215]
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
					}, -- [216]
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
					}, -- [217]
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
					}, -- [218]
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
					}, -- [219]
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
					}, -- [220]
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
					}, -- [221]
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
					}, -- [222]
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
					}, -- [223]
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
					}, -- [224]
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
					}, -- [225]
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
					}, -- [226]
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
					}, -- [227]
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
					}, -- [228]
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
					}, -- [229]
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
					}, -- [230]
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
					}, -- [231]
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
					}, -- [232]
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
					}, -- [233]
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
					}, -- [234]
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
					}, -- [235]
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
					}, -- [236]
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
					}, -- [237]
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
					}, -- [238]
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
					}, -- [239]
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
					}, -- [240]
				},
				["Name"] = "团队减伤技能",
				["Point"] = {
					["y"] = 10,
					["x"] = -185,
				},
			}, -- [1]
			{
				["GUID"] = "TMW:group:1Rmoq04Xg9mZ",
				["Scale"] = 1.28,
				["Locked"] = true,
				["Columns"] = 8,
				["Icons"] = {
					{
						["Type"] = "buff",
						["Name"] = "狂奔怒吼; 狂风; 潜伏帷幕; 狂风图腾; 自由祝福",
						["ShowTimerText"] = true,
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [1]
					{
						["Unit"] = "player; target",
						["Type"] = "meta",
						["Icons"] = {
							"TMW:icon:1RpbCk93aVEj", -- [1]
							"TMW:icon:1RdO2807n5Jj", -- [2]
						},
						["Name"] = "保护祝福; 破咒祝福; 自由祝福",
						["ShowTimerText"] = true,
						["GUID"] = "TMW:icon:1RpbO9akkJDT",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [2]
					{
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "能量灌注",
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
					}, -- [3]
					{
						["Type"] = "buff",
						["Name"] = "铁木树皮",
						["ShowTimerText"] = true,
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
					}, -- [4]
					{
						["Type"] = "buff",
						["Name"] = "牺牲祝福",
						["ShowTimerText"] = true,
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
					}, -- [5]
					{
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "痛苦压制",
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
					}, -- [6]
					{
						["Type"] = "buff",
						["ShowTTText"] = 1,
						["ShowTimerText"] = true,
						["Name"] = "作茧缚命",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [7]
					{
						["Type"] = "buff",
						["Name"] = "守护之魂",
						["ShowTimerText"] = true,
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
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
					}, -- [151]
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
					}, -- [152]
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
					}, -- [153]
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
					}, -- [154]
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
					}, -- [155]
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
					}, -- [156]
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
					}, -- [157]
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
					}, -- [158]
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
					}, -- [159]
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
					}, -- [160]
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
					}, -- [161]
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
					}, -- [162]
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
					}, -- [163]
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
					}, -- [164]
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
					}, -- [165]
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
					}, -- [166]
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
					}, -- [167]
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
					}, -- [168]
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
					}, -- [169]
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
					}, -- [170]
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
					}, -- [171]
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
					}, -- [172]
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
					}, -- [173]
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
					}, -- [174]
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
					}, -- [175]
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
					}, -- [176]
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
					}, -- [177]
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
					}, -- [178]
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
					}, -- [179]
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
					}, -- [180]
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
					}, -- [181]
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
					}, -- [182]
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
					}, -- [183]
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
					}, -- [184]
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
					}, -- [185]
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
					}, -- [186]
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
					}, -- [187]
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
					}, -- [188]
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
					}, -- [189]
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
					}, -- [190]
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
					}, -- [191]
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
					}, -- [192]
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
					}, -- [193]
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
					}, -- [194]
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
					}, -- [195]
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
					}, -- [196]
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
					}, -- [197]
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
					}, -- [198]
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
					}, -- [199]
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
					}, -- [200]
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
					}, -- [201]
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
					}, -- [202]
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
					}, -- [203]
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
					}, -- [204]
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
					}, -- [205]
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
					}, -- [206]
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
					}, -- [207]
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
					}, -- [208]
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
					}, -- [209]
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
					}, -- [210]
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
					}, -- [211]
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
					}, -- [212]
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
					}, -- [213]
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
					}, -- [214]
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
					}, -- [215]
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
					}, -- [216]
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
					}, -- [217]
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
					}, -- [218]
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
					}, -- [219]
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
					}, -- [220]
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
					}, -- [221]
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
					}, -- [222]
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
					}, -- [223]
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
					}, -- [224]
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
					}, -- [225]
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
					}, -- [226]
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
					}, -- [227]
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
					}, -- [228]
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
					}, -- [229]
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
					}, -- [230]
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
					}, -- [231]
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
					}, -- [232]
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
					}, -- [233]
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
					}, -- [234]
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
					}, -- [235]
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
					}, -- [236]
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
					}, -- [237]
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
					}, -- [238]
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
					}, -- [239]
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
					}, -- [240]
				},
				["Name"] = "个人减伤技能",
				["Point"] = {
					["y"] = 40,
					["x"] = -185,
				},
			}, -- [2]
			{
				["GUID"] = "TMW:group:1Rvam6LVoUoW",
				["Scale"] = 1.28,
				["Locked"] = true,
				["Columns"] = 8,
				["Icons"] = {
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "守护之魂",
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
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
					}, -- [1]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTTText"] = 1,
						["Name"] = "作茧缚命",
						["ShowTimerText"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [2]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["Name"] = "痛苦压制",
						["ShowTimerText"] = true,
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
					}, -- [3]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "牺牲祝福",
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
					}, -- [4]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["Name"] = "铁木树皮",
						["ShowTimerText"] = true,
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
					}, -- [5]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["Name"] = "能量灌注",
						["ShowTimerText"] = true,
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
					}, -- [6]
					{
						["Unit"] = "player; target",
						["Type"] = "meta",
						["Icons"] = {
							"TMW:icon:1RvaMBPkzihB", -- [1]
							"TMW:icon:1RvaMBPmmt0y", -- [2]
						},
						["Name"] = "保护祝福; 破咒祝福; 自由祝福",
						["ShowTimerText"] = true,
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
					}, -- [7]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "狂奔怒吼; 狂风; 潜伏帷幕; 狂风图腾; 自由祝福",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
				},
				["Name"] = "目标减伤技能",
				["Point"] = {
					["y"] = 40,
					["x"] = 185,
				},
			}, -- [3]
			{
				["GUID"] = "TMW:group:1RZAaYrG5aSL",
				["Scale"] = 1.28,
				["Locked"] = true,
				["Columns"] = 8,
				["Icons"] = {
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "Stunned",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "眩晕",
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
					}, -- [1]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "Silenced",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "沉默",
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
					}, -- [2]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "Slowed",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "减速",
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
					}, -- [3]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "Incapacitated",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "瘫痪",
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
					}, -- [4]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "CrowdControl; 休眠; 乌索尔旋风",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "控制",
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
					}, -- [5]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "Rooted; Feared",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "缠绕",
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
					}, -- [6]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["ShowTimerText"] = true,
						["Name"] = "Disoriented",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "魅惑",
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
					}, -- [7]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["Name"] = "ReducedHealing",
						["ShowTimerText"] = true,
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "致死",
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
					}, -- [8]
				},
				["Name"] = "目标通用控制",
				["Point"] = {
					["y"] = 10,
					["x"] = 185,
				},
			}, -- [4]
			{
				["GUID"] = "TMW:group:1QM1zt4HJzWw",
				["Scale"] = 2.2,
				["Locked"] = true,
				["Columns"] = 1,
				["Icons"] = {
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "COMBAT",
							}, -- [1]
							["n"] = 1,
						},
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "[Stacks:Hide(0)]自身",
								},
							},
						},
						["CustomTex"] = "112897",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Magnitude"] = 1,
								["Animation"] = "ICONSHAKE",
								["Event"] = "WCSP",
								["OnConditionConditions"] = {
									{
										["Type"] = "COMBAT",
									}, -- [1]
									["n"] = 1,
								},
							}, -- [1]
							["n"] = 1,
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
				},
				["Name"] = "个人战斗状态",
				["Point"] = {
					["y"] = 112,
					["x"] = 0.00036503395213192,
					["point"] = "BOTTOM",
					["relativePoint"] = "BOTTOM",
				},
			}, -- [5]
			{
				["GUID"] = "TMW:group:1S2nmDrMJd6p",
				["Point"] = {
					["y"] = -115,
					["x"] = -317,
				},
				["Scale"] = 1.3,
				["Locked"] = true,
				["Columns"] = 1,
				["Icons"] = {
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "COMBAT",
								["Unit"] = "focus",
							}, -- [1]
							{
								["Type"] = "ALIVE",
								["Unit"] = "focus",
							}, -- [2]
							["n"] = 2,
						},
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "[Stacks:Hide(0)]焦点",
								},
							},
						},
						["CustomTex"] = "112897",
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
								["Type"] = "Animations",
								["Magnitude"] = 1,
								["Animation"] = "ICONSHAKE",
								["Event"] = "WCSP",
								["OnConditionConditions"] = {
									{
										["Type"] = "COMBAT",
										["Unit"] = "focus",
									}, -- [1]
									{
										["Type"] = "ALIVE",
										["Unit"] = "focus",
									}, -- [2]
									["n"] = 2,
								},
							}, -- [1]
							["n"] = 1,
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
				["Name"] = "焦点战斗状态",
			}, -- [6]
			{
				["GUID"] = "TMW:group:1QMEmZXAbsV1",
				["Point"] = {
					["y"] = -216,
					["x"] = -281,
				},
				["Scale"] = 1.2,
				["Rows"] = 9,
				["TextureName"] = "ThreatPlatesEmpty",
				["Locked"] = true,
				["Columns"] = 1,
				["Icons"] = {
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Name"] = "0",
						["Conditions"] = {
							{
								["Type"] = "UNITSPEC",
								["BitFlags"] = {
									[71] = true,
									[66] = true,
									[252] = true,
									[70] = true,
									[72] = true,
									[251] = true,
									[250] = true,
									[73] = true,
								},
							}, -- [1]
							["n"] = 1,
						},
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Strength]", -- [1]
									"力量", -- [2]
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
					}, -- [1]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "UNITSPEC",
								["BitFlags"] = {
									[103] = true,
									[261] = true,
									[263] = true,
									[104] = true,
									[253] = true,
									[254] = true,
									[268] = true,
									[255] = true,
									[577] = true,
									[581] = true,
									[269] = true,
									[259] = true,
									[260] = true,
								},
							}, -- [1]
							["n"] = 1,
						},
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Agility]", -- [1]
									"敏捷", -- [2]
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
					}, -- [2]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "UNITSPEC",
								["BitFlags"] = {
									[63] = true,
									[262] = true,
									[258] = true,
									[264] = true,
									[265] = true,
									[266] = true,
									[267] = true,
									[62] = true,
									[64] = true,
									[270] = true,
									[102] = true,
									[257] = true,
									[65] = true,
									[256] = true,
									[105] = true,
								},
							}, -- [1]
							["n"] = 1,
						},
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Intellect]", -- [1]
									"智力", -- [2]
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
					}, -- [3]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[CriticalStrike:Round(1):Percent]", -- [1]
									"暴击", -- [2]
								},
							},
						},
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
					}, -- [4]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Haste:Round(1):Percent]", -- [1]
									"急速", -- [2]
								},
							},
						},
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
					}, -- [5]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Mastery:Round(1):Percent]", -- [1]
									"精通", -- [2]
								},
							},
						},
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
					}, -- [6]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Versatility:Round(1):Percent]", -- [1]
									"全能", -- [2]
								},
							},
						},
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
					}, -- [7]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[Lifesteal:Round(1):Percent]", -- [1]
									"吸血", -- [2]
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
					}, -- [8]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["bar"] = {
								["Texts"] = {
									"[GroundSpeed:Round(1):Percent]", -- [1]
									"移速", -- [2]
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
				},
				["SortPriorities"] = {
					{
						["Method"] = "shown",
						["Order"] = -1,
					}, -- [1]
					{
						["Method"] = "id",
						["Order"] = 1,
					}, -- [2]
				},
				["Name"] = "个人实时属性",
				["SettingsPerView"] = {
					["bar"] = {
						["SizeX"] = 90,
						["SizeY"] = 17.5,
						["Icon"] = false,
					},
				},
				["View"] = "bar",
			}, -- [7]
			{
				["GUID"] = "TMW:group:1Rmsn3HjdXSi",
				["Strata"] = "LOW",
				["Scale"] = 1.45,
				["Locked"] = true,
				["Icons"] = {
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "COMBAT",
								["Unit"] = "target",
							}, -- [1]
							{
								["Type"] = "ALIVE",
								["Unit"] = "target",
							}, -- [2]
							["n"] = 2,
						},
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "[Stacks:Hide(0)]目标",
								},
							},
						},
						["CustomTex"] = "112897",
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
								["Type"] = "Animations",
								["Magnitude"] = 1,
								["Animation"] = "ICONSHAKE",
								["Event"] = "WCSP",
								["OnConditionConditions"] = {
									{
										["Type"] = "COMBAT",
										["Unit"] = "target",
									}, -- [1]
									{
										["Type"] = "ALIVE",
										["Unit"] = "target",
									}, -- [2]
									["n"] = 2,
								},
							}, -- [1]
							["n"] = 1,
						},
					}, -- [1]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["Name"] = "玄秘掌",
						["ShowTimerText"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									"", -- [1]
									"物理", -- [2]
								},
							},
						},
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
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "COMBAT",
								["Unit"] = "target",
							}, -- [1]
							["n"] = 1,
						},
					}, -- [2]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["Name"] = "混乱烙印",
						["ShowTimerText"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "法术",
								},
							},
						},
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
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "COMBAT",
								["Unit"] = "target",
							}, -- [1]
							["n"] = 1,
						},
					}, -- [3]
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "COUNTER",
								["Operator"] = ">=",
								["Name"] = "xiaoguai",
							}, -- [1]
							{
								["Type"] = "COMBAT",
							}, -- [2]
							{
								["Type"] = "UNITSPEC",
								["BitFlags"] = {
									[103] = true,
									[104] = true,
								},
							}, -- [3]
							["n"] = 3,
						},
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "icon2",
								["Texts"] = {
									"[Counter(\"xiaoguai\")]", -- [1]
								},
							},
						},
						["CustomTex"] = "88163",
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
				},
				["Name"] = "物理法术易伤",
				["Point"] = {
					["y"] = 118,
					["x"] = 209,
					["point"] = "BOTTOM",
					["relativePoint"] = "BOTTOM",
				},
			}, -- [8]
			{
				["GUID"] = "TMW:group:1S6PlX1gRNSF",
				["Point"] = {
					["y"] = 312,
					["x"] = -530,
				},
				["Scale"] = 1.28,
				["Locked"] = true,
				["Columns"] = 1,
				["Icons"] = {
					{
						["OnlyMine"] = true,
						["Type"] = "buff",
						["Enabled"] = true,
						["Name"] = "进食充分",
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
						["ShowTimerText"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "食物",
								},
							},
						},
						["CustomTex"] = "19705",
						["States"] = {
							{
								["Alpha"] = 0,
							}, -- [1]
							{
								["Alpha"] = 1,
							}, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["Conditions"] = {
							{
								["Type"] = "ALIVE",
								["AndOr"] = "OR",
							}, -- [1]
							{
								["Type"] = "COMBAT",
								["Level"] = 1,
							}, -- [2]
							{
								["Type"] = "BUFFDUR",
								["Checked"] = true,
								["Operator"] = "<=",
								["Name"] = "进食充分",
								["Level"] = 300,
							}, -- [3]
							["n"] = 3,
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
					{
						["Type"] = "buff",
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
					}, -- [8]
					{
						["OnlyMine"] = true,
						["Type"] = "buff",
						["Enabled"] = true,
						["Name"] = "257408; 257410; 257413; 257415; 257418; 257420; 257422; 257424; 259448; 259449; 259452; 259453; 259454; 259455; 259456; 259457",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "食物",
								},
							},
						},
						["CustomTex"] = "19705",
						["States"] = {
							{
								["Alpha"] = 0,
							}, -- [1]
							{
								["Alpha"] = 0.5,
							}, -- [2]
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
						["OnlyMine"] = true,
						["Type"] = "buff",
						["Enabled"] = true,
						["Name"] = "战痕强化",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									[2] = "符文",
								},
							},
						},
						["CustomTex"] = "270058",
						["States"] = {
							{
								["Alpha"] = 0,
							}, -- [1]
							{
								["Alpha"] = 0.5,
							}, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
					}, -- [11]
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
				},
				["Name"] = "合计食物符文buff",
			}, -- [9]
			{
				["GUID"] = "TMW:group:1SVBWP9PEHlG",
				["Locked"] = true,
				["Icons"] = {
					{
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "icon2",
								["Texts"] = {
									"[PercentHP:Percent:HPColor] ", -- [1]
									"[(HP:Length >= 5 ? HP:Truncate(HP:Length - 4, nil):HPColor \" \\228\\184\\135\" ! HP:HPColor)]", -- [2]
									"", -- [3]
									"", -- [4]
								},
							},
						},
						["CustomTex"] = "none",
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
						["Type"] = "conditionicon",
						["Enabled"] = true,
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1SNOoinspdY9",
								["Texts"] = {
									"[xishou:Color(\"FF7F00\") xishou_mofa:Yellow xishou_wuli:White jian:Color(\"FF7F00\") jian_mofa:Yellow jian_fanwei:Yellow jian_wuli:White jia_xueliang:Green]", -- [1]
								},
							},
						},
						["CustomTex"] = "none",
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
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
					}, -- [151]
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
					}, -- [152]
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
					}, -- [153]
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
					}, -- [154]
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
					}, -- [155]
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
					}, -- [156]
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
					}, -- [157]
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
					}, -- [158]
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
					}, -- [159]
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
					}, -- [160]
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
					}, -- [161]
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
					}, -- [162]
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
					}, -- [163]
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
					}, -- [164]
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
					}, -- [165]
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
					}, -- [166]
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
					}, -- [167]
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
					}, -- [168]
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
					}, -- [169]
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
					}, -- [170]
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
					}, -- [171]
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
					}, -- [172]
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
					}, -- [173]
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
					}, -- [174]
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
					}, -- [175]
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
					}, -- [176]
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
					}, -- [177]
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
					}, -- [178]
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
					}, -- [179]
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
					}, -- [180]
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
					}, -- [181]
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
					}, -- [182]
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
					}, -- [183]
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
					}, -- [184]
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
					}, -- [185]
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
					}, -- [186]
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
					}, -- [187]
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
					}, -- [188]
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
					}, -- [189]
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
					}, -- [190]
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
					}, -- [191]
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
					}, -- [192]
				},
				["Name"] = "生命值+吸收盾减伤增益统计",
				["Point"] = {
					["y"] = 77,
					["point"] = "BOTTOM",
					["relativePoint"] = "BOTTOM",
				},
			}, -- [10]
			{
				["GUID"] = "TMW:group:1SYgdLtE7uKD",
				["Scale"] = 1,
				["TextureName"] = "Gloss",
				["Locked"] = true,
				["Columns"] = 1,
				["Icons"] = {
					{
						["Type"] = "swingtimer",
						["Enabled"] = true,
						["Conditions"] = {
							{
								["Type"] = "UNITSPEC",
								["BitFlags"] = {
									[104] = true,
									[103] = true,
								},
							}, -- [1]
							["n"] = 1,
						},
						["SettingsPerView"] = {
							["bar"] = {
								["TextLayout"] = "bar1",
							},
						},
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
					}, -- [1]
					{
						["Type"] = "swingtimer",
						["SwingTimerSlot"] = "SecondaryHandSlot",
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
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
					}, -- [151]
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
					}, -- [152]
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
					}, -- [153]
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
					}, -- [154]
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
					}, -- [155]
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
					}, -- [156]
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
					}, -- [157]
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
					}, -- [158]
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
					}, -- [159]
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
					}, -- [160]
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
					}, -- [161]
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
					}, -- [162]
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
					}, -- [163]
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
					}, -- [164]
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
					}, -- [165]
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
					}, -- [166]
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
					}, -- [167]
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
					}, -- [168]
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
					}, -- [169]
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
					}, -- [170]
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
					}, -- [171]
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
					}, -- [172]
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
					}, -- [173]
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
					}, -- [174]
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
					}, -- [175]
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
					}, -- [176]
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
					}, -- [177]
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
					}, -- [178]
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
					}, -- [179]
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
					}, -- [180]
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
					}, -- [181]
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
					}, -- [182]
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
					}, -- [183]
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
					}, -- [184]
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
					}, -- [185]
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
					}, -- [186]
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
					}, -- [187]
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
					}, -- [188]
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
					}, -- [189]
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
					}, -- [190]
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
					}, -- [191]
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
					}, -- [192]
				},
				["Name"] = "攻击计时条",
				["SettingsPerView"] = {
					["bar"] = {
						["SizeX"] = 220,
						["SizeY"] = 30,
					},
				},
				["View"] = "bar",
				["Point"] = {
					["y"] = -355,
					["x"] = 105,
				},
			}, -- [11]
			{
				["Scale"] = 0.8,
				["Rows"] = 3,
				["Locked"] = true,
				["Controlled"] = true,
				["Columns"] = 10,
				["Icons"] = {
					{
						["Unit"] = "nameplate",
						["Type"] = "unitcondition",
						["UnitConditions"] = {
							{
								["Type"] = "SPELLRANGE",
								["Name"] = "裂伤",
							}, -- [1]
							{
								["Type"] = "SPELLRANGE",
								["Name"] = "影袭",
								["AndOr"] = "OR",
							}, -- [2]
							{
								["Type"] = "SPELLRANGE",
								["Name"] = "毁伤",
								["AndOr"] = "OR",
							}, -- [3]
							["n"] = 3,
						},
						["Enabled"] = true,
						["Events"] = {
							{
								["Type"] = "Counter",
								["CounterAmt"] = 0,
								["Counter"] = "xiaoguai",
								["CounterOperation"] = "=",
								["Event"] = "OnEventsRestored",
							}, -- [1]
							{
								["PassingCndt"] = true,
								["Type"] = "Counter",
								["CndtJustPassed"] = true,
								["Counter"] = "xiaoguai",
								["Event"] = "OnShow",
							}, -- [2]
							{
								["Type"] = "Counter",
								["Counter"] = "xiaoguai",
								["CounterOperation"] = "-",
								["Event"] = "OnHide",
							}, -- [3]
							["n"] = 3,
						},
						["UnConditionDur"] = 1,
						["GUID"] = "TMW:icon:1RP6q4xVxfX=",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "icon1",
								["Texts"] = {
									[2] = "",
								},
							},
						},
						["CustomTex"] = "68338",
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
						["GUID"] = "TMW:icon:1RNozLnEV2bc",
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
						["GUID"] = "TMW:icon:1RNozLnEZQ61",
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
				},
				["Name"] = "近战范围小怪的数量",
				["GUID"] = "TMW:group:1RNozLnGszMQ",
				["Point"] = {
					["y"] = 517.89988654852,
					["x"] = -408.88866265615,
				},
			}, -- [12]
			{
				["Point"] = {
					["y"] = 200,
					["x"] = 550,
				},
				["Scale"] = 1.3,
				["Rows"] = 2,
				["Locked"] = true,
				["Columns"] = 7,
				["Icons"] = {
					{
						["Type"] = "buff",
						["Enabled"] = true,
						["ShowTimerText"] = true,
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
						["GUID"] = "TMW:icon:1RpbCk93aVEj",
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
						["FakeHidden"] = true,
					}, -- [1]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Type"] = "buff",
						["Enabled"] = true,
						["ShowTimerText"] = true,
						["GUID"] = "TMW:icon:1RdO2807n5Jj",
						["CustomTex"] = "25771",
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["Name"] = "自律",
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
						["FakeHidden"] = true,
					}, -- [2]
					{
						["Type"] = "meta",
						["Icons"] = {
							"TMW:icon:1RpYXZ4wPw5Q", -- [1]
							"TMW:icon:1RpYXZ4xvYty", -- [2]
						},
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
						["Enabled"] = true,
						["GUID"] = "TMW:icon:1RpmpIQ95T_q",
						["CustomTex"] = "79558",
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
						["Events"] = {
							{
								["AnimColor"] = "80991f1f",
								["Type"] = "Animations",
								["Period"] = 0.6,
								["Animation"] = "SCREENFLASH",
								["Event"] = "WCSP",
								["OnConditionConditions"] = {
									{
										["Type"] = "ALIVE",
									}, -- [1]
									{
										["Type"] = "HEALTH",
										["Operator"] = "<=",
										["Level"] = 25,
									}, -- [2]
									["n"] = 2,
								},
							}, -- [1]
							{
								["Type"] = "Sound",
								["Sound"] = "Boxing Arena Gong",
								["Event"] = "WCSP",
								["OnConditionConditions"] = {
									{
										["Type"] = "ALIVE",
									}, -- [1]
									{
										["Type"] = "HEALTH",
										["Operator"] = "<=",
										["Level"] = 25,
									}, -- [2]
									["n"] = 2,
								},
								["Frequency"] = 5,
							}, -- [2]
							["n"] = 2,
						},
					}, -- [5]
					{
						["Type"] = "buff",
						["Name"] = "BurstHaste; 雷皮之槌; 死亡凶蛮战鼓",
						["ShowTimerText"] = true,
						["GUID"] = "TMW:icon:1RpbOAxKP4Vy",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
						["FakeHidden"] = true,
					}, -- [6]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Type"] = "buff",
						["Enabled"] = true,
						["ShowTimerText"] = true,
						["GUID"] = "TMW:icon:1RpbOAxO6pac",
						["States"] = {
							{
								["Alpha"] = 0.5,
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["Name"] = "筋疲力尽; 疲倦; 时空错位; 心满意足",
						["FakeHidden"] = true,
					}, -- [7]
					{
						["Unit"] = "target",
						["Type"] = "buff",
						["Enabled"] = true,
						["Name"] = "保护祝福; 破咒祝福",
						["FakeHidden"] = true,
						["GUID"] = "TMW:icon:1RvaMBPkzihB",
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["ShowTimerText"] = true,
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
					}, -- [8]
					{
						["BuffOrDebuff"] = "HARMFUL",
						["Unit"] = "target",
						["Type"] = "buff",
						["Enabled"] = true,
						["Name"] = "自律",
						["GUID"] = "TMW:icon:1RvaMBPmmt0y",
						["CustomTex"] = "25771",
						["States"] = {
							{
							}, -- [1]
							nil, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["ShowTimerText"] = true,
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnStart",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
						["FakeHidden"] = true,
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
					}, -- [12]
					{
						["Type"] = "icd",
						["Name"] = "回声防护: 30",
						["ShowTimerText"] = true,
						["GUID"] = "TMW:icon:1RpYXZ4xvYty",
						["SettingsPerView"] = {
							["icon"] = {
								["Texts"] = {
									"", -- [1]
									"", -- [2]
								},
							},
						},
						["CustomTex"] = "269279",
						["States"] = {
							{
								["Alpha"] = 0,
							}, -- [1]
							{
								["Alpha"] = 0.5,
							}, -- [2]
							{
							}, -- [3]
							{
							}, -- [4]
						},
						["Enabled"] = true,
						["FakeHidden"] = true,
					}, -- [13]
					{
						["OnlyMine"] = true,
						["Type"] = "buff",
						["ShowTTText"] = 1,
						["Name"] = "回声防护",
						["ShowTimerText"] = true,
						["GUID"] = "TMW:icon:1RpYXZ4wPw5Q",
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
								["Texts"] = {
									"", -- [1]
									"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
								},
							},
						},
						["CustomTex"] = "269279",
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
						["Events"] = {
							{
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [1]
							["n"] = 1,
						},
						["FakeHidden"] = true,
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
				},
				["Name"] = "公用备用",
				["GUID"] = "TMW:group:1RpbB5IN2RD2",
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
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
					}, -- [151]
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
					}, -- [152]
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
					}, -- [153]
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
					}, -- [154]
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
					}, -- [155]
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
					}, -- [156]
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
					}, -- [157]
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
					}, -- [158]
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
					}, -- [159]
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
					}, -- [160]
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
					}, -- [161]
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
					}, -- [162]
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
					}, -- [163]
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
					}, -- [164]
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
					}, -- [165]
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
					}, -- [166]
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
					}, -- [167]
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
					}, -- [168]
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
					}, -- [169]
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
					}, -- [170]
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
					}, -- [171]
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
					}, -- [172]
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
					}, -- [173]
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
					}, -- [174]
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
					}, -- [175]
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
					}, -- [176]
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
					}, -- [177]
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
					}, -- [178]
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
					}, -- [179]
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
					}, -- [180]
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
					}, -- [181]
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
					}, -- [182]
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
					}, -- [183]
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
					}, -- [184]
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
					}, -- [185]
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
					}, -- [186]
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
					}, -- [187]
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
					}, -- [188]
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
					}, -- [189]
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
					}, -- [190]
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
					}, -- [191]
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
					}, -- [192]
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
					}, -- [12]
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
					}, -- [13]
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
					}, -- [14]
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
					}, -- [15]
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
					}, -- [16]
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
					}, -- [17]
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
					}, -- [18]
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
					}, -- [19]
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
					}, -- [20]
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
					}, -- [21]
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
					}, -- [22]
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
					}, -- [23]
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
					}, -- [24]
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
					}, -- [25]
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
					}, -- [26]
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
					}, -- [27]
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
					}, -- [28]
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
					}, -- [29]
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
					}, -- [30]
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
					}, -- [31]
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
					}, -- [32]
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
					}, -- [33]
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
					}, -- [34]
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
					}, -- [35]
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
					}, -- [36]
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
					}, -- [37]
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
					}, -- [38]
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
					}, -- [39]
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
					}, -- [40]
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
					}, -- [41]
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
					}, -- [42]
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
					}, -- [43]
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
					}, -- [44]
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
					}, -- [45]
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
					}, -- [46]
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
					}, -- [47]
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
					}, -- [48]
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
					}, -- [49]
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
					}, -- [50]
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
					}, -- [51]
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
					}, -- [52]
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
					}, -- [53]
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
					}, -- [54]
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
					}, -- [55]
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
					}, -- [56]
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
					}, -- [57]
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
					}, -- [58]
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
					}, -- [59]
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
					}, -- [60]
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
					}, -- [61]
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
					}, -- [62]
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
					}, -- [63]
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
					}, -- [64]
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
					}, -- [65]
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
					}, -- [66]
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
					}, -- [67]
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
					}, -- [68]
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
					}, -- [69]
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
					}, -- [70]
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
					}, -- [71]
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
					}, -- [72]
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
					}, -- [73]
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
					}, -- [74]
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
					}, -- [75]
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
					}, -- [76]
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
					}, -- [77]
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
					}, -- [78]
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
					}, -- [79]
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
					}, -- [80]
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
					}, -- [81]
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
					}, -- [82]
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
					}, -- [83]
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
					}, -- [84]
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
					}, -- [85]
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
					}, -- [86]
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
					}, -- [87]
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
					}, -- [88]
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
					}, -- [89]
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
					}, -- [90]
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
					}, -- [91]
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
					}, -- [92]
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
					}, -- [93]
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
					}, -- [94]
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
					}, -- [95]
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
					}, -- [96]
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
					}, -- [97]
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
					}, -- [98]
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
					}, -- [99]
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
					}, -- [100]
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
					}, -- [101]
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
					}, -- [102]
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
					}, -- [103]
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
					}, -- [104]
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
					}, -- [105]
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
					}, -- [106]
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
					}, -- [107]
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
					}, -- [108]
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
					}, -- [109]
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
					}, -- [110]
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
					}, -- [111]
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
					}, -- [112]
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
					}, -- [113]
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
					}, -- [114]
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
					}, -- [115]
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
					}, -- [116]
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
					}, -- [117]
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
					}, -- [118]
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
					}, -- [119]
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
					}, -- [120]
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
					}, -- [121]
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
					}, -- [122]
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
					}, -- [123]
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
					}, -- [124]
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
					}, -- [125]
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
					}, -- [126]
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
					}, -- [127]
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
					}, -- [128]
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
					}, -- [129]
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
					}, -- [130]
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
					}, -- [131]
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
					}, -- [132]
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
					}, -- [133]
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
					}, -- [134]
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
					}, -- [135]
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
					}, -- [136]
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
					}, -- [137]
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
					}, -- [138]
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
					}, -- [139]
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
					}, -- [140]
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
					}, -- [141]
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
					}, -- [142]
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
					}, -- [143]
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
					}, -- [144]
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
					}, -- [145]
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
					}, -- [146]
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
					}, -- [147]
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
					}, -- [148]
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
					}, -- [149]
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
					}, -- [150]
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
					}, -- [151]
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
					}, -- [152]
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
					}, -- [153]
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
					}, -- [154]
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
					}, -- [155]
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
					}, -- [156]
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
					}, -- [157]
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
					}, -- [158]
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
					}, -- [159]
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
					}, -- [160]
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
					}, -- [161]
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
					}, -- [162]
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
					}, -- [163]
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
					}, -- [164]
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
					}, -- [165]
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
					}, -- [166]
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
					}, -- [167]
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
					}, -- [168]
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
					}, -- [169]
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
					}, -- [170]
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
					}, -- [171]
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
					}, -- [172]
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
					}, -- [173]
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
					}, -- [174]
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
					}, -- [175]
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
					}, -- [176]
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
					}, -- [177]
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
					}, -- [178]
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
					}, -- [179]
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
					}, -- [180]
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
					}, -- [181]
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
					}, -- [182]
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
					}, -- [183]
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
					}, -- [184]
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
					}, -- [185]
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
					}, -- [186]
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
					}, -- [187]
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
					}, -- [188]
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
					}, -- [189]
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
					}, -- [190]
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
					}, -- [191]
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
					}, -- [192]
				},
			}, -- [15]
		},
		["Interval"] = 0.09,
		["AllowCombatConfig"] = true,
		["ReceiveComm"] = false,
		["HelpSettings"] = {
			["ICON_DURS_FIRSTSEE"] = true,
			["SUG_FIRSTHELP"] = true,
			["SCROLLBAR_DROPDOWN"] = true,
			["CNDT_ANDOR_FIRSTSEE"] = true,
			["ICON_POCKETWATCH_FIRSTSEE"] = true,
			["CNDT_PARENTHESES_FIRSTSEE"] = true,
			["ICON_EXPORT_DOCOPY"] = true,
		},
	},
	["Version"] = 91200,
	["profiles"] = {
		["Magiccreamdz - 凤凰之神"] = {
			["DrawEdge"] = true,
			["Version"] = 90301,
			["ForceNoBlizzCC"] = true,
			["NumGroups"] = 16,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "汇帆; 徘徊的灵魂",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Duration"] = 2,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "公事公办; 血之气息",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["ShowTimerText"] = true,
							["Name"] = "沸腾怒气",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Icons"] = {
								"TMW:icon:1TXOvyovyc0X", -- [1]
								"TMW:icon:1SYKXeAFr5rG", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [2]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [3]
								{
									["Type"] = "Animations",
									["Event"] = "OnHide",
									["Animation"] = "ICONCLEAR",
								}, -- [4]
								["n"] = 4,
							},
							["Name"] = "诡诈; 刺客大师",
							["Conditions"] = {
								{
									["Name"] = "潜行",
									["Type"] = "STANCE",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "256735",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["ShowTimerText"] = true,
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
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "敏锐",
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
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "毒伤",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
							["Name"] = "深谋远虑",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "深谋远虑",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["TimerBar_EnableColors"] = true,
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
						}, -- [7]
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
							["Name"] = "切割",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Level"] = 5,
											["Type"] = "BUFFDUR",
											["Name"] = "切割",
											["Operator"] = "<",
										}, -- [2]
										["n"] = 2,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["TimerBar_EnableColors"] = true,
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
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
					},
					["Role"] = 1,
					["Name"] = "奇袭自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[260] = false,
						[102] = false,
						[104] = false,
						[261] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = -185,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1TcXXU2o44SN",
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
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
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "锁喉",
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
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
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "割裂",
							["Type"] = "buff",
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "猩红风暴",
							["Conditions"] = {
								{
									["Name"] = "猩红风暴",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "公事公办",
							["ShowTimerText"] = true,
							["CustomTex"] = "286581",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["OnConditionConditions"] = {
										{
											["Level"] = 600,
											["Type"] = "BUFFDUR",
											["Name"] = "致命药膏",
											["Operator"] = "<=",
										}, -- [1]
										{
											["Level"] = 600,
											["Type"] = "BUFFDUR",
											["Name"] = "致伤药膏",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Level"] = 600,
									["Type"] = "BUFFDUR",
									["Name"] = "致命药膏",
									["Operator"] = "<=",
								}, -- [1]
								{
									["Level"] = 600,
									["Type"] = "BUFFDUR",
									["Name"] = "致伤药膏",
									["Operator"] = "<=",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "致命药膏; 致伤药膏",
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
								[102] = {
									["Alpha"] = 0.5,
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["Name"] = "减速药膏",
							["Conditions"] = {
								{
									["Level"] = 600,
									["Type"] = "BUFFDUR",
									["Name"] = "减速药膏",
									["Operator"] = "<=",
								}, -- [1]
								["n"] = 1,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Level"] = 600,
											["Name"] = "减速药膏",
											["Operator"] = "<=",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
								}, -- [1]
								["n"] = 1,
							},
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
								[102] = {
									["Alpha"] = 0.5,
								},
							},
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "奇袭目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[261] = false,
						[260] = false,
					},
					["Columns"] = 8,
				}, -- [2]
				{
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
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
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Name"] = "宿敌",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "宿敌",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "宿敌",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "淬毒之刃",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "淬毒之刃",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "淬毒之刃",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["AndOr"] = "OR",
									["Name"] = "淬毒之刃",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "内出血",
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["Name"] = "迟缓毒液",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "神经冲击",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["ShowTimerText"] = true,
							["Unit"] = "target",
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "奇袭目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[260] = false,
						[102] = false,
						[261] = false,
						[104] = false,
					},
					["Columns"] = 8,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1PTG53mjKRE8",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "审时度势",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "288988",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1RoG_qf_CyOQ", -- [1]
								"TMW:icon:1RoG_qg0ZwZp", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["GUID"] = "TMW:icon:1R=Wrzs9YCWm",
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["Name"] = "神射手",
							["CustomTex"] = "272940",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["ShowTimerText"] = true,
							["Name"] = "冲动",
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "冲动",
									["Operator"] = ">",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "冲动",
									["AndOr"] = "OR",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
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
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "可乘之机",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "195627",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "buff",
							["Conditions"] = {
								{
									["Name"] = "敏锐",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "敏锐",
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "buff",
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "剑刃乱舞",
									["Operator"] = ">",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "SPELLCHARGES",
									["Name"] = "剑刃乱舞",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "剑刃乱舞",
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
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "狂徒自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[259] = false,
						[104] = false,
						[261] = false,
					},
					["Point"] = {
						["y"] = -79.29687181674,
						["x"] = -184.64839411775,
					},
				}, -- [4]
				{
					["GUID"] = "TMW:group:1PTG0tUByGo5",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]暴击", -- [2]
									},
								},
							},
							["Name"] = "残忍精准",
							["OnlyMine"] = true,
							["CustomTex"] = "193357",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]攻速",
									},
								},
							},
							["Name"] = "大乱斗",
							["Type"] = "buff",
							["CustomTex"] = "193358",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "强势连击",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]连击",
									},
								},
							},
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["CustomTex"] = "193356",
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "骷髅黑帆",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]影袭",
									},
								},
							},
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["CustomTex"] = "199603",
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
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]减cd", -- [2]
									},
								},
							},
							["Name"] = "精准定位",
							["Type"] = "buff",
							["CustomTex"] = "193359",
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
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]回能", -- [2]
									},
								},
							},
							["Name"] = "埋藏的宝藏",
							["Type"] = "buff",
							["CustomTex"] = "199600",
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "蛇眼",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]", -- [2]
									},
								},
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["ShowTimerText"] = true,
							["CustomTex"] = "275863",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "狂徒骰子buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[259] = false,
						[104] = false,
						[261] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = 184.6485419174,
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1RmpZ=HhcH27",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "欺凌",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["BuffOrDebuff"] = "HARMFUL",
							["Icons"] = {
								"TMW:icon:1TGNOOE47FHj", -- [1]
								"TMW:icon:1TGNOOE6ERyL", -- [2]
							},
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "标记死穴",
							["ShowTimerText"] = true,
							["CustomTex"] = "303568",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "导电墨汁",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "302565",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "恶毒胆汁",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "281721",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "徘徊的灵魂",
							["CustomTex"] = "280204",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "死亡标记",
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
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "死疽之触",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "71877",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Role"] = 1,
					["Name"] = "狂徒目标debuff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[259] = false,
						[261] = false,
					},
					["Point"] = {
						["y"] = -50,
						["x"] = 184.64848088225,
					},
				}, -- [6]
				{
					["GUID"] = "TMW:group:1RsYNvY7pqI6",
					["Point"] = {
						["y"] = -79.29687181674,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "buff",
							["Conditions"] = {
								{
									["Name"] = "袖剑旋风",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["PrtsBefore"] = 1,
									["Type"] = "BUFFDUR",
									["Name"] = "袖剑旋风",
									["Operator"] = ">",
								}, -- [2]
								{
									["AndOr"] = "OR",
									["Type"] = "SPELLCD",
									["PrtsAfter"] = 1,
									["Name"] = "袖剑旋风",
								}, -- [3]
								["n"] = 3,
							},
							["Name"] = "袖剑旋风",
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "袖剑连击",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "暗影之刃",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "暗影之刃",
									["Operator"] = ">",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "暗影之刃",
									["AndOr"] = "OR",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "死亡符记",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "死亡符记",
									["Operator"] = ">",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Name"] = "死亡符记",
									["Type"] = "SPELLCD",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "暗影之舞",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "暗影之舞",
									["Operator"] = ">",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "暗影之舞",
									["AndOr"] = "OR",
								}, -- [2]
								["n"] = 2,
							},
							["ShowTimerText"] = true,
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
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Role"] = 1,
					["Name"] = "敏锐自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[260] = false,
						[259] = false,
					},
					["Columns"] = 8,
				}, -- [7]
				{
					["GUID"] = "TMW:group:1RsYLp9jaavi",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "夜刃",
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
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
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "洞悉弱点",
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
					},
					["Role"] = 1,
					["Name"] = "敏锐目标debuff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[259] = false,
						[260] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
				}, -- [8]
				{
					["GUID"] = "TMW:group:1RsYVXRmtP2d",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "敏锐目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[259] = false,
						[260] = false,
					},
					["Columns"] = 8,
				}, -- [9]
				{
					["GUID"] = "TMW:group:1Rqr9g6eiA7q",
					["Point"] = {
						["y"] = -20,
						["x"] = 185,
					},
					["Name"] = "精华特质饰品",
					["Locked"] = true,
					["Columns"] = 8,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "生命之凝力; 仇敌之血; 295368",
							["ShowTimerText"] = true,
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "303568",
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "导电墨汁",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Unit"] = "target",
											["Level"] = 35,
											["Type"] = "HEALTH",
											["Operator"] = "<=",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "302565",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1TGNOOE47FHj",
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Duration"] = 2,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "标记死穴",
							["Enabled"] = true,
							["CustomTex"] = "268756",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Scale"] = 1.28,
				}, -- [10]
				{
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Scale"] = 1.28,
					["Columns"] = 8,
					["EnabledSpecs"] = {
						[104] = false,
						[105] = false,
						[102] = false,
					},
					["Locked"] = true,
					["Point"] = {
						["y"] = -50,
						["x"] = -185,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "隐刃",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFSTACKS",
											["Level"] = 15,
											["Name"] = "隐刃",
											["Operator"] = ">=",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "270061",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 5,
									["Animation"] = "ICONSHAKE",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "装死; 装死",
							["BuffOrDebuff"] = "EITHER",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 0.5,
								},
								[4] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "raid 1-40; group 1-40; player",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[Unit(icon=\"TMW:icon:1S0zr0qY2HPQ\"):Name(server=false)]",
									},
								},
							},
							["Name"] = "嫁祸诀窍",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "消失",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "猩红之瓶",
							["Events"] = {
								{
									["Duration"] = 2,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "佯攻",
							["Type"] = "buff",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "闪避; 还击",
							["Type"] = "buff",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "暗影斗篷",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Name"] = "盗贼各种buff",
				}, -- [11]
				{
					["GUID"] = "TMW:group:1TEwsj7jSaQY",
					["Name"] = "盗贼特质精华",
					["Scale"] = 1.28,
					["Locked"] = true,
					["Columns"] = 8,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "吸血鬼之速; 宝石皮肤",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "元素回旋; 元素回旋; 元素回旋; 元素回旋",
							["CustomTex"] = "268953",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
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
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "不稳定的烈焰",
							["CustomTex"] = "279902",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "压倒能量; 大地链接",
							["Type"] = "buff",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Level"] = 8,
											["Type"] = "BUFFSTACKS",
											["Name"] = "295248",
											["Operator"] = ">=",
										}, -- [1]
										{
											["Type"] = "BUFFSTACKS",
											["Name"] = "斗争",
											["Level"] = 5,
											["AndOr"] = "OR",
											["Operator"] = ">=",
										}, -- [2]
										["n"] = 2,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "专注能量; 斗争; 净化协议",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "清醒梦境",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["GUID"] = "TMW:icon:1TXBWimoFQSM",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFSTACKS",
											["Level"] = 5,
											["Name"] = "专注能量",
											["Operator"] = ">=",
										}, -- [1]
										{
											["Type"] = "BUFFSTACKS",
											["Name"] = "浸血",
											["Level"] = 30,
											["AndOr"] = "OR",
											["Operator"] = ">=",
										}, -- [2]
										{
											["AndOr"] = "OR",
											["Type"] = "BUFFDUR",
											["Name"] = "297168",
											["Operator"] = ">",
										}, -- [3]
										{
											["Level"] = 5,
											["AndOr"] = "OR",
											["Name"] = "艾泽拉斯守护者",
											["Type"] = "BUFFSTACKS",
										}, -- [4]
										["n"] = 4,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["Name"] = "艾泽拉斯守护者; 297168; 297162; 295378",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1RpYXZ4wPw5Q", -- [1]
								"TMW:icon:1RpYXZ4xvYty", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
				}, -- [12]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Columns"] = 8,
					["Point"] = {
						["y"] = 10,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Locked"] = true,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "敏捷战斗药水; 无拘之怒药水",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
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
							["GUID"] = "TMW:icon:1PVpSt5Sl_k4",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1R_56ArgI0dw", -- [1]
								"TMW:icon:1RqZxqn8=4A=", -- [2]
								"TMW:icon:1R_56ArevawR", -- [3]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
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
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "300893",
							["CustomTex"] = "300893",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "注铅骰子 - 精通; 注铅骰子 - 精通; 注铅骰子 - 爆击; 注铅骰子 - 爆击; 注铅骰子 - 急速; 注铅骰子 - 急速",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
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
							["ShowTimerText"] = true,
							["CustomTex"] = "195305",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["GUID"] = "TMW:icon:1RpmpHWt47N2",
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "非凡的力量; 296962; 标记死穴",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["ShowTimerText"] = true,
							["Enabled"] = true,
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["GUID"] = "TMW:icon:1TGNOOE6ERyL",
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "303570; 奥术风暴; 金色光泽",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Enabled"] = true,
							["ShowTimerText"] = true,
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "疾跑; 暗影步",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Duration"] = 2,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1PVpSt5_uqrg",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["GUID"] = "TMW:icon:1Tr0IHSC_pCf",
							["Type"] = "buff",
							["Name"] = "潜行",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
					},
					["Name"] = "药水饰品附魔触发Buff",
				}, -- [13]
				{
					["GUID"] = "TMW:group:1Rm7b2RIvaXs",
					["Name"] = "dz控制",
					["Columns"] = 8,
					["Locked"] = true,
					["Point"] = {
						["y"] = 10,
						["x"] = 185,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "正中眉心; 肾击; 偷袭",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "锁喉 - 沉默",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "手枪射击; 减速药膏; 暗影之握",
							["ShowTimerText"] = true,
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["Name"] = "致盲",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "闷棍",
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
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "凿击",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Name"] = "死亡标记",
							["CustomTex"] = "137619",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["BuffOrDebuff"] = "EITHER",
							["Name"] = "永恒风暴",
							["CustomTex"] = "303731",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
					},
					["Scale"] = 1.28,
				}, -- [14]
				{
					["GUID"] = "TMW:group:1Ppig=lKhJSe",
					["Name"] = "dz备用",
					["Point"] = {
						["y"] = 125,
						["x"] = 540,
					},
					["Locked"] = true,
					["Scale"] = 1.3,
					["Rows"] = 3,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "影舞步",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1RoG_qf_CyOQ",
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "影舞步",
									["Operator"] = ">",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "影舞步",
									["AndOr"] = "OR",
								}, -- [2]
								{
									["Name"] = "影舞步",
									["Type"] = "TALENTLEARNED",
								}, -- [3]
								["n"] = 3,
							},
							["ShowTimerText"] = true,
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
						}, -- [1]
						{
							["GUID"] = "TMW:icon:1RoG_qg0ZwZp",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "刀锋冲刺",
									["Operator"] = ">",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Name"] = "刀锋冲刺",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Name"] = "刀锋冲刺",
									["Type"] = "TALENTLEARNED",
								}, -- [3]
								["n"] = 3,
							},
							["Name"] = "刀锋冲刺",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["Name"] = "注铅骰子 - 精通; 注铅骰子 - 精通; 注铅骰子 - 爆击; 注铅骰子 - 爆击; 注铅骰子 - 急速; 注铅骰子 - 急速",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "195305",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1RqZxqn8=4A=",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["AndOr"] = "OR",
											["Type"] = "BUFFDUR",
											["Name"] = "268904",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "致命远航",
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "精湛远航",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["AndOr"] = "OR",
											["Name"] = "268898",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1RqZxqnASFO6",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [6]
						{
							["GUID"] = "TMW:icon:1R_56ArgI0dw",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "迅击风暴",
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "267612",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["GUID"] = "TMW:icon:1R_56ArevawR",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "迅捷远航",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["AndOr"] = "OR",
											["Type"] = "BUFFDUR",
											["Name"] = "268893",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [8]
						{
							["GUID"] = "TMW:icon:1TXOvyovyc0X",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["Name"] = "沸腾怒气",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								{
									["Type"] = "Animations",
									["Event"] = "OnHide",
									["Animation"] = "ICONCLEAR",
								}, -- [3]
								["n"] = 3,
							},
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Name"] = "仇敌之血",
									["Type"] = "AZESSLEARNED_MAJOR",
								}, -- [1]
								{
									["Name"] = "仇敌之血",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "沸腾怒气",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["CustomTex"] = "297126",
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
						}, -- [9]
						{
							["GUID"] = "TMW:icon:1SYKXeAFr5rG",
							["FakeHidden"] = true,
							["OnlyIfCounting"] = true,
							["OnlyEquipped"] = true,
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
								[10] = {
									["Alpha"] = 1,
								},
							},
							["Enabled"] = true,
							["Type"] = "cleu",
							["ConditionDurEnabled"] = true,
							["CLEUDur"] = 30,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["CLEUNoRefresh"] = true,
							["SourceUnit"] = "player",
							["Name"] = "艾泽拉斯守护者",
							["ConditionDur"] = 10,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								{
									["Type"] = "Animations",
									["Event"] = "OnHide",
									["Animation"] = "ICONCLEAR",
								}, -- [3]
								["n"] = 3,
							},
							["CustomTex"] = "295840",
							["OnlyMine"] = true,
							["Conditions"] = {
								{
									["Name"] = "生命之凝力",
									["Type"] = "AZESSLEARNED_MAJOR",
								}, -- [1]
								{
									["Name"] = "艾泽拉斯守护者",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "艾泽拉斯守护者",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["ICDType"] = "spellcast",
							["OnlyInBags"] = true,
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["FakeHidden"] = true,
							["Icons"] = {
								"TMW:group:1RsGraGsR8rN", -- [1]
								"TMW:group:1RsGyTqADXKN", -- [2]
								"TMW:group:1RsYWCZBlLrD", -- [3]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [56]
					},
					["Columns"] = 8,
				}, -- [15]
				{
					["GUID"] = "TMW:group:1Ru2rC7AR4NZ",
					["Columns"] = 1,
					["Point"] = {
						["y"] = 20,
						["x"] = 0.00010479821191941,
					},
					["Scale"] = 2.4,
					["Name"] = "潜行",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "conditionicon",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Magnitude"] = 3,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"傻逼快潜行！！", -- [2]
									},
								},
							},
							["Conditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Level"] = 1,
									["Type"] = "COMBAT",
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "潜行",
									["Level"] = 1,
								}, -- [3]
								{
									["Level"] = 1,
									["Type"] = "MOUNTED",
								}, -- [4]
								{
									["Level"] = 1,
									["Type"] = "VEHICLE",
								}, -- [5]
								{
									["Type"] = "INSTANCE2",
									["Checked"] = true,
									["BitFlags"] = 1,
								}, -- [6]
								["n"] = 6,
							},
							["CustomTex"] = "1784",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Locked"] = true,
				}, -- [16]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [17]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [18]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
				}, -- [19]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [20]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
				}, -- [21]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
				}, -- [22]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
				}, -- [23]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [24]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
					},
				}, -- [25]
			},
		},
		["备份"] = {
			["DrawEdge"] = true,
			["ForceNoBlizzCC"] = true,
			["Version"] = 90301,
			["SoundChannel"] = "Master",
			["NumGroups"] = 20,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["PrtsBefore"] = 1,
											["Level"] = 4,
											["Unit"] = "target",
											["Operator"] = ">=",
										}, -- [2]
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["AndOr"] = "OR",
											["PrtsAfter"] = 1,
											["Unit"] = "target",
										}, -- [3]
										["n"] = 3,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["Level"] = 1,
											["Unit"] = "target",
											["Operator"] = ">=",
										}, -- [1]
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["Level"] = 3,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Type"] = "Animations",
									["Event"] = "OnCondition",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "溃烂之伤",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "邪恶虫群",
							["CustomTex"] = "115989",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
									["OnConditionConditions"] = {
										{
											["Unit"] = "target",
											["Level"] = 40,
											["Type"] = "HEALTH",
											["Operator"] = "<=",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "灵魂收割",
											["AndOr"] = "OR",
											["Operator"] = ">",
											["Unit"] = "target",
										}, -- [2]
										["n"] = 2,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "灵魂收割",
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
								}, -- [1]
								{
									["Name"] = "灵魂收割",
									["Type"] = "TALENTLEARNED",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Name"] = "灵魂收割",
									["PrtsBefore"] = 1,
									["Unit"] = "target",
									["Operator"] = ">",
								}, -- [3]
								{
									["Type"] = "HEALTH",
									["Unit"] = "target",
									["PrtsBefore"] = 1,
									["Level"] = 40,
									["AndOr"] = "OR",
									["Operator"] = "<=",
								}, -- [4]
								{
									["Type"] = "SPELLCD",
									["PrtsAfter"] = 2,
									["Name"] = "灵魂收割",
								}, -- [5]
								["n"] = 5,
							},
							["CustomTex"] = "343294",
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
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "pet",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Name"] = "控制亡灵",
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "控制亡灵",
											["Level"] = 60,
											["Unit"] = "pet",
											["Operator"] = "<=",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "pet",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "黑暗突变",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "conditionicon",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "注意宝宝！！",
									},
								},
							},
							["Conditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Level"] = 1,
									["Type"] = "MOUNTED",
								}, -- [2]
								{
									["BitFlags"] = {
										[3] = true,
										[0] = true,
									},
									["Type"] = "PETMODE2",
								}, -- [3]
								["n"] = 3,
							},
							["CustomTex"] = "46584",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
					},
					["Role"] = 1,
					["Name"] = "邪DK目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[251] = false,
						[102] = false,
						[104] = false,
						[250] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1Vwo0jA3uc0w",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "势不可挡",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "320786",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "不可思议的量子装置",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "330366",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "不洁之力",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "53365",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "邪DK目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[251] = false,
						[250] = false,
					},
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
				}, -- [2]
				{
					["GUID"] = "TMW:group:1VZ5J=3WQRK0",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "恶性瘟疫",
											["Level"] = 9,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "恶性瘟疫",
							["CustomTex"] = "191587",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "亡者大军",
							["ShowTimerText"] = true,
							["Type"] = "meta",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Icons"] = {
								"TMW:icon:1Vx7US6TlrO5", -- [1]
								"TMW:icon:1Vx7UXG6_f88", -- [2]
							},
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["Name"] = "天灾契约",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["CustomTex"] = "48743",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
					["Role"] = 1,
					["Name"] = "邪DK目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[250] = false,
						[251] = false,
						[104] = false,
						[102] = false,
					},
					["Columns"] = 8,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Point"] = {
						["y"] = -50,
						["x"] = -184.64839411775,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "愈合",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "激励兽群",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "280412",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "血祭之力",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "280409",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "黑暗援助",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 0.1,
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "末日突降",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["OnlyMine"] = true,
							["Name"] = "符文腐蚀",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Role"] = 1,
					["Name"] = "邪DK自身buff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[250] = false,
						[251] = false,
						[104] = false,
						[102] = false,
					},
					["Columns"] = 8,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Point"] = {
						["y"] = -80,
						["x"] = -184.64839411775,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "生存本能; 精通本能",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "邪恶突袭",
							["GUID"] = "TMW:icon:1Ppig=lgUPEg",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "邪恶突袭",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "邪恶突袭",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "邪恶突袭",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Name"] = "亡者大军",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Icons"] = {
								"TMW:icon:1S5xLgesVC3c", -- [1]
								"TMW:icon:1S5xMTIoIqzX", -- [2]
							},
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
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "亡者大军",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Icons"] = {
								"TMW:icon:1Vxzt9SGhxiH", -- [1]
								"TMW:icon:1VxztBIfqKaX", -- [2]
							},
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "邪恶虫群",
							["Conditions"] = {
								{
									["Name"] = "邪恶虫群",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "邪恶虫群",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "邪恶虫群",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "狂热畸兽",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "黑暗突变",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "狂热畸兽",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "334896",
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
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Role"] = 1,
					["Name"] = "邪DK自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[250] = false,
						[251] = false,
						[104] = false,
						[102] = false,
					},
					["Columns"] = 8,
				}, -- [5]
				{
					["GUID"] = "TMW:group:1PSqjlmIR3JQ",
					["Point"] = {
						["y"] = -80,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "精通本能",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["Duration"] = 2,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "273349",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "野蛮暴烈",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "289315",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
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
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "扭曲之爪",
							["CustomTex"] = "275909",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Name"] = "树皮术",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "树皮术",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "树皮术",
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
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "生存本能",
							["Conditions"] = {
								{
									["Name"] = "生存本能",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "生存本能",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Name"] = "50334",
									["Level"] = 1,
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "50334",
									["Operator"] = ">",
								}, -- [2]
								{
									["Level"] = 1,
									["Type"] = "SPELLCHARGES",
									["Name"] = "化身：乌索克的守护者",
									["AndOr"] = "OR",
								}, -- [3]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "化身：乌索克的守护者",
									["Operator"] = ">",
								}, -- [4]
								["n"] = 4,
							},
							["Name"] = "狂暴; 化身：乌索克的守护者",
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "狂暴回复",
							["Conditions"] = {
								{
									["Name"] = "熊形态",
									["Type"] = "STANCE",
								}, -- [1]
								{
									["Name"] = "狂暴回复",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Name"] = "狂暴回复",
									["Type"] = "MANAUSABLE",
								}, -- [3]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "22842",
									["Operator"] = ">",
								}, -- [4]
								["n"] = 4,
							},
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Name"] = "狂暴回复",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
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
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "铁鬃",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Name"] = "铁鬃",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
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
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PSqqGgc7PmQ",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "烧蚀护盾",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "271543",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["CLEUEvents"] = {
								["SPELL_AURA_APPLIED"] = true,
							},
							["OnlyEquipped"] = true,
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["OnlyInBags"] = true,
							["CLEUNoRefresh"] = true,
							["ICDType"] = "spellcast",
							["CustomTex"] = "271559",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["ConditionDur"] = 10,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "闪光庇护所",
							["OnlyIfCounting"] = true,
							["ConditionDurEnabled"] = true,
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[10] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾泽里特血脉; 晶化甲壳",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
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
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "层叠鬃毛",
							["CustomTex"] = "279552",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "大地守卫者",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "213680",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "淤血",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Point"] = {
						["y"] = -50,
						["x"] = -185,
					},
				}, -- [7]
				{
					["GUID"] = "TMW:group:1VvAnm6FO0ea",
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "延时之力药水; 智力战斗药水; 敏捷战斗药水",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "天界指引",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "过载的心能电池",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff3",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [8]
				{
					["GUID"] = "TMW:group:1RsF_3Ffwy_N",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "熊形态",
									["Type"] = "STANCE",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "痛击",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "熊形态",
									["Type"] = "STANCE",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "月火术",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 8,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["Name"] = "明月普照",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["SourceUnit"] = "player",
							["ShowTimerText"] = true,
							["CustomTex"] = "204066",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
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
							["Name"] = "标记死穴",
							["CustomTex"] = "268756",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "污染",
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
							["CustomTex"] = "273836",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFSTACKS",
											["Name"] = "生命心能",
											["Level"] = 10,
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "生命心能",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "294966",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Name"] = "低吼",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [35]
					},
					["Role"] = 4,
					["Name"] = "熊T目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[251] = false,
						[102] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
				}, -- [9]
				{
					["GUID"] = "TMW:group:1PSqgB4X61gn",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "乌索克的铭记之怒",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["Name"] = "298461",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1SYe2YVfj=XC",
							["CustomTex"] = "298461",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1TaCqTn4ZTOg", -- [1]
								"TMW:icon:1TaCqTn62s4Z", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1TXl_5JxjWWL", -- [1]
								"TMW:icon:1TXl_5JzGhOM", -- [2]
								"TMW:icon:1TXl_5J=lqSq", -- [3]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "强化虚无屏障",
							["CustomTex"] = "295746",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["ShowTimerText"] = true,
							["Name"] = "仪式裹手",
							["CustomTex"] = "265946",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["Name"] = "邦桑迪的恩泽",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "272122",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["Name"] = "邦桑迪的交易完成",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "275915",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 4,
					["Name"] = "熊T各种吸收盾",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
				}, -- [10]
				{
					["GUID"] = "TMW:group:1PTG53mjKRE8",
					["Point"] = {
						["y"] = -80,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["Name"] = "左右互搏",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "287810",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "item",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Duration"] = 20,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "271115",
							["ShowTimerText"] = true,
							["Name"] = "炎法师的引线",
							["OnlyEquipped"] = true,
							["OnlyInBags"] = true,
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "星辰领主",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "化身：艾露恩之眷; 超凡之盟",
							["GUID"] = "TMW:icon:1RYqhmWLTSYa",
							["ShowTimerText"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1VbKfeW6uDG3", -- [1]
								"TMW:icon:1VbKr3Nr3Tus", -- [2]
							},
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Name"] = "星火术",
									["Operator"] = ">",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "月蚀",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "星火术",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Name"] = "愤怒",
									["Operator"] = ">",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "日蚀",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "愤怒",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟D自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[250] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 8,
				}, -- [11]
				{
					["GUID"] = "TMW:group:1PTG7OmiRQok",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "大地链接",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "汇帆",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "281843",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "枭兽狂怒",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "157228",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "至日",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStack",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnHide",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "月蚀",
							["CustomTex"] = "48518",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "日蚀",
							["OnlyMine"] = true,
							["CustomTex"] = "48517",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [35]
					},
					["Role"] = 1,
					["Name"] = "鸟D自身buff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[104] = false,
						[250] = false,
					},
					["Point"] = {
						["y"] = -50,
						["x"] = -185,
					},
				}, -- [12]
				{
					["GUID"] = "TMW:group:1TEzjv10uq_i",
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "吸血鬼之速",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "269239",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "宝石皮肤",
							["OnlyMine"] = true,
							["CustomTex"] = "270576",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
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
							["GUID"] = "TMW:icon:1PVpSt5Sl_k4",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "延时之力药水; 智力战斗药水; 敏捷战斗药水",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1Ra8MFrYZngQ",
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "天界指引",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["CustomTex"] = "324748",
							["States"] = {
								{
								}, -- [1]
								[3] = {
								},
								[102] = {
									["Alpha"] = 1,
								},
								[4] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "导师的圣钟",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Type"] = "buff",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "同化雕文",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "339946",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Name"] = "339943",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟德自身buff3",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[104] = false,
						[250] = false,
					},
					["Columns"] = 8,
				}, -- [13]
				{
					["GUID"] = "TMW:group:1PTG0tUByGo5",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "164812",
											["Level"] = 7,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "月火术",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "阳炎术",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "164815",
											["Level"] = 6,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
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
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "202347",
											["Level"] = 8,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Conditions"] = {
								{
									["Name"] = "星辰耀斑",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "星辰耀斑",
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["CustomTex"] = "202770",
							["Icons"] = {
								"TMW:icon:1S5wis7OPlB6", -- [1]
								"TMW:icon:1S5wis7Q9R0j", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1S5xLgesVC3c", -- [1]
								"TMW:icon:1S5xMTIoIqzX", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "影中暗刃",
							["ShowTimerText"] = true,
							["CustomTex"] = "280286",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟D目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[250] = false,
						[104] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
				}, -- [14]
				{
					["GUID"] = "TMW:group:1VbDgFSgsNm8",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]", -- [2]
									},
								},
							},
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Type"] = "LUNAR_POWER",
									["Level"] = 50,
									["Operator"] = ">=",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "星辰坠落",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "星辰坠落",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "同化雕文",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "345319",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "腐烂爆发",
							["ShowTimerText"] = true,
							["CustomTex"] = "334058",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟D目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[250] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 8,
				}, -- [15]
				{
					["GUID"] = "TMW:group:1NaU7Igqfr1m",
					["Columns"] = 6,
					["Scale"] = 1,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerTextnoOCC"] = true,
							["RuneSlots"] = 4033,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["TextLayout"] = "icon2",
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4034,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Type"] = "runes",
							["BarDisplay_Invert"] = true,
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
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4036,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Type"] = "runes",
							["BarDisplay_Invert"] = true,
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
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4040,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4048,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Sort"] = -1,
							["Type"] = "runes",
							["BarDisplay_Invert"] = true,
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
						}, -- [5]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4064,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Type"] = "runes",
							["BarDisplay_Invert"] = true,
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
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
					},
					["SortPriorities"] = {
						{
							["Method"] = "duration",
						}, -- [1]
						{
							["Order"] = 1,
							["Method"] = "id",
						}, -- [2]
					},
					["Name"] = "符文",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "bar1",
						},
						["bar"] = {
							["SpacingX"] = 4,
							["Icon"] = false,
							["SizeX"] = 24,
							["SizeY"] = 15,
						},
					},
					["Locked"] = true,
					["TextureName"] = "Blizzard",
					["Point"] = {
						["y"] = -90,
					},
					["View"] = "bar",
				}, -- [16]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Columns"] = 8,
					["Point"] = {
						["y"] = 10,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Name"] = "DK共有技能",
					["Icons"] = {
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
							["Name"] = "冰霜之路",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "巫妖之躯",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "冰封之韧",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "死亡脚步; 幻影步",
							["GUID"] = "TMW:icon:1PVpSt5_uqrg",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["OnlyMine"] = true,
							["Name"] = "反魔法护罩",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "血性狂怒",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Name"] = "血性狂怒",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "血性狂怒",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "buff",
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
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Locked"] = true,
				}, -- [17]
				{
					["GUID"] = "TMW:group:1VbDfV0TsD8m",
					["Columns"] = 8,
					["Point"] = {
						["y"] = -20,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Name"] = "盟约强化",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "云集之雾",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "云集之雾",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "云集之雾",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "抚慰阴影",
							["Icons"] = {
								"TMW:icon:1VyPOOEjsHOq", -- [1]
								"TMW:icon:1VyPOOEliCGN", -- [2]
							},
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "兴奋追猎者",
							["CustomTex"] = "331939",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "沉醉",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Duration"] = 5,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "331937",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "生命之凝力",
							["CustomTex"] = "295838",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Name"] = "302932",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Name"] = "302932",
											["Type"] = "BUFFDUR",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["OnlyMine"] = true,
							["Name"] = "无畏之力",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "坚守阵地; 火红烈焰; 永恒之潮; 艾泽拉斯的不朽赐福; 清醒梦境之忆",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["OnConditionConditions"] = {
										{
											["Level"] = 5,
											["Type"] = "BUFFSTACKS",
											["Name"] = "坚守阵地",
											["Operator"] = ">=",
										}, -- [1]
										["n"] = 1,
									},
									["Type"] = "Animations",
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
					["Locked"] = true,
				}, -- [18]
				{
					["GUID"] = "TMW:group:1Rm7iJjFH3xP",
					["Columns"] = 8,
					["Point"] = {
						["y"] = 10,
						["x"] = 185,
					},
					["Locked"] = true,
					["Name"] = "DK控制",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target; pet",
							["OnlyMine"] = true,
							["Name"] = "窒息; 撕扯",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "寒冰锁链; 317792",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "寒冰锁链",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [35]
					},
					["Scale"] = 1.28,
				}, -- [19]
				{
					["GUID"] = "TMW:group:1Ppig=lKhJSe",
					["Columns"] = 8,
					["Name"] = "备用其他",
					["Locked"] = true,
					["Scale"] = 1.3,
					["Rows"] = 3,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1S5xLgesVC3c",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Name"] = "亡者大军",
									["Type"] = "SPELLCD",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "亡者大军",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["GUID"] = "TMW:icon:1S5xMTIoIqzX",
							["Type"] = "cleu",
							["CLEUDur"] = 34,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "42650",
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
							["Enabled"] = true,
							["SourceUnit"] = "player",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["GUID"] = "TMW:icon:1VxztBIfqKaX",
							["Type"] = "cooldown",
							["CLEUDur"] = 16,
							["Enabled"] = true,
							["FakeHidden"] = true,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "275699",
							["Conditions"] = {
								{
									["Type"] = "DEBUFFSTACKS",
									["Name"] = "溃烂之伤",
									["Level"] = 4,
									["Unit"] = "target",
									["Operator"] = ">=",
								}, -- [1]
								["n"] = 1,
							},
							["SourceUnit"] = "player",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 16,
							["GUID"] = "TMW:icon:1Vxzt9SGhxiH",
							["FakeHidden"] = true,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["ShowTimerText"] = true,
							["Name"] = "275699",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["SourceUnit"] = "player",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["GUID"] = "TMW:icon:1Vx7US6TlrO5",
							["Type"] = "buff",
							["Enabled"] = true,
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "188290",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "43265",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "188290",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "188290",
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
						}, -- [5]
						{
							["GUID"] = "TMW:icon:1Vx7UXG6_f88",
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["FakeHidden"] = true,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Enabled"] = true,
							["Name"] = "枯萎凋零",
							["SourceUnit"] = "player",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1VyPOOEjsHOq",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "抚慰阴影",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["GUID"] = "TMW:icon:1VyPOOEliCGN",
							["Type"] = "cleu",
							["CLEUDur"] = 12,
							["CLEUNoRefresh"] = true,
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "抚慰阴影",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CLEUEvents"] = {
								["SPELL_AURA_APPLIED"] = true,
							},
							["SourceUnit"] = "player",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "target",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1SSjTjcW50hi",
							["Name"] = "宁静",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["GUID"] = "TMW:icon:1SSjTluI6u2U",
							["Type"] = "buff",
							["Unit"] = "raid 1-40; group 1-40",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["Name"] = "宁静",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Unit"] = "raid 1-40; group 1-40",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1SSjSd4L8DD8",
							["Name"] = "宁静",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "target",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "塞纳里奥结界; 塞纳里奥结界",
							["GUID"] = "TMW:icon:1SSrV1L5fWxh",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "塞纳里奥结界",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Name"] = "塞纳里奥结界",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1SSrkaE=DPcL",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["GUID"] = "TMW:icon:1S5wis7OPlB6",
							["Type"] = "cooldown",
							["Name"] = "艾露恩之怒",
							["Enabled"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Name"] = "艾露恩之怒",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "艾露恩之怒",
									["Type"] = "SPELLCD",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "202770",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["GUID"] = "TMW:icon:1S5wis7Q9R0j",
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾露恩之怒",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["SourceUnit"] = "player",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["GUID"] = "TMW:icon:1TXl_5JxjWWL",
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "海巫之裁; 忠仆之裁",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["Enabled"] = true,
							["ShowTTText"] = 1,
							["CustomTex"] = "303044",
							["States"] = {
								{
									["Alpha"] = 0.99,
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["Enabled"] = true,
							["Type"] = "icd",
							["FakeHidden"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["GUID"] = "TMW:icon:1TXl_5JzGhOM",
							["Name"] = "海巫之裁: 39",
							["CustomTex"] = "303044",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["GUID"] = "TMW:icon:1TXl_5J=lqSq",
							["Type"] = "icd",
							["FakeHidden"] = true,
							["Name"] = "忠仆之裁: 39",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Enabled"] = true,
							["CustomTex"] = "303044",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["GUID"] = "TMW:icon:1TaCqTn4ZTOg",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["ShowTimerText"] = true,
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["Enabled"] = true,
							["Name"] = "虚无屏障",
							["CustomTex"] = "295842",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["Enabled"] = true,
							["Type"] = "icd",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1TaCqTn62s4Z",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Name"] = "虚无屏障: 15",
							["Conditions"] = {
								{
									["Name"] = "虚无粹源",
									["Type"] = "AZESSLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "295842",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "化身：艾露恩之眷",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Name"] = "化身：艾露恩之眷",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "化身：艾露恩之眷",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "化身：艾露恩之眷",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["GUID"] = "TMW:icon:1VbKr3Nr3Tus",
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
						}, -- [22]
						{
							["GUID"] = "TMW:icon:1VbKfeW6uDG3",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Enabled"] = true,
							["Conditions"] = {
								{
									["AndOr"] = "OR",
									["Name"] = "超凡之盟",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["AndOr"] = "OR",
									["Type"] = "BUFFDUR",
									["Name"] = "超凡之盟",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "超凡之盟",
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
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [25]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [26]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [27]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [28]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [29]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [30]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [31]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [32]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [33]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [34]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [35]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [36]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [37]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [38]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [39]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [40]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [41]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [42]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [43]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [44]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [45]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [46]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [47]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [48]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [49]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [50]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [51]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [52]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [53]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [54]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [55]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [56]
					},
					["Point"] = {
						["y"] = 125,
						["x"] = 540,
					},
				}, -- [20]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [21]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [22]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [23]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [24]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [25]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [15]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [16]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [17]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [18]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [19]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [20]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [21]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [22]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [23]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [24]
					},
				}, -- [26]
			},
		},
		["Magiccreamdk - 格雷迈恩"] = {
			["DrawEdge"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["PrtsBefore"] = 1,
											["Level"] = 4,
											["Operator"] = ">=",
											["Unit"] = "target",
										}, -- [2]
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["AndOr"] = "OR",
											["PrtsAfter"] = 1,
											["Unit"] = "target",
										}, -- [3]
										["n"] = 3,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["Level"] = 1,
											["Operator"] = ">=",
											["Unit"] = "target",
										}, -- [1]
										{
											["Type"] = "DEBUFFSTACKS",
											["Name"] = "溃烂之伤",
											["Level"] = 3,
											["Operator"] = "<=",
											["Unit"] = "target",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "OnCondition",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "溃烂之伤",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "邪恶虫群",
							["CustomTex"] = "115989",
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
							["Name"] = "灵魂收割",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Operator"] = "<=",
											["Level"] = 40,
											["Type"] = "HEALTH",
											["Unit"] = "target",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "灵魂收割",
											["AndOr"] = "OR",
											["Operator"] = ">",
											["Unit"] = "target",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "COMBAT",
								}, -- [1]
								{
									["Name"] = "灵魂收割",
									["Type"] = "TALENTLEARNED",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Name"] = "灵魂收割",
									["PrtsBefore"] = 1,
									["Operator"] = ">",
									["Unit"] = "target",
								}, -- [3]
								{
									["Type"] = "HEALTH",
									["Unit"] = "target",
									["PrtsBefore"] = 1,
									["AndOr"] = "OR",
									["Level"] = 40,
									["Operator"] = "<=",
								}, -- [4]
								{
									["Type"] = "SPELLCD",
									["PrtsAfter"] = 2,
									["Name"] = "灵魂收割",
								}, -- [5]
								["n"] = 5,
							},
							["CustomTex"] = "343294",
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
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "pet",
							["OnlyMine"] = true,
							["Name"] = "黑暗突变",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "pet",
							["OnlyMine"] = true,
							["Name"] = "控制亡灵",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "控制亡灵",
											["Level"] = 60,
											["Operator"] = "<=",
											["Unit"] = "pet",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
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
						{
							["Enabled"] = true,
							["Type"] = "conditionicon",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "注意宝宝！！",
									},
								},
							},
							["Conditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Type"] = "MOUNTED",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "PETMODE2",
									["BitFlags"] = {
										[3] = true,
										[0] = true,
									},
								}, -- [3]
								["n"] = 3,
							},
							["CustomTex"] = "46584",
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
					},
					["Role"] = 1,
					["Name"] = "邪DK目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[250] = false,
						[105] = false,
						[102] = false,
						[104] = false,
						[251] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1Vwo0jA3uc0w",
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
					["Scale"] = 1.28,
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "不可思议的量子装置; 赤红华尔兹",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "势不可挡",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["CustomTex"] = "320786",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "不洁之力",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["CustomTex"] = "53365",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "邪DK目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[250] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [2]
				{
					["GUID"] = "TMW:group:1VZ5J=3WQRK0",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "恶性瘟疫",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "恶性瘟疫",
											["Level"] = 9,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["CustomTex"] = "191587",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "亡者大军",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "meta",
							["ShowTimerText"] = true,
							["Icons"] = {
								"TMW:icon:1Vx7US6TlrO5", -- [1]
								"TMW:icon:1Vx7UXG6_f88", -- [2]
							},
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["Name"] = "天灾契约",
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "48743",
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
					["Name"] = "邪DK目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[250] = false,
						[105] = false,
						[102] = false,
						[104] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Point"] = {
						["y"] = -50,
						["x"] = -184.64839411775,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "愈合",
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
							["Name"] = "激励兽群",
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
							["CustomTex"] = "280412",
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
							["Name"] = "血祭之力",
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
							["CustomTex"] = "280409",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "黑暗援助",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnShow",
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 0.1,
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "末日突降",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "符文腐蚀",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Role"] = 1,
					["Name"] = "邪DK自身buff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[250] = false,
						[105] = false,
						[102] = false,
						[104] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Columns"] = 8,
					["Scale"] = 1.28,
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
							["Name"] = "生存本能; 精通本能",
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "邪恶突袭",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1Ppig=lgUPEg",
							["Conditions"] = {
								{
									["Name"] = "邪恶突袭",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "邪恶突袭",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "邪恶突袭",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["ShowTimerText"] = true,
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
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "亡者大军",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "meta",
							["ShowTimerText"] = true,
							["Icons"] = {
								"TMW:icon:1S5xLgesVC3c", -- [1]
								"TMW:icon:1S5xMTIoIqzX", -- [2]
							},
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
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Type"] = "meta",
							["Name"] = "亡者大军",
							["Icons"] = {
								"TMW:icon:1Vxzt9SGhxiH", -- [1]
								"TMW:icon:1VxztBIfqKaX", -- [2]
							},
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "邪恶虫群",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "邪恶虫群",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "邪恶虫群",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "邪恶虫群",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "狂热畸兽",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Name"] = "黑暗突变",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "狂热畸兽",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "334896",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Role"] = 1,
					["Name"] = "邪DK自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[105] = false,
						[251] = false,
						[102] = false,
						[104] = false,
						[250] = false,
					},
					["Point"] = {
						["y"] = -80,
						["x"] = -184.64839411775,
					},
				}, -- [5]
				{
					["GUID"] = "TMW:group:1PSqjlmIR3JQ",
					["Point"] = {
						["y"] = -80,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["Duration"] = 2,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "精通本能",
							["Type"] = "buff",
							["CustomTex"] = "273349",
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
							["Name"] = "野蛮暴烈",
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["CustomTex"] = "289315",
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
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Name"] = "扭曲之爪",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "275909",
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
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "树皮术",
							["Conditions"] = {
								{
									["Name"] = "树皮术",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "树皮术",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "生存本能",
							["Conditions"] = {
								{
									["Name"] = "生存本能",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "生存本能",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["Event"] = "OnStart",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "狂暴; 化身：乌索克的守护者",
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Name"] = "50334",
									["Level"] = 1,
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "50334",
									["Operator"] = ">",
								}, -- [2]
								{
									["AndOr"] = "OR",
									["Type"] = "SPELLCHARGES",
									["Name"] = "化身：乌索克的守护者",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "化身：乌索克的守护者",
									["Operator"] = ">",
								}, -- [4]
								["n"] = 4,
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "狂暴回复",
							["Conditions"] = {
								{
									["Name"] = "熊形态",
									["Type"] = "STANCE",
								}, -- [1]
								{
									["Name"] = "狂暴回复",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Name"] = "狂暴回复",
									["Type"] = "MANAUSABLE",
								}, -- [3]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "22842",
									["Operator"] = ">",
								}, -- [4]
								["n"] = 4,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Name"] = "狂暴回复",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
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
						}, -- [7]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "铁鬃",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Name"] = "铁鬃",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PSqqGgc7PmQ",
					["Point"] = {
						["y"] = -50,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "烧蚀护盾",
							["Type"] = "buff",
							["CustomTex"] = "271543",
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
							["CLEUEvents"] = {
								["SPELL_AURA_APPLIED"] = true,
							},
							["OnlyEquipped"] = true,
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["OnlyInBags"] = true,
							["CLEUNoRefresh"] = true,
							["ICDType"] = "spellcast",
							["ConditionDur"] = 10,
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Name"] = "闪光庇护所",
							["CustomTex"] = "271559",
							["OnlyIfCounting"] = true,
							["ConditionDurEnabled"] = true,
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[10] = {
									["Alpha"] = 1,
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾泽里特血脉; 晶化甲壳",
							["Events"] = {
								{
									["Event"] = "OnShow",
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
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "层叠鬃毛",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
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
							["CustomTex"] = "279552",
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
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["OnlyShown"] = true,
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "大地守卫者",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "213680",
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
						}, -- [6]
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
							["Name"] = "星河守护者",
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
							["Name"] = "淤血",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[251] = false,
						[102] = false,
					},
					["Columns"] = 8,
				}, -- [7]
				{
					["GUID"] = "TMW:group:1VvAnm6FO0ea",
					["Columns"] = 8,
					["Scale"] = 1.28,
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
									},
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
							["Name"] = "延时之力药水; 智力战斗药水; 敏捷战斗药水",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "天界指引",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 1,
								},
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "过载的心能电池",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
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
								[102] = {
									["Alpha"] = 1,
								},
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 4,
					["Name"] = "熊T自身buff3",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
				}, -- [8]
				{
					["GUID"] = "TMW:group:1RsF_3Ffwy_N",
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "痛击",
							["Conditions"] = {
								{
									["Name"] = "熊形态",
									["Type"] = "STANCE",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "熊形态",
									["Type"] = "STANCE",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "月火术",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 8,
							["Name"] = "明月普照",
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["SourceUnit"] = "player",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "204066",
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
							["Name"] = "标记死穴",
							["CustomTex"] = "268756",
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
							["Name"] = "污染",
							["CustomTex"] = "273836",
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
							["Name"] = "生命心能",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFSTACKS",
											["Name"] = "生命心能",
											["Level"] = 10,
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["CustomTex"] = "294966",
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
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "低吼",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
					},
					["Role"] = 4,
					["Name"] = "熊T目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [9]
				{
					["GUID"] = "TMW:group:1PSqgB4X61gn",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["Name"] = "乌索克的铭记之怒",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
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
						}, -- [1]
						{
							["GUID"] = "TMW:icon:1SYe2YVfj=XC",
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["Name"] = "298461",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "298461",
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
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1TaCqTn4ZTOg", -- [1]
								"TMW:icon:1TaCqTn62s4Z", -- [2]
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
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1TXl_5JxjWWL", -- [1]
								"TMW:icon:1TXl_5JzGhOM", -- [2]
								"TMW:icon:1TXl_5J=lqSq", -- [3]
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
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["Name"] = "强化虚无屏障",
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "295746",
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
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["Name"] = "仪式裹手",
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "265946",
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
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["Name"] = "邦桑迪的恩泽",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "272122",
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
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["Name"] = "邦桑迪的交易完成",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "275915",
							["States"] = {
								{
									["Alpha"] = 0.5,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 4,
					["Name"] = "熊T各种吸收盾",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[102] = false,
						[251] = false,
					},
					["Columns"] = 8,
				}, -- [10]
				{
					["GUID"] = "TMW:group:1PTG53mjKRE8",
					["Point"] = {
						["y"] = -80,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["Name"] = "左右互搏",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "287810",
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
							["Type"] = "item",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["OnlyMine"] = true,
							["Name"] = "炎法师的引线",
							["OnlyEquipped"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 20,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["CustomTex"] = "271115",
							["OnlyInBags"] = true,
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
							["Name"] = "星辰领主",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "化身：艾露恩之眷; 超凡之盟",
							["Type"] = "meta",
							["GUID"] = "TMW:icon:1RYqhmWLTSYa",
							["Icons"] = {
								"TMW:icon:1VbKfeW6uDG3", -- [1]
								"TMW:icon:1VbKr3Nr3Tus", -- [2]
							},
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
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "星火术",
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Name"] = "星火术",
									["Operator"] = ">",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "月蚀",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
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
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "愤怒",
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Name"] = "愤怒",
									["Operator"] = ">",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "日蚀",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟D自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[250] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 8,
				}, -- [11]
				{
					["GUID"] = "TMW:group:1PTG7OmiRQok",
					["Point"] = {
						["y"] = -50,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "大地链接",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "汇帆",
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
							["CustomTex"] = "281843",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "枭兽狂怒",
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
							["CustomTex"] = "157228",
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
							["Events"] = {
								{
									["Event"] = "OnStack",
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
							["Name"] = "至日",
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
							["OnlyMine"] = true,
							["Name"] = "月蚀",
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
							["CustomTex"] = "48518",
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
							["Name"] = "日蚀",
							["Type"] = "buff",
							["CustomTex"] = "48517",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
					},
					["Role"] = 1,
					["Name"] = "鸟D自身buff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[104] = false,
						[250] = false,
					},
					["Columns"] = 8,
				}, -- [12]
				{
					["GUID"] = "TMW:group:1TEzjv10uq_i",
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
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
							["Name"] = "吸血鬼之速",
							["Type"] = "buff",
							["CustomTex"] = "269239",
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
							["Name"] = "宝石皮肤",
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
							["CustomTex"] = "270576",
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
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "延时之力药水; 智力战斗药水; 敏捷战斗药水",
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
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "天界指引",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1Ra8MFrYZngQ",
							["CustomTex"] = "324748",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 1,
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "导师的圣钟",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "同化雕文",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Duration"] = 5,
									["Event"] = "OnStart",
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "339946",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
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
						}, -- [7]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "339943",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟德自身buff3",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[104] = false,
						[250] = false,
					},
					["Columns"] = 8,
				}, -- [13]
				{
					["GUID"] = "TMW:group:1PTG0tUByGo5",
					["Point"] = {
						["y"] = -80,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "164812",
											["Level"] = 7,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "月火术",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "164815",
											["Level"] = 6,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "阳炎术",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "星辰耀斑",
							["Conditions"] = {
								{
									["Name"] = "星辰耀斑",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "COMBAT",
										}, -- [1]
										{
											["Type"] = "DEBUFFDUR",
											["Name"] = "202347",
											["Level"] = 8,
											["Unit"] = "target",
											["Operator"] = "<=",
										}, -- [2]
										["n"] = 2,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
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
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1S5wis7OPlB6", -- [1]
								"TMW:icon:1S5wis7Q9R0j", -- [2]
							},
							["CustomTex"] = "202770",
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
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1S5xLgesVC3c", -- [1]
								"TMW:icon:1S5xMTIoIqzX", -- [2]
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
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "影中暗刃",
							["CustomTex"] = "280286",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟D目标debuff1",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[250] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 8,
				}, -- [14]
				{
					["GUID"] = "TMW:group:1VbDgFSgsNm8",
					["Point"] = {
						["y"] = -50,
						["x"] = 185,
					},
					["Scale"] = 1.28,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]", -- [2]
									},
								},
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Type"] = "LUNAR_POWER",
									["Level"] = 50,
									["Operator"] = ">=",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "星辰坠落",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Name"] = "星辰坠落",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "同化雕文",
							["CustomTex"] = "345319",
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
							["Name"] = "腐烂爆发",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["CustomTex"] = "334058",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Role"] = 1,
					["Name"] = "鸟D目标debuff2",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[252] = false,
						[103] = false,
						[105] = false,
						[104] = false,
						[250] = false,
					},
					["Columns"] = 8,
				}, -- [15]
				{
					["GUID"] = "TMW:group:1NaU7Igqfr1m",
					["Columns"] = 6,
					["Scale"] = 1,
					["Icons"] = {
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["ShowTimerTextnoOCC"] = true,
							["RuneSlots"] = 4033,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["TextLayout"] = "icon2",
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						}, -- [1]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4034,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						}, -- [2]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4036,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						}, -- [3]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4040,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4048,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
						}, -- [5]
						{
							["Enabled"] = true,
							["ShowTimer"] = true,
							["RuneSlots"] = 4064,
							["Sort"] = -1,
							["SettingsPerView"] = {
								["bar"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Type"] = "runes",
							["ShowTimerText"] = true,
							["BarDisplay_Invert"] = true,
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
					["TextureName"] = "Blizzard",
					["Name"] = "符文",
					["SettingsPerView"] = {
						["icon"] = {
							["TextLayout"] = "bar1",
						},
						["bar"] = {
							["SpacingX"] = 4,
							["SizeX"] = 24,
							["Icon"] = false,
							["SizeY"] = 15,
						},
					},
					["Locked"] = true,
					["SortPriorities"] = {
						{
							["Method"] = "duration",
						}, -- [1]
						{
							["Method"] = "id",
							["Order"] = 1,
						}, -- [2]
					},
					["View"] = "bar",
					["Point"] = {
						["y"] = -90,
					},
				}, -- [16]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Locked"] = true,
					["Name"] = "DK共有技能",
					["Icons"] = {
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
							["Name"] = "冰霜之路",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "巫妖之躯",
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
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "冰封之韧",
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
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "死亡脚步; 幻影步",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1PVpSt5_uqrg",
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "反魔法护罩",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
									},
								},
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
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
						}, -- [7]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "血性狂怒",
							["Conditions"] = {
								{
									["Name"] = "血性狂怒",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "血性狂怒",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Point"] = {
						["y"] = 10,
						["x"] = -185,
					},
				}, -- [17]
				{
					["GUID"] = "TMW:group:1VbDfV0TsD8m",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Locked"] = true,
					["Name"] = "盟约强化",
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "云集之雾",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "云集之雾",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "云集之雾",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
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
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "meta",
							["Name"] = "抚慰阴影",
							["Icons"] = {
								"TMW:icon:1VyPOOEjsHOq", -- [1]
								"TMW:icon:1VyPOOEliCGN", -- [2]
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
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "兴奋追猎者",
							["Type"] = "buff",
							["CustomTex"] = "331939",
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
							["Name"] = "沉醉",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["CustomTex"] = "331937",
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
							["Name"] = "生命之凝力",
							["CustomTex"] = "295838",
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
							["Name"] = "无畏之力",
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFDUR",
											["Name"] = "302932",
											["Operator"] = ">",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Name"] = "302932",
											["Type"] = "BUFFDUR",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
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
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnConditionConditions"] = {
										{
											["Type"] = "BUFFSTACKS",
											["Level"] = 5,
											["Name"] = "坚守阵地",
											["Operator"] = ">=",
										}, -- [1]
										["n"] = 1,
									},
									["Event"] = "WCSP",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "坚守阵地; 火红烈焰; 永恒之潮; 艾泽拉斯的不朽赐福; 清醒梦境之忆",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Point"] = {
						["y"] = -20,
						["x"] = 185,
					},
				}, -- [18]
				{
					["GUID"] = "TMW:group:1Rm7iJjFH3xP",
					["Columns"] = 8,
					["Scale"] = 1.28,
					["Locked"] = true,
					["Name"] = "DK控制",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target; pet",
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
							["Name"] = "窒息; 撕扯",
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
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "寒冰锁链; 317792",
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
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "寒冰锁链",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
					},
					["Point"] = {
						["y"] = 10,
						["x"] = 185,
					},
				}, -- [19]
				{
					["GUID"] = "TMW:group:1Ppig=lKhJSe",
					["Columns"] = 8,
					["Point"] = {
						["y"] = 125,
						["x"] = 540,
					},
					["Locked"] = true,
					["Scale"] = 1.3,
					["Rows"] = 3,
					["Icons"] = {
						{
							["GUID"] = "TMW:icon:1S5xLgesVC3c",
							["Type"] = "cooldown",
							["Name"] = "亡者大军",
							["FakeHidden"] = true,
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Name"] = "亡者大军",
									["Type"] = "SPELLCD",
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["States"] = {
								{
									["Alpha"] = 0.5,
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
							["Type"] = "cleu",
							["CLEUDur"] = 34,
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["Name"] = "42650",
							["GUID"] = "TMW:icon:1S5xMTIoIqzX",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["OnlyMine"] = true,
							["SourceUnit"] = "player",
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
							["Type"] = "cooldown",
							["CLEUDur"] = 16,
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "275699",
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["GUID"] = "TMW:icon:1VxztBIfqKaX",
							["Conditions"] = {
								{
									["Type"] = "DEBUFFSTACKS",
									["Name"] = "溃烂之伤",
									["Level"] = 4,
									["Operator"] = ">=",
									["Unit"] = "target",
								}, -- [1]
								["n"] = 1,
							},
							["SourceUnit"] = "player",
							["States"] = {
								{
									["Alpha"] = 0.5,
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
							["Type"] = "cleu",
							["CLEUDur"] = 16,
							["Name"] = "275699",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1Vxzt9SGhxiH",
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["SourceUnit"] = "player",
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
							["Name"] = "188290",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1Vx7US6TlrO5",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
							["Conditions"] = {
								{
									["Name"] = "43265",
									["Type"] = "SPELLCD",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "188290",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "188290",
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
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "枯萎凋零",
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1Vx7UXG6_f88",
							["SourceUnit"] = "player",
							["States"] = {
								{
									["Alpha"] = 0.5,
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
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1VyPOOEjsHOq",
							["Name"] = "抚慰阴影",
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
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 12,
							["CLEUNoRefresh"] = true,
							["FakeHidden"] = true,
							["CLEUEvents"] = {
								["SPELL_AURA_APPLIED"] = true,
							},
							["ShowTimerText"] = true,
							["Name"] = "抚慰阴影",
							["OnlyMine"] = true,
							["GUID"] = "TMW:icon:1VyPOOEliCGN",
							["SourceUnit"] = "player",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [8]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "target",
							["FakeHidden"] = true,
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
							["GUID"] = "TMW:icon:1SSjTjcW50hi",
							["Name"] = "宁静",
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
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "raid 1-40; group 1-40",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "宁静",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1SSjTluI6u2U",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [10]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Unit"] = "raid 1-40; group 1-40",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "宁静",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1SSjSd4L8DD8",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [11]
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
						}, -- [12]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Unit"] = "target",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "塞纳里奥结界; 塞纳里奥结界",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1SSrV1L5fWxh",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [13]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "塞纳里奥结界",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Name"] = "塞纳里奥结界",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1SSrkaE=DPcL",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [14]
						{
							["Enabled"] = true,
							["Type"] = "cooldown",
							["Name"] = "艾露恩之怒",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1S5wis7OPlB6",
							["Conditions"] = {
								{
									["Name"] = "艾露恩之怒",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "艾露恩之怒",
									["Type"] = "SPELLCD",
								}, -- [2]
								["n"] = 2,
							},
							["CustomTex"] = "202770",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [15]
						{
							["Enabled"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "艾露恩之怒",
							["GUID"] = "TMW:icon:1S5wis7Q9R0j",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["SourceUnit"] = "player",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [16]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTTText"] = 1,
							["OnlyMine"] = true,
							["Name"] = "海巫之裁; 忠仆之裁",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["GUID"] = "TMW:icon:1TXl_5JxjWWL",
							["FakeHidden"] = true,
							["CustomTex"] = "303044",
							["States"] = {
								{
									["Alpha"] = 0.99,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [17]
						{
							["GUID"] = "TMW:icon:1TXl_5JzGhOM",
							["Type"] = "icd",
							["FakeHidden"] = true,
							["Name"] = "海巫之裁: 39",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "303044",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [18]
						{
							["GUID"] = "TMW:icon:1TXl_5J=lqSq",
							["Type"] = "icd",
							["FakeHidden"] = true,
							["Name"] = "忠仆之裁: 39",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "303044",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [19]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Event"] = "OnShow",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["Name"] = "虚无屏障",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["GUID"] = "TMW:icon:1TaCqTn4ZTOg",
							["FakeHidden"] = true,
							["CustomTex"] = "295842",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [20]
						{
							["Enabled"] = true,
							["Type"] = "icd",
							["FakeHidden"] = true,
							["ShowTimerText"] = true,
							["Name"] = "虚无屏障: 15",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["GUID"] = "TMW:icon:1TaCqTn62s4Z",
							["Conditions"] = {
								{
									["Name"] = "虚无粹源",
									["Type"] = "AZESSLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "295842",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
						}, -- [21]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "化身：艾露恩之眷",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1VbKr3Nr3Tus",
							["Conditions"] = {
								{
									["Name"] = "化身：艾露恩之眷",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								{
									["Name"] = "化身：艾露恩之眷",
									["Type"] = "SPELLCD",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "化身：艾露恩之眷",
									["Operator"] = ">",
								}, -- [3]
								["n"] = 3,
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [22]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "超凡之盟",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1VbKfeW6uDG3",
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Name"] = "超凡之盟",
									["AndOr"] = "OR",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["AndOr"] = "OR",
									["Name"] = "超凡之盟",
									["Operator"] = ">",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								{
									["Type"] = "Animations",
									["Event"] = "OnFinish",
									["Animation"] = "ICONCLEAR",
								}, -- [2]
								["n"] = 2,
							},
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
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
						}, -- [36]
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
						}, -- [37]
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
						}, -- [38]
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
						}, -- [39]
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
						}, -- [40]
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
						}, -- [41]
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
						}, -- [42]
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
						}, -- [43]
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
						}, -- [44]
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
						}, -- [45]
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
						}, -- [46]
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
						}, -- [47]
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
						}, -- [48]
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
						}, -- [49]
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
						}, -- [50]
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
						}, -- [51]
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
						}, -- [52]
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
						}, -- [53]
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
						}, -- [54]
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
						}, -- [55]
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
						}, -- [56]
					},
					["Name"] = "备用其他",
				}, -- [20]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
				}, -- [21]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
				}, -- [22]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
				}, -- [23]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
				}, -- [24]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
				}, -- [25]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
				}, -- [26]
			},
			["ForceNoBlizzCC"] = true,
			["Locked"] = true,
			["NumGroups"] = 20,
			["SoundChannel"] = "Master",
			["Version"] = 91200,
		},
		["Magiccream - 格雷迈恩"] = {
			["Groups"] = {
				{
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Icons"] = {
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "野性之心",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1X4JbhJBiveX", -- [1]
								"TMW:icon:1X4JbhJHRDOh", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "352857",
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "联结之心",
							["CustomTex"] = "352881",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "心能转移",
							["CustomTex"] = "342814",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
								}, -- [1]
								["n"] = 1,
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "节能施法",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Name"] = "猫D自身buff",
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Point"] = {
						["y"] = -80,
						["x"] = -245,
					},
				}, -- [1]
				{
					["Point"] = {
						["y"] = -50,
						["x"] = -215,
					},
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "掠食者的迅捷; 食者",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "节能施法",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "生存本能",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "天界指引",
							["CustomTex"] = "324748",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "腐质之瓶",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "不可思议的量子装置",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Name"] = "猫D自身buff2",
					["GUID"] = "TMW:group:1PSovhDMyswt",
				}, -- [2]
				{
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "冲刷之触",
							["CustomTex"] = "356329",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "356364",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "冰冷的心",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "356372",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "抽干",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "野性狂乱",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "93402",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "阳炎术",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "8921",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "月火术",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
					},
					["Name"] = "猫D目标debuff1",
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Point"] = {
						["y"] = -80,
						["x"] = 215,
					},
				}, -- [3]
				{
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "冰冻之心; 液化软泥",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "尼娅的工具：毒药",
							["CustomTex"] = "320660",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
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
					["Name"] = "猫D盟约",
					["GUID"] = "TMW:group:1VZ5J=3WQRK0",
					["Point"] = {
						["y"] = -50,
						["x"] = 215,
					},
				}, -- [4]
				{
					["Scale"] = 1.28,
					["Role"] = 4,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[102] = false,
					},
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "争先打击",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["CustomTex"] = "325381",
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "狩猎刺激",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["CustomTex"] = "353203",
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "荒猎团战术",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["CustomTex"] = "343594",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Name"] = "熊T自身buff1",
					["GUID"] = "TMW:group:1PSqjlmIR3JQ",
					["Point"] = {
						["y"] = -80,
						["x"] = -245,
					},
				}, -- [5]
				{
					["Scale"] = 1.28,
					["Role"] = 4,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
					["Columns"] = 6,
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "大地守卫者",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["OnlyShown"] = true,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "324748",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "天界指引",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["ShowTimerText"] = true,
							["Name"] = "鲜血屏障",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "不可思议的量子装置",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [6]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "星河守护者",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [7]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "淤血",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Name"] = "熊T自身buff2",
					["GUID"] = "TMW:group:1PSqqGgc7PmQ",
					["Point"] = {
						["y"] = -50,
						["x"] = -215,
					},
				}, -- [6]
				{
					["Point"] = {
						["y"] = -80,
						["x"] = 215,
					},
					["Scale"] = 1.28,
					["Role"] = 4,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[105] = false,
						[102] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "冲刷之触",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["CustomTex"] = "356329",
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "356364",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "冰冷的心",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "抽干",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["CustomTex"] = "356372",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
					},
					["Name"] = "熊T目标debuff1",
					["GUID"] = "TMW:group:1RsF_3Ffwy_N",
				}, -- [7]
				{
					["Scale"] = 1.28,
					["Role"] = 4,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[102] = false,
						[105] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["Name"] = "乌索克的铭记之怒",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1SYe2YVfj=XC",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
									},
								},
							},
							["CustomTex"] = "345048",
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
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "狂野狩猎策略",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
									},
								},
							},
							["CustomTex"] = "353254",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Name"] = "熊T盟约",
					["GUID"] = "TMW:group:1PSqgB4X61gn",
					["Point"] = {
						["y"] = -50,
						["x"] = 215,
					},
				}, -- [8]
				{
					["Scale"] = 1.28,
					["Role"] = 2,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "繁华原野",
							["CustomTex"] = "342774",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
					},
					["Name"] = "奶N自身buff1",
					["GUID"] = "TMW:group:1PSsuCK5pkNG",
					["Point"] = {
						["y"] = -80,
						["x"] = -245,
					},
				}, -- [9]
				{
					["Scale"] = 1.28,
					["Role"] = 2,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "枯竭外壳",
							["CustomTex"] = "320227",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
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
							["Type"] = "buff",
							["Name"] = "激活",
							["ShowTimerText"] = true,
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
						}, -- [3]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "天界指引",
							["CustomTex"] = "324748",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["Name"] = "太阳之拥",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "执政官的祝福",
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
						}, -- [6]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
						}, -- [7]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "节能施法",
							["ShowTimerText"] = true,
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Name"] = "奶N自身buff2",
					["GUID"] = "TMW:group:1PSsu1pzr7Uw",
					["Point"] = {
						["y"] = -50,
						["x"] = -215,
					},
				}, -- [10]
				{
					["Point"] = {
						["y"] = -80,
						["x"] = 215,
					},
					["Scale"] = 1.28,
					["Role"] = 2,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "回春术",
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
							["Enabled"] = true,
						}, -- [1]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1S0zC3VcmH3J", -- [1]
								"TMW:icon:1S0zr0qY2HPQ", -- [2]
								"TMW:icon:1Sf01JjqT1JJ", -- [3]
							},
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
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "愈合",
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
							["Enabled"] = true,
						}, -- [3]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1SSrV1L5fWxh", -- [1]
								"TMW:icon:1SSrkaE=DPcL", -- [2]
							},
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
						}, -- [4]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "春暖花开",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "TALENTLEARNED",
									["Name"] = "春暖花开",
								}, -- [1]
								["n"] = 1,
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
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "阳炎术",
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
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "月火术",
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
						}, -- [8]
					},
					["Name"] = "奶N目标buff1",
					["GUID"] = "TMW:group:1TcYCnS__daF",
				}, -- [11]
				{
					["Point"] = {
						["y"] = -50,
						["x"] = 215,
					},
					["Scale"] = 1.28,
					["Role"] = 2,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[102] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "353353",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "梦境探索者",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTTText"] = true,
							["ShowTimerText"] = true,
							["Name"] = "灵茧之力",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["CustomTex"] = "320009",
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
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1SSjTjcW50hi", -- [1]
								"TMW:icon:1SSjTluI6u2U", -- [2]
								"TMW:icon:1SSjSd4L8DD8", -- [3]
							},
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
						}, -- [3]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "栽培",
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
						}, -- [4]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "回春术（萌芽）",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
					},
					["Name"] = "奶N盟约",
					["GUID"] = "TMW:group:1PSsr=AFHle6",
				}, -- [12]
				{
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["Icons"] = {
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTTText"] = 1,
							["Name"] = "左右互搏",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]", -- [2]
									},
								},
							},
							["CustomTex"] = "287810",
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
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1X4JbhJBiveX", -- [1]
								"TMW:icon:1X4JbhJHRDOh", -- [2]
							},
							["Enabled"] = true,
							["CustomTex"] = "352857",
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "联结之心",
							["CustomTex"] = "352881",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "心能转移",
							["CustomTex"] = "342814",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "导师的圣钟; 不可思议的量子装置",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [7]
						{
							["Type"] = "cooldown",
							["Name"] = "愤怒",
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
							["Conditions"] = {
								{
									["Type"] = "SPELLCHARGES",
									["Operator"] = ">",
									["Name"] = "愤怒",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = ">",
									["Name"] = "日蚀",
									["AndOr"] = "OR",
								}, -- [2]
								["n"] = 2,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Name"] = "鸟D自身buff",
					["GUID"] = "TMW:group:1PTG53mjKRE8",
					["Point"] = {
						["y"] = -80,
						["x"] = -245,
					},
				}, -- [13]
				{
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 6,
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "至日",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
									["Infinite"] = true,
								}, -- [1]
								{
									["Type"] = "Animations",
									["Animation"] = "ICONCLEAR",
									["Event"] = "OnHide",
								}, -- [2]
								["n"] = 2,
							},
						}, -- [2]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "157228",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "枭兽狂怒",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["ShowTimer"] = true,
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "324748",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 1,
								},
							},
							["Name"] = "天界指引",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "同化雕文; 导师的圣钟",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "不可思议的量子装置",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[Stacks:Hide(0)]",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [6]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "月蚀",
							["CustomTex"] = "48518",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [7]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "日蚀",
							["CustomTex"] = "48517",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
					},
					["Name"] = "鸟D自身buff2",
					["GUID"] = "TMW:group:1PTG7OmiRQok",
					["Point"] = {
						["y"] = -50,
						["x"] = -215,
					},
				}, -- [14]
				{
					["Point"] = {
						["y"] = -80,
						["x"] = 215,
					},
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 6,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "356329",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "冲刷之触",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "356364",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "冰冷的心",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "356372",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "抽干",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "280286",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "影中暗刃",
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Name"] = "鸟D目标debuff1",
					["GUID"] = "TMW:group:1PTG0tUByGo5",
				}, -- [15]
				{
					["Scale"] = 1.28,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 6,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Name"] = "鸟D盟约",
					["GUID"] = "TMW:group:1VbDgFSgsNm8",
					["Point"] = {
						["y"] = -50,
						["x"] = 215,
					},
				}, -- [16]
				{
					["Scale"] = 2.4,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[103] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 1,
					["Icons"] = {
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Type"] = "COMBAT",
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "枭兽形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "MOUNTED",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "VEHICLE",
									["Level"] = 1,
								}, -- [5]
								{
									["Type"] = "INSTANCE2",
									["Checked"] = true,
									["BitFlags"] = 1,
								}, -- [6]
								["n"] = 6,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"傻逼快变鸟！！", -- [2]
									},
								},
							},
							["CustomTex"] = "24858",
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
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Name"] = "快变鸟",
					["GUID"] = "TMW:group:1Vc40PNzdjOK",
					["Point"] = {
						["y"] = 20,
						["x"] = -1.7272100580593e-05,
					},
				}, -- [17]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Point"] = {
						["y"] = -20,
						["x"] = -185,
					},
					["Scale"] = 1.28,
					["Locked"] = true,
					["Columns"] = 8,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "340556",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "精确本能",
						}, -- [1]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "幽魂敏捷药水",
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
							["Enabled"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "回春术",
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
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "愈合",
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
						}, -- [4]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
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
							["Enabled"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
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
							["Name"] = "急奔; 猛虎冲刺; 氮气推进器",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [6]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "5215",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "",
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
						}, -- [7]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1RpYXZ4wPw5Q", -- [1]
								"TMW:icon:1RpYXZ4xvYty", -- [2]
							},
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
					},
					["Name"] = "XD共有技能",
				}, -- [18]
				{
					["GUID"] = "TMW:group:1Rm7iJjFH3xP",
					["Scale"] = 1.28,
					["Locked"] = true,
					["Columns"] = 8,
					["Icons"] = {
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "蛮力猛击; 战争践踏",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [1]
						{
							["OnlyMine"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 8,
							["Enabled"] = true,
							["Name"] = "日光术",
							["SourceUnit"] = "player",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 0.5,
								},
							},
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Unit"] = "target",
									["Operator"] = ">",
									["Name"] = "日光术",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "台风",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "旋风",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend]",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "休眠; 夺魂咆哮",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [5]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "纠缠根须; 群体缠绕",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [6]
						{
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["CustomTex"] = "45334",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "无法移动",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
						}, -- [7]
						{
							["OnlyMine"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["Enabled"] = true,
							["Name"] = "乌索尔旋风",
							["SourceUnit"] = "player",
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Operator"] = ">",
									["Unit"] = "target",
									["Name"] = "乌索尔旋风",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1SBVxxeDxNJc",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
								[102] = {
									["Alpha"] = 0.5,
								},
							},
							["ShowTimerText"] = true,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
					},
					["Name"] = "xd控制",
					["Point"] = {
						["y"] = -20,
						["x"] = 185,
					},
				}, -- [19]
				{
					["Point"] = {
						["y"] = 110,
						["x"] = 540,
					},
					["Scale"] = 1.3,
					["Rows"] = 4,
					["Locked"] = true,
					["Columns"] = 8,
					["Icons"] = {
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Name"] = "生命绽放",
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1S0zC3VcmH3J",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										[2] = "[Unit(icon=\"TMW:icon:1S0zC3VcmH3J\"):Name(server=false)]",
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
							["FakeHidden"] = true,
						}, -- [1]
						{
							["Unit"] = "raid 1-40; group 1-40",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "生命绽放",
							["GUID"] = "TMW:icon:1S0zr0qY2HPQ",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Unit(icon=\"TMW:icon:1S0zr0qY2HPQ\"):Name(server=false)]", -- [2]
									},
								},
							},
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["FakeHidden"] = true,
						}, -- [2]
						{
							["Unit"] = "raid 1-40; group 1-40",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "生命绽放",
							["GUID"] = "TMW:icon:1Sf01JjqT1JJ",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"[Stacks:Hide(0)]", -- [2]
									},
								},
							},
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["FakeHidden"] = true,
						}, -- [3]
						{
							["Unit"] = "raid 1-40; group 1-40",
							["OnlyMine"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["Name"] = "野性成长",
							["GUID"] = "TMW:icon:1S6R75gKKspg",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
						}, -- [4]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1S0yi=tl6QSB",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Name"] = "野性成长",
							["FakeHidden"] = true,
						}, -- [5]
						{
							["Unit"] = "raid 1-40; group 1-40",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "野性成长",
							["GUID"] = "TMW:icon:1SSjTIsOlsCA",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
						}, -- [6]
						{
							["Type"] = "cooldown",
							["Enabled"] = true,
							["Name"] = "自然之力",
							["GUID"] = "TMW:icon:1S5xLgesVC3c",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "TALENTLEARNED",
									["Name"] = "自然之力",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "自然之力",
								}, -- [2]
								["n"] = 2,
							},
						}, -- [7]
						{
							["OnlyMine"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 10,
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["SourceUnit"] = "player",
							["GUID"] = "TMW:icon:1S5xMTIoIqzX",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
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
							["FakeHidden"] = true,
							["Name"] = "自然之力",
						}, -- [8]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "宁静",
							["GUID"] = "TMW:icon:1SSjTjcW50hi",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["FakeHidden"] = true,
						}, -- [9]
						{
							["Unit"] = "raid 1-40; group 1-40",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "宁静",
							["GUID"] = "TMW:icon:1SSjTluI6u2U",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
						}, -- [10]
						{
							["Unit"] = "raid 1-40; group 1-40",
							["OnlyMine"] = true,
							["Type"] = "cooldown",
							["Enabled"] = true,
							["Name"] = "宁静",
							["GUID"] = "TMW:icon:1SSjSd4L8DD8",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
						}, -- [11]
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
						}, -- [12]
						{
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "塞纳里奥结界; 塞纳里奥结界",
							["GUID"] = "TMW:icon:1SSrV1L5fWxh",
							["States"] = {
								{
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["ShowTimerText"] = true,
							["FakeHidden"] = true,
						}, -- [13]
						{
							["Type"] = "cooldown",
							["ShowTimerText"] = true,
							["Name"] = "塞纳里奥结界",
							["GUID"] = "TMW:icon:1SSrkaE=DPcL",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "TALENTLEARNED",
									["Name"] = "塞纳里奥结界",
								}, -- [1]
								["n"] = 1,
							},
							["FakeHidden"] = true,
						}, -- [14]
						{
							["Type"] = "cooldown",
							["Enabled"] = true,
							["Name"] = "艾露恩之怒",
							["Conditions"] = {
								{
									["Type"] = "TALENTLEARNED",
									["Name"] = "艾露恩之怒",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "艾露恩之怒",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1S5wis7OPlB6",
							["CustomTex"] = "202770",
							["States"] = {
								{
									["Alpha"] = 0.5,
								}, -- [1]
								nil, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["FakeHidden"] = true,
						}, -- [15]
						{
							["OnlyMine"] = true,
							["Type"] = "cleu",
							["CLEUDur"] = 8,
							["Enabled"] = true,
							["ShowTimerText"] = true,
							["SourceUnit"] = "player",
							["GUID"] = "TMW:icon:1S5wis7Q9R0j",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
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
							["FakeHidden"] = true,
							["Name"] = "艾露恩之怒",
						}, -- [16]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "幸存者集结",
							["GUID"] = "TMW:icon:1X4JbhJBiveX",
							["ShowTimerText"] = true,
							["CustomTex"] = "352857",
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
							["Events"] = {
								{
									["Type"] = "Animations",
									["Duration"] = 5,
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStack",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [17]
						{
							["Type"] = "icd",
							["ShowTimerText"] = true,
							["Name"] = "幸存者集结: 1:00",
							["GUID"] = "TMW:icon:1X4JbhJHRDOh",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"", -- [2]
									},
								},
							},
							["CustomTex"] = "352857",
							["States"] = {
								{
									["Alpha"] = 0,
								}, -- [1]
								{
									["Alpha"] = 0.5,
								}, -- [2]
								{
								}, -- [3]
								{
								}, -- [4]
							},
							["Enabled"] = true,
							["FakeHidden"] = true,
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "化身：艾露恩之眷",
							["Conditions"] = {
								{
									["Type"] = "TALENTLEARNED",
									["Name"] = "化身：艾露恩之眷",
								}, -- [1]
								{
									["Type"] = "SPELLCD",
									["Name"] = "化身：艾露恩之眷",
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = ">",
									["Name"] = "化身：艾露恩之眷",
									["AndOr"] = "OR",
								}, -- [3]
								["n"] = 3,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								{
									["Type"] = "Animations",
									["Animation"] = "ICONCLEAR",
									["Event"] = "OnFinish",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1VbKr3Nr3Tus",
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
							["FakeHidden"] = true,
							["ShowTimerText"] = true,
						}, -- [21]
						{
							["OnlyMine"] = true,
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "超凡之盟",
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Name"] = "超凡之盟",
									["AndOr"] = "OR",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Operator"] = ">",
									["Name"] = "超凡之盟",
									["AndOr"] = "OR",
								}, -- [2]
								["n"] = 2,
							},
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								{
									["Type"] = "Animations",
									["Animation"] = "ICONCLEAR",
									["Event"] = "OnFinish",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1VbKfeW6uDG3",
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
							["FakeHidden"] = true,
							["ShowTimerText"] = true,
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
						{
							["CLEUEvents"] = {
								["SPELL_CAST_SUCCESS"] = true,
							},
							["Type"] = "cleu",
							["CLEUDur"] = 15,
							["Enabled"] = true,
							["Name"] = "影握图腾",
							["Events"] = {
								{
									["Type"] = "Animations",
									["Animation"] = "ACTVTNGLOW",
									["Event"] = "OnStart",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
							},
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
							["ShowTimerText"] = true,
							["SourceUnit"] = "player",
							["FakeHidden"] = true,
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
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
						}, -- [33]
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
						}, -- [34]
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
						}, -- [35]
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
						}, -- [36]
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
						}, -- [37]
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
						}, -- [38]
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
						}, -- [39]
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
						}, -- [40]
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
						}, -- [41]
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
						}, -- [42]
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
						}, -- [43]
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
						}, -- [44]
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
						}, -- [45]
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
						}, -- [46]
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
						}, -- [47]
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
						}, -- [48]
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
						}, -- [49]
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
						}, -- [50]
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
						}, -- [51]
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
						}, -- [52]
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
						}, -- [53]
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
						}, -- [54]
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
						}, -- [55]
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
						}, -- [56]
					},
					["Name"] = "备用其他",
					["GUID"] = "TMW:group:1Ppig=lKhJSe",
				}, -- [20]
				{
					["Point"] = {
						["y"] = 20,
					},
					["Scale"] = 2.4,
					["Role"] = 1,
					["Locked"] = true,
					["EnabledSpecs"] = {
						[104] = false,
						[102] = false,
						[105] = false,
					},
					["Columns"] = 1,
					["Icons"] = {
						{
							["Type"] = "conditionicon",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "ALIVE",
								}, -- [1]
								{
									["Type"] = "COMBAT",
								}, -- [2]
								{
									["Type"] = "STANCE",
									["Name"] = "猎豹形态",
									["Level"] = 1,
								}, -- [3]
								{
									["Type"] = "MOUNTED",
									["Level"] = 1,
								}, -- [4]
								{
									["Type"] = "VEHICLE",
									["Level"] = 1,
								}, -- [5]
								{
									["Type"] = "INSTANCE2",
									["Checked"] = true,
									["BitFlags"] = 1,
								}, -- [6]
								["n"] = 6,
							},
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1RmzKllD8C7R",
									["Texts"] = {
										"", -- [1]
										"傻逼快变猫！！", -- [2]
									},
								},
							},
							["CustomTex"] = "24858",
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
									["Type"] = "Animations",
									["Magnitude"] = 3,
									["Animation"] = "ICONSHAKE",
									["Event"] = "OnShow",
									["Infinite"] = true,
								}, -- [1]
								["n"] = 1,
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
					},
					["Name"] = "快变猫",
					["GUID"] = "TMW:group:1X8xOid5Imuh",
				}, -- [21]
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
						}, -- [12]
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
						}, -- [13]
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
						}, -- [14]
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
						}, -- [15]
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
						}, -- [16]
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
						}, -- [17]
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
						}, -- [18]
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
						}, -- [19]
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
						}, -- [20]
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
						}, -- [21]
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
						}, -- [22]
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
						}, -- [23]
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
						}, -- [24]
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
						}, -- [25]
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
						}, -- [26]
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
						}, -- [27]
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
						}, -- [28]
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
						}, -- [29]
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
						}, -- [30]
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
						}, -- [31]
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
						}, -- [32]
					},
				}, -- [22]
			},
			["NumGroups"] = 21,
			["DrawEdge"] = true,
			["ForceNoBlizzCC"] = true,
			["Locked"] = true,
			["Version"] = 91200,
			["SoundChannel"] = "Master",
		},
		["余生请多指教 - 格雷迈恩"] = {
			["CodeSnippets"] = {
				["n"] = 1,
			},
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1PSpuBtHYg1o",
					["Role"] = 1,
					["Name"] = "毁灭s主要",
					["Locked"] = true,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["Name"] = "爆燃",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "献祭",
							["Type"] = "buff",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "灭杀; 混乱之焰",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Name"] = "时空教程",
							["OnlyMine"] = true,
							["Conditions"] = {
								{
									["Name"] = "时空教程",
									["Type"] = "ITEMEQUIPPED",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "236176",
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
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
					},
					["EnabledSpecs"] = {
						[265] = false,
						[266] = false,
						[102] = false,
						[104] = false,
						[105] = false,
					},
					["Point"] = {
						["y"] = 47.775005340576,
						["x"] = 0.00018310546875,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [1]
				{
					["GUID"] = "TMW:group:1PSpFqU4PUjj",
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
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
							["Name"] = "灵魂收割",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "强化生命分流",
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
							["Conditions"] = {
								{
									["Name"] = "强化生命分流",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["Type"] = "buff",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
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
							["ShowTimerText"] = true,
							["Name"] = "辛多雷之怨",
							["CustomTex"] = "208871",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "混沌燃烧",
							["OnlyMine"] = true,
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
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
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
							["OnlyMine"] = true,
							["Name"] = "黑暗契约",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "利爪之印",
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
							["CustomTex"] = "190909",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "不灭决心",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
					},
					["Role"] = 1,
					["Name"] = "毁灭自身buff",
					["Locked"] = true,
					["EnabledSpecs"] = {
						[265] = false,
						[266] = false,
						[102] = false,
						[104] = false,
						[105] = false,
					},
					["Columns"] = 7,
				}, -- [2]
				{
					["GUID"] = "TMW:group:1PSovhDMyswt",
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										"", -- [1]
										"[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend] ", -- [2]
									},
								},
							},
							["Name"] = "萨瓦里克的杰作; 灵魂榨取",
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "player; target; nameplate 1-30",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "浩劫",
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "奥蕾塞丝的高温",
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
							["CustomTex"] = "205675",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "恶魔之力",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["CustomTex"] = "196099",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "永恒斗争",
							["TimerBar_EnableColors"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
					["Columns"] = 7,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1PSqgB4X61gn",
					["Role"] = 1,
					["Point"] = {
						["y"] = 47.775005340576,
						["x"] = 3.0517578125e-05,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Locked"] = true,
					["Name"] = "痛苦s主要",
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
							["OnlyMine"] = true,
							["Name"] = "痛楚",
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTimerText"] = true,
							["Type"] = "buff",
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
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["OnlyMine"] = true,
							["Name"] = "腐蚀术",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["BuffOrDebuff"] = "HARMFUL",
							["Icons"] = {
								"TMW:icon:1QXuMAcuVW5B", -- [1]
								"TMW:icon:1QXuMAc_A0Lw", -- [2]
							},
							["Unit"] = "target",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["CheckNext"] = true,
							["Name"] = "生命虹吸; 腐蚀之种",
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
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Unit"] = "player; target",
							["BuffOrDebuff"] = "EITHER",
							["Name"] = "诡异魅影; 灵魂收割",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
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
							["Name"] = "被折磨的幽魂",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["CustomTex"] = "216695",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "逆风收割者",
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "216708",
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
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "EITHER",
							["Unit"] = "player; target; nameplate 1-30",
							["OnlyMine"] = true,
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "痛不欲生; 恶魔之速",
							["ShowTimerText"] = true,
							["CustomTex"] = "252938",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Name"] = "吞噬之怒",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "延绵恐惧",
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
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["OnlyMine"] = true,
							["Name"] = "利爪之印",
							["GUID"] = "TMW:icon:1Pon0M9wQzND",
							["ShowTimerText"] = true,
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["CustomTex"] = "190909",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
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
					["Point"] = {
						["y"] = 55.000003814697,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										[2] = "[if Length(Stacks) > 4 then\n    Format(\"%.1f\", (Stacks / 10000)) 'W'\nelseif Stacks > 0 then\n    Stacks\nend] ",
									},
								},
							},
							["ShowTTText"] = true,
							["Name"] = "萨瓦里克的杰作; 灵魂榨取",
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "233490",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "233496",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "233497",
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "233498",
							["Unit"] = "target",
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "233499",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Unit"] = "target",
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
								[4] = {
								},
								[3] = {
								},
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
					["Columns"] = 7,
				}, -- [6]
				{
					["GUID"] = "TMW:group:1PSsr=AFHle6",
					["Role"] = 1,
					["Name"] = "恶魔s主要",
					["Point"] = {
						["y"] = 47.775005340576,
						["x"] = 3.0517578125e-05,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
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
							["OnlyMine"] = true,
							["Name"] = "恶魔增效",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "pet",
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Name"] = "末日降临",
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "pet",
							["OnlyMine"] = true,
							["Name"] = "恶魔增效",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "丛林之魂; 化身：生命之树",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "愈合",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
					},
					["Columns"] = 2,
				}, -- [7]
				{
					["GUID"] = "TMW:group:1PSsuCK5pkNG",
					["Point"] = {
						["y"] = 85,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["Name"] = "魔性征召",
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "暗影启迪",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnStart",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Type"] = "guardian",
							["Name"] = "野生小鬼",
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "塞纳里奥结界; 塞纳里奥结界",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
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
					["Columns"] = 7,
				}, -- [8]
				{
					["GUID"] = "TMW:group:1PSsu1pzr7Uw",
					["Point"] = {
						["y"] = 55,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 1.7,
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["Type"] = "buff",
							["Enabled"] = true,
							["Name"] = "灵魂榨取",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "guardian",
							["Name"] = "野生小鬼; 野生小鬼",
							["Unit"] = "pet",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "guardian",
							["ShowTimerText"] = true,
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "恐惧猎犬",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "牺牲品",
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "TMW:textlayout:1PSqQwxBOyDy",
								},
							},
							["Unit"] = "pet",
							["ShowTimerText"] = true,
							["Type"] = "buff",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "月火术",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["Unit"] = "target",
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "阳炎术",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["BuffOrDebuff"] = "HARMFUL",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["Unit"] = "target",
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "恶魔法阵",
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
					["Columns"] = 7,
				}, -- [9]
				{
					["GUID"] = "TMW:group:1PohxveX4h2J",
					["Name"] = "个人触发Buff",
					["Locked"] = true,
					["Scale"] = 1.7,
					["Point"] = {
						["y"] = 115,
						["x"] = -173,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
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
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Events"] = {
								{
									["Event"] = "OnStart",
									["Type"] = "Animations",
									["Infinite"] = true,
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "抗魔联军的调和; 抗魔联军的调和; 抗魔联军的调和",
							["ShowTimerText"] = true,
							["OnlyMine"] = true,
							["CustomTex"] = "242583",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["OnlyMine"] = true,
							["Name"] = "诺甘农的指令; 增速; 知识激流",
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
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1QF=2tpRiO6y", -- [1]
								"TMW:icon:1QF=2tpTM93G", -- [2]
								"TMW:icon:1QF=2tpUwhvX", -- [3]
								"TMW:icon:1QF=2tpWUwjo", -- [4]
							},
							["EnableStacks"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
							["CheckNext"] = true,
							["Name"] = "军团之轮",
							["OnlyInBags"] = true,
						}, -- [4]
						{
							["Enabled"] = true,
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
							["GUID"] = "TMW:icon:1PVpSt5Sl_k4",
							["Name"] = "延时之力药水",
							["CustomTex"] = "229206",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["Enabled"] = true,
							["Type"] = "conditionicon",
							["Name"] = "灵魂碎片",
							["SettingsPerView"] = {
								["icon"] = {
									["Texts"] = {
										"", -- [1]
										"[SoulShards]", -- [2]
									},
								},
							},
							["OnlyMine"] = true,
							["GUID"] = "TMW:icon:1PVpSt5DLZX5",
							["CustomTex"] = "138556",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
					},
					["Columns"] = 7,
				}, -- [10]
				{
					["GUID"] = "TMW:group:1PoJH68Kkkhl",
					["Point"] = {
						["y"] = -120.73406591712,
						["x"] = 0.25604716585456,
						["point"] = "TOPRIGHT",
						["relativePoint"] = "TOPRIGHT",
					},
					["Columns"] = 8,
					["Scale"] = 1.5,
					["Locked"] = true,
					["Icons"] = {
						{
							["GUID"] = "TMW:icon:1QF=2tpRiO6y",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "军团的怨恨",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFSTACKS",
									["Level"] = 4,
									["Name"] = "军团的怨恨",
									["Checked"] = true,
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "军团的残暴",
							["GUID"] = "TMW:icon:1QF=2tpTM93G",
							["Conditions"] = {
								{
									["Name"] = "军团的残暴",
									["Level"] = 4,
									["Checked"] = true,
									["Type"] = "BUFFSTACKS",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1QF=2tpUwhvX",
							["Conditions"] = {
								{
									["Name"] = "军团的狂热",
									["Level"] = 4,
									["Checked"] = true,
									["Type"] = "BUFFSTACKS",
								}, -- [1]
								["n"] = 1,
							},
							["Name"] = "军团的狂热",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1QF=2tpWUwjo",
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "军团之轮",
							["ShowTimerText"] = true,
							["Enabled"] = true,
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["GUID"] = "TMW:icon:1Pogo6GcTZiR",
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
							["Name"] = "塞弗斯的秘密",
							["CustomTex"] = "208052",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["Enabled"] = true,
							["Type"] = "icd",
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
							["GUID"] = "TMW:icon:1PoJH68NehSb",
							["FakeHidden"] = true,
							["ShowTimer"] = true,
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
							["Name"] = "塞弗斯的秘密: 30",
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
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["Name"] = "生命虹吸",
							["GUID"] = "TMW:icon:1QXuMAcuVW5B",
							["Conditions"] = {
								{
									["Name"] = "生命虹吸",
									["Type"] = "TALENTLEARNED",
								}, -- [1]
								["n"] = 1,
							},
							["ShowTimerText"] = true,
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
						}, -- [7]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["BuffOrDebuff"] = "HARMFUL",
							["Unit"] = "target",
							["FakeHidden"] = true,
							["OnlyMine"] = true,
							["ShowTimerText"] = true,
							["Name"] = "腐蚀之种",
							["GUID"] = "TMW:icon:1QXuMAc_A0Lw",
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
					},
					["Name"] = "备用分组",
				}, -- [11]
				{
					["Icons"] = {
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
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
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [1]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [2]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [3]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [4]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [5]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [6]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [7]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [8]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [9]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [10]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [11]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [12]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [13]
						{
							["States"] = {
								{
								}, -- [1]
								[4] = {
								},
								[3] = {
								},
							},
						}, -- [14]
					},
				}, -- [16]
			},
			["DrawEdge"] = true,
			["Locked"] = true,
			["Version"] = 90301,
			["NumGroups"] = 11,
			["ForceNoBlizzCC"] = true,
		},
	},
}
