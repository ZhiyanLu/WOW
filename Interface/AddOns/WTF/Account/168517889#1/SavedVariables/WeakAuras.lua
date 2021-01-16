
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["恶臭沼气"] = {
			[262313] = 538518,
		},
		["爆裂囊肿"] = {
			[277007] = 1394887,
		},
		["腐烂恶臭"] = {
			[262314] = 136182,
		},
		["腐化者的契约"] = {
			[265662] = 1386549,
		},
		["鲜血护盾"] = {
			[263217] = 538744,
		},
		["持续感染"] = {
			[265127] = 538040,
		},
		["硬化血脉"] = {
			[275189] = 457636,
		},
		["风土病毒"] = {
			[279662] = 136182,
		},
	},
	["displays"] = {
		["Uldir - Mythrax - Sphere - rangecheck"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = 5,
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMP",
			["startAngle"] = 0,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["compress"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["parent"] = "奥迪尔分散技能",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["unit"] = "player",
						["remaining"] = "5",
						["genericShowOn"] = "showOnActive",
						["duration"] = "3",
						["text_operator"] = "find('%s')",
						["spellIds"] = {
						},
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["spellId"] = "272404",
						["use_remaining"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "BigWigs Timer",
						["text"] = "Wave of Corruption",
						["use_text"] = false,
						["subeventSuffix"] = "_CAST_START",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "湮灭之球",
						["remaining_operator"] = "<",
						["use_message"] = true,
						["use_unit"] = true,
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["spellId"] = "272404",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["remaining_operator"] = "<",
						["event"] = "DBM Timer",
						["unit"] = "player",
						["use_spellId"] = true,
						["remaining"] = "5",
						["name"] = "湮灭之球",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_remaining"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1]\n    or WeakAuras.triggerState[aura_env.id].triggers[2]\n    then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 5, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] or t[2])\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["height"] = 160,
			["rotate"] = false,
			["useAdjustededMax"] = true,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["mirror"] = false,
			["uid"] = "4H4WL1f6hSk",
			["xOffset"] = 0,
			["displayText"] = "%c Penis",
			["anchorPoint"] = "CENTER",
			["crop_x"] = 0.41,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["id"] = "Uldir - Mythrax - Sphere - rangecheck",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2135",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["fontSize"] = 72,
			["inverse"] = false,
			["width"] = 160,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
		},
		["Uldir - Zek'voz - Beam - rangecheck"] = {
			["user_y"] = 0,
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["parent"] = "奥迪尔分散技能",
			["anchorPoint"] = "CENTER",
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "270373",
						["remaining_operator"] = "<",
						["message_operator"] = "find('%s')",
						["remaining"] = "5",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["text"] = "Wave of Corruption",
						["event"] = "BigWigs Timer",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "腐化之潮",
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_cloneId"] = false,
						["text_operator"] = "find('%s')",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = true,
						["type"] = "custom",
						["names"] = {
						},
						["unevent"] = "auto",
						["dynamicDuration"] = false,
						["spellIds"] = {
						},
						["use_text"] = false,
						["custom"] = "function(a, msg)\n    if msg then\n        if msg:find(\"spell:264382\") then\n            return true\n        end\n    end\nend",
						["customDuration"] = "",
						["duration"] = "10",
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["unit"] = "player",
						["use_messageType"] = true,
						["custom_type"] = "event",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 5, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["crop_x"] = 0.41,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 160,
			["rotate"] = false,
			["crop_y"] = 0.41,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["startAngle"] = 0,
			["config"] = {
			},
			["desaturate"] = false,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["discrete_rotation"] = 0,
			["blendMode"] = "BLEND",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["width"] = 160,
			["slantMode"] = "INSIDE",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2136",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["alpha"] = 1,
			["textureWrapMode"] = "CLAMP",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Zek'voz - Beam - rangecheck",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["uid"] = "mUpRBrb4nPI",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["backgroundOffset"] = 2,
		},
		["Uldir - Fetid Devourer - Miasma - rangecheck"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%c Penis",
			["adjustedMin"] = 5,
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["useRem"] = true,
						["countOperator"] = ">=",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							262313, -- [1]
						},
						["count"] = "5",
						["names"] = {
							"恶臭沼气", -- [1]
						},
						["remOperator"] = ">",
						["rem"] = "5",
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["names"] = {
						},
						["custom_type"] = "status",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Health",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 8, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["selfPoint"] = "CENTER",
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["fixedWidth"] = 200,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 160,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["crop_y"] = 0.41,
			["config"] = {
			},
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["parent"] = "奥迪尔分散技能",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["mirror"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "progresstexture",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["blendMode"] = "BLEND",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2128",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["slantMode"] = "INSIDE",
			["fontSize"] = 72,
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["startAngle"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Fetid Devourer - Miasma - rangecheck",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["frameStrata"] = 1,
			["width"] = 160,
			["wordWrap"] = "WordWrap",
			["uid"] = "(D)U6rVURR8",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundOffset"] = 2,
		},
		["Uldir - Fetid Devourer - Putrid Paroxysm - rangecheck"] = {
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							262314, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["names"] = {
							"腐烂恶臭", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Health",
						["unevent"] = "timed",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 20, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["unit"] = "player",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["user_y"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["fixedWidth"] = 200,
			["sameTexture"] = true,
			["height"] = 160,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_difficulty"] = true,
				["encounterid"] = "2128",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["config"] = {
			},
			["startAngle"] = 0,
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["frameStrata"] = 1,
			["blendMode"] = "BLEND",
			["selfPoint"] = "CENTER",
			["desaturateForeground"] = false,
			["slantMode"] = "INSIDE",
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["fontSize"] = 72,
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Fetid Devourer - Putrid Paroxysm - rangecheck",
			["parent"] = "奥迪尔分散技能",
			["alpha"] = 1,
			["width"] = 160,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["uid"] = "d0D4Oq)Odyk",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["backgroundOffset"] = 2,
		},
		["Uldir - Zek'voz - Corruptor's Pact - rangecheck"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = 5,
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2136",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["compress"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["parent"] = "奥迪尔分散技能",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["spellId"] = "270373",
						["remaining_operator"] = "<",
						["message_operator"] = "find('%s')",
						["remaining"] = "5",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["text"] = "Wave of Corruption",
						["event"] = "BigWigs Timer",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "腐化之潮",
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["buffShowOn"] = "showOnActive",
						["use_remaining"] = true,
						["text_operator"] = "find('%s')",
						["unevent"] = "auto",
						["remOperator"] = "<=",
						["use_unit"] = true,
						["use_text"] = false,
						["events"] = "",
						["unit"] = "player",
						["names"] = {
							"腐化者的契约", -- [1]
						},
						["spellIds"] = {
							265662, -- [1]
						},
						["dynamicDuration"] = false,
						["use_message"] = true,
						["type"] = "aura",
						["use_messageType"] = true,
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 8, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["height"] = 160,
			["rotate"] = false,
			["useAdjustededMax"] = true,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["mirror"] = false,
			["uid"] = "3PO7DzngXN0",
			["xOffset"] = 0,
			["displayText"] = "%c Penis",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["id"] = "Uldir - Zek'voz - Corruptor's Pact - rangecheck",
			["crop_y"] = 0.41,
			["frameStrata"] = 1,
			["width"] = 160,
			["selfPoint"] = "CENTER",
			["fontSize"] = 72,
			["inverse"] = false,
			["anchorFrameType"] = "SCREEN",
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["cooldown"] = true,
			["startAngle"] = 0,
		},
		["P3地上菌株爆炸"] = {
			["sparkWidth"] = 2,
			["stacksSize"] = 12,
			["xOffset"] = -65.8970947265625,
			["stacksFlags"] = "None",
			["yOffset"] = 196.170074462891,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/ryMosy2_7/2",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2122",
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "HEALER",
					["multi"] = {
						["HEALER"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "elvskada",
			["textFont"] = "Expressway",
			["zoom"] = 0,
			["auto"] = true,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
						["type"] = "event",
						["spellId"] = "274582",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["name"] = "恶毒菌株",
						["duration"] = "14",
						["event"] = "Combat Log",
						["names"] = {
						},
						["destUnit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["unit"] = "player",
						["use_destUnit"] = false,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "263503",
						["unevent"] = "timed",
						["duration"] = "30",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["name"] = "重组冲击",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Combat Log",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "custom",
					["colorR"] = 1,
					["scalex"] = 1,
					["scaley"] = 1,
					["alphaType"] = "custom",
					["duration"] = "0",
					["alpha"] = 0.01,
					["colorA"] = 1,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function()\n    local bar = WeakAuras.regions[aura_env.id].region.bar\n    local step = bar:GetWidth()/2\n    bar.spark1:SetPoint(\"LEFT\", bar, \"LEFT\", 0, 1)\n    bar.spark1:SetVertexColor(1, 1, 1, 1)\n    \n    bar.spark2:SetPoint(\"LEFT\", bar, \"LEFT\", step*0.9, 1)\n    bar.spark2:SetVertexColor(1, 1, 1, 1)\n    \n    \n    return 1\nend\n\n\n\n\n\n\n\n",
					["x"] = 0,
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["use_alpha"] = true,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["stickyDuration"] = false,
			["uid"] = "NaqsoHnv30L",
			["spark"] = false,
			["borderInset"] = 11,
			["textSize"] = 24,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.6869395673275, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["sound"] = "Sound\\Spells\\PVPFlagTaken.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\nlocal bar = WeakAuras.regions[aura_env.id].region.bar\n\n\nfor i = 1,2 do\n    local spark = bar:CreateTexture(nil, \"ARTWORK\");\n    spark:SetDrawLayer(\"ARTWORK\", 3);\n    bar[\"spark\"..i] = spark\n    bar[\"spark\"..i]:SetTexture(bar.spark:GetTexture())\n    bar[\"spark\"..i]:SetWidth(bar.spark:GetWidth()+2);\n    bar[\"spark\"..i]:SetHeight(bar:GetHeight());\n    bar[\"spark\"..i]:SetBlendMode(bar.spark:GetBlendMode());\n    bar[\"spark\"..i]:SetVertexColor(1, 1, 1, 1)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["id"] = "P3地上菌株爆炸",
			["icon_side"] = "RIGHT",
			["textFlags"] = "None",
			["timerSize"] = 21,
			["sparkHeight"] = 27,
			["borderBackdrop"] = "Blizzard Tooltip",
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "小心菌株",
			["sparkRotationMode"] = "AUTO",
			["sparkHidden"] = "NEVER",
			["borderInFront"] = true,
			["frameStrata"] = 1,
			["width"] = 290.154144287109,
			["stacksFont"] = "Friz Quadrata TT",
			["height"] = 35.9313201904297,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["NO NO NO"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "277057",
						["use_absorbMode"] = true,
						["use_spell"] = true,
						["subeventPrefix"] = "SPELL",
						["remaining"] = "3",
						["use_unit"] = true,
						["unit"] = "boss1",
						["message_operator"] = "find('%s')",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["spell"] = "末日决战",
						["spellIds"] = {
							233279, -- [1]
						},
						["unevent"] = "timed",
						["type"] = "event",
						["remaining_operator"] = "<=",
						["event"] = "DBM Announce",
						["genericShowOn"] = "showOnActive",
						["message"] = "爆裂囊肿",
						["use_spellId"] = false,
						["name"] = "召唤爆裂囊肿",
						["subeventSuffix"] = "_CAST_START",
						["use_message"] = true,
						["duration"] = "4",
						["use_specific_unit"] = true,
						["names"] = {
							"碎裂星辰", -- [1]
						},
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							277007, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["names"] = {
							"爆裂囊肿", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["percenthealth"] = "20",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<",
						["duration"] = "1",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [3]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["text2Enabled"] = false,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["progressPrecision"] = 0,
			["actions"] = {
				["start"] = {
					["message_type"] = "YELL",
					["do_message"] = false,
					["message"] = "yesyesyes",
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"] \nf.t1 = 5\nf.t2 = -1\nf:SetScript(\"OnUpdate\", function(self, e)\n        f.t1 = f.t1 - e\n        f.t2 = f.t2 - e\n        if f.t1 > 0 then\n            if f.t2 <= -1 then\n                SendChatMessage(\"NO NO\",\"SAY\")\n                f.t2 = 0\n            end\n        end\nend)",
					["do_sound"] = false,
					["sound_path"] = "Sound\\Creature\\AlgalonTheObserver\\UR_Algalon_BHole01.ogg",
					["sound"] = "Sound\\Creature\\LichKing\\IC_Lich King_Special01.ogg",
					["do_custom"] = true,
					["do_glow"] = false,
				},
				["init"] = {
					["do_custom"] = false,
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"] \n\n",
				},
				["finish"] = {
					["message_type"] = "SAY",
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"] \nf:SetScript(\"OnUpdate\", nil)\n\n\n\n",
					["do_message"] = false,
					["do_custom"] = true,
				},
			},
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "RIGHT",
			["displayIcon"] = 571319,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 50,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "grow",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["use_zoneId"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["use_name"] = false,
				["use_spellknown"] = false,
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["DAMAGER"] = true,
						["TANK"] = true,
						["HEALER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2051",
			},
			["glow"] = false,
			["config"] = {
			},
			["text1Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 50,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0, -- [2]
				0.0980392156862745, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "爆裂囊肿",
			["text2"] = "%p",
			["desaturate"] = false,
			["zoom"] = 0,
			["auto"] = false,
			["stickyDuration"] = false,
			["id"] = "NO NO NO",
			["text2Font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "爆裂囊肿",
			["uid"] = "LshbfmDNKSu",
			["inverse"] = false,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["Uldir - Taloc - Hardened Arteries - rangecheck"] = {
			["user_y"] = 0,
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["parent"] = "奥迪尔分散技能",
			["anchorPoint"] = "CENTER",
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "270373",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["remaining_operator"] = "<",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["names"] = {
							"硬化血脉", -- [1]
						},
						["remaining"] = "5",
						["use_alwaystrue"] = true,
						["use_cloneId"] = false,
						["spellIds"] = {
							275189, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["text_operator"] = "find('%s')",
						["buffShowOn"] = "showOnActive",
						["use_remaining"] = true,
						["type"] = "aura",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["use_text"] = false,
						["text"] = "Wave of Corruption",
						["event"] = "BigWigs Timer",
						["subeventSuffix"] = "_CAST_START",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "腐化之潮",
						["duration"] = "3",
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 8, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["crop_x"] = 0.41,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 160,
			["rotate"] = false,
			["crop_y"] = 0.41,
			["selfPoint"] = "CENTER",
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["desaturateForeground"] = false,
			["startAngle"] = 0,
			["config"] = {
			},
			["desaturate"] = false,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["rotation"] = 0,
			["blendMode"] = "BLEND",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["width"] = 160,
			["slantMode"] = "INSIDE",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2144",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["alpha"] = 1,
			["fontSize"] = 72,
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Taloc - Hardened Arteries - rangecheck",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["textureWrapMode"] = "CLAMP",
			["uid"] = "kpoewd7WMBP",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["backgroundOffset"] = 2,
		},
		["YES YES YES"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "277057",
						["use_absorbMode"] = true,
						["use_spell"] = true,
						["subeventPrefix"] = "SPELL",
						["remaining"] = "3",
						["use_unit"] = true,
						["unit"] = "boss1",
						["message_operator"] = "find('%s')",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["type"] = "event",
						["use_remaining"] = false,
						["spellIds"] = {
							233279, -- [1]
						},
						["unevent"] = "timed",
						["spell"] = "末日决战",
						["remaining_operator"] = "<=",
						["event"] = "DBM Announce",
						["genericShowOn"] = "showOnActive",
						["message"] = "爆裂囊肿",
						["use_spellId"] = false,
						["name"] = "召唤爆裂囊肿",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_message"] = true,
						["duration"] = "4",
						["names"] = {
							"碎裂星辰", -- [1]
						},
						["use_specific_unit"] = true,
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"爆裂囊肿", -- [1]
						},
						["spellIds"] = {
							277007, -- [1]
						},
						["buffShowOn"] = "showOnMissing",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["use_health"] = false,
						["health_operator"] = "<",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "20",
						["use_unit"] = true,
						["unit"] = "target",
						["unevent"] = "auto",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<",
						["duration"] = "1",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [3]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["text2Enabled"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["progressPrecision"] = 0,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "grow",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "RIGHT",
			["displayIcon"] = 571319,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 50,
			["useglowColor"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
						["DAMAGER"] = true,
						["TANK"] = true,
						["HEALER"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["use_name"] = false,
				["encounterid"] = "2051",
				["use_zone"] = false,
			},
			["text1Enabled"] = true,
			["config"] = {
			},
			["parent"] = "爆裂囊肿",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 50,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0, -- [2]
				0.0980392156862745, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["actions"] = {
				["start"] = {
					["message_type"] = "YELL",
					["do_message"] = false,
					["message"] = "nonono",
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"] \nf.t1 = 5\nf.t2 = -1\nf:SetScript(\"OnUpdate\", function(self, e)\n        f.t1 = f.t1 - e\n        f.t2 = f.t2 - e\n        if f.t1 > 0 then\n            if f.t2 <= -1 then\n                SendChatMessage(\"YES YES\",\"SAY\")\n                f.t2 = 0\n            end\n        end\nend)",
					["do_sound"] = false,
					["sound"] = "Sound\\Creature\\LichKing\\IC_Lich King_Special01.ogg",
					["do_custom"] = true,
					["sound_path"] = "Sound\\Creature\\AlgalonTheObserver\\UR_Algalon_BHole01.ogg",
					["do_glow"] = false,
				},
				["finish"] = {
					["message_type"] = "SAY",
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"] \nf:SetScript(\"OnUpdate\", nil)\n\n\n\n",
					["do_message"] = false,
					["do_custom"] = true,
				},
				["init"] = {
					["do_custom"] = false,
					["custom"] = "\n\n",
				},
			},
			["text1"] = "爆裂囊肿",
			["text2"] = "%p",
			["xOffset"] = 0,
			["zoom"] = 0,
			["auto"] = false,
			["text1Containment"] = "OUTSIDE",
			["id"] = "YES YES YES",
			["glow"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 9,
			["uid"] = "jVnPjWfvUju",
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["cooldownTextEnabled"] = true,
		},
		["Quaking Bar"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -655,
			["stacksFlags"] = "None",
			["yOffset"] = -185,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/B1H06AUNM/3",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.63529411764706, -- [1]
				0.34117647058824, -- [2]
				0.18823529411765, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["affixes"] = {
					["single"] = 14,
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_affixes"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["challenge"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["use_size"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Expressway",
			["sparkTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["auto"] = false,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["borderInset"] = 0,
			["displayIcon"] = 136025,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then\n        return \"20\"\n    else\n        if aura_env.state and aura_env.state.expirationTime then\n            local remaining = aura_env.state.expirationTime - GetTime()\n            \n            return floor(remaining % 20)\n        end\n    end\nend",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["spellId"] = "240447",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["destUnit"] = "player",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["duration"] = "60",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "event",
						["spellIds"] = {
						},
						["auraType"] = "DEBUFF",
						["use_showOn"] = true,
						["use_spellId"] = true,
						["event"] = "Combat Log",
						["use_itemName"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["name"] = "Quake",
						["unevent"] = "timed",
						["spellName"] = 0,
						["use_destUnit"] = true,
						["unit"] = "player",
						["use_auraType"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkWidth"] = 3,
			["textSize"] = 25,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_custom"] = false,
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "-- Made by Domestos#3678 @Discord\nlocal bar = WeakAuras.regions[aura_env.id].region.bar\n\nlocal function CreateSpark()\n    local spark = bar:CreateTexture(nil, \"ARTWORK\")\n    spark:SetDrawLayer(\"ARTWORK\", 4)\n    spark:SetTexture(bar.spark:GetTexture())\n    spark:SetBlendMode(bar.spark:GetBlendMode())\n    spark:SetWidth(bar.spark:GetWidth())\n    spark:SetHeight(bar.spark:GetHeight())\n    \n    return spark\nend\n\nlocal function DrawSpark(offset, spark)\n    spark:SetPoint(\"CENTER\", bar, \"RIGHT\", offset * -1, 0)\n    spark:Show()\nend\n\n-- create sparks\nif bar.spark20 then bar.spark20:Hide() end\nif bar.spark40 then bar.spark40:Hide() end\nif bar.spark60 then bar.spark60:Hide() end\nbar.spark20 = CreateSpark()\nbar.spark40 = CreateSpark()\nbar.spark60 = CreateSpark()\n\n-- place sparks on bar\nlocal sizePerUnit = bar:GetWidth() / 60\nDrawSpark(sizePerUnit * 20, bar.spark20)\nDrawSpark(sizePerUnit * 40, bar.spark40)\nDrawSpark(sizePerUnit * 60, bar.spark60)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["height"] = 20,
			["timerFlags"] = "None",
			["timer"] = true,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0.086274509803922, -- [1]
				0.086274509803922, -- [2]
				0.086274509803922, -- [3]
				1, -- [4]
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["spark"] = false,
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["stacksFont"] = "Friz Quadrata TT",
			["borderSize"] = 2,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "LEFT",
			["uid"] = "v0WIvsY8rNA",
			["displayTextRight"] = "%c",
			["sparkHeight"] = 30,
			["sparkRotationMode"] = "AUTO",
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 28,
			["borderOffset"] = 2,
			["id"] = "Quaking Bar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["width"] = 300,
			["zoom"] = 0.3,
			["sparkOffsetX"] = 0,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Uldir - Fetid Devourer - Miasma < 5 - rangecheck"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["adjustedMax"] = 5,
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["debuffType"] = "HARMFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"恶臭沼气", -- [1]
						},
						["spellIds"] = {
							262313, -- [1]
						},
						["count"] = "5",
						["unit"] = "player",
						["remOperator"] = "<=",
						["type"] = "aura",
						["countOperator"] = ">=",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "status",
						["unevent"] = "timed",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 20, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["wordWrap"] = "WordWrap",
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 160,
			["automaticWidth"] = "Auto",
			["crop_y"] = 0.41,
			["config"] = {
			},
			["useAdjustededMax"] = true,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["parent"] = "奥迪尔分散技能",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["blendMode"] = "BLEND",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2128",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_difficulty"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["slantMode"] = "INSIDE",
			["fontSize"] = 72,
			["displayText"] = "%c Penis",
			["startAngle"] = 0,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Fetid Devourer - Miasma < 5 - rangecheck",
			["textureWrapMode"] = "CLAMP",
			["frameStrata"] = 1,
			["width"] = 160,
			["selfPoint"] = "CENTER",
			["uid"] = "3zOVrjvI(BN",
			["inverse"] = false,
			["customTextUpdate"] = "update",
			["orientation"] = "ANTICLOCKWISE",
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["backgroundOffset"] = 2,
		},
		["爆裂囊肿"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"NO NO NO", -- [1]
				"YES YES YES", -- [2]
			},
			["xOffset"] = -266.678527832031,
			["yOffset"] = 242.589691162109,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["radius"] = 200,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["rotation"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "爆裂囊肿",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stagger"] = 0,
			["config"] = {
			},
			["uid"] = "w5gsnCfm5L2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["backgroundInset"] = 0,
			["internalVersion"] = 9,
		},
		["当前目标指示"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"目标指示器 ", -- [1]
				"目标距离", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["borderOffset"] = 5,
			["internalVersion"] = 9,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "当前目标指示",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "Vo9)pzeelto",
			["borderInset"] = 11,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["scale"] = 1,
		},
		["ZT - Nnogga's Party CD Front End"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["text1FontSize"] = 15,
			["xOffset"] = -5000,
			["stacksFlags"] = "OUTLINE",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/Hk8U8kanm/8",
			["actions"] = {
				["start"] = {
					["custom"] = "WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\")",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "C_Timer.After(0.05,function() \n        WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \nend)",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "--CHANGE HERE--\naura_env.maxAuraCount = 7\n\n---------------\n--contruct options from custom options\nlocal growDirections = {\n    [1] = {\"LEFT\",\"TOPRIGHT\",\"TOPLEFT\"},\n    [2] = {\"RIGHT\",\"TOPLEFT\",\"TOPRIGHT\"},\n    [3] = {\"TOP\",\"BOTTOMLEFT\",\"TOPLEFT\"},    \n    [4] = {\"BOTTOM\",\"TOPLEFT\",\"BOTTOMLEFT\"},\n}\naura_env.growdirection,aura_env.positionFrom,aura_env.positionTo = unpack(growDirections[aura_env.config.growDirection])\naura_env.spacing = aura_env.config.spacing\naura_env.xOffset = aura_env.config.xOffset\naura_env.yOffset = aura_env.config.yOffset\naura_env.ignorePlayer = not aura_env.config.showPlayer\n\naura_env.rows = {{},{}}\nlocal trackedTypes = {\n    [1] = \"DAMAGE\",\n    [2] = \"HEALING\",\n    [3] = \"IMMUNITY\",\n    [4] = \"PERSONAL\",\n    [5] = \"HARDCC\",\n    [6] = \"SOFTCC\",\n    [7] = \"EXTERNAL\",\n    [8] = \"UTILITY\", \n    [9] = \"DISPEL\", \n    [10]= \"INTERRUPT\",\n    [11]= \"STHARDCC\",\n    [12]= \"STSOFTCC\",\n    [13]= \"DEFMDISPEL\",\n    [14]= \"TANK\",\n}\n\nfor i=1,2 do\n    for j=1,#trackedTypes do\n        local key = \"row\"..i..j\n        if aura_env.config[key] then\n            tinsert(aura_env.rows[i],trackedTypes[j])\n        end        \n    end    \nend\n\n---------------\n\naura_env.types = {}\nfor rowIdx,row in ipairs(aura_env.rows) do\n    for priority,type in ipairs(row) do\n        aura_env.types[type] = true\n    end\nend\n\naura_env.auraCount = {}\n\n--credit to buds\n--https://wago.io/BFADungeonTargetedSpells\nlocal frame_priority = {\n    -- raid frames\n    [1] = \"^Vd1\", -- vuhdo\n    [2] = \"^Healbot\", -- healbot\n    [3] = \"^GridLayout\", -- grid\n    [4] = \"^Grid2Layout\", -- grid2\n    [5] = \"^ElvUF_RaidGroup\", -- elv\n    [6] = \"^oUF_bdGrid\", -- bdgrid\n    [7] = \"^oUF.*raid\", -- generic oUF\n    [8] = \"^LimeGroup\", -- lime\n    [9] = \"^SUFHeaderraid\", -- suf\n    [10] = \"^CompactRaid\", -- blizz\n    -- party frames\n    [11] = \"^SUFHeaderparty\", --suf\n    [12] = \"^ElvUF_PartyGroup\", -- elv\n    [13] = \"^oUF.*party\", -- generic oUF\n    [14] = \"^PitBull4_Groups_Party\", -- pitbull4\n    [15] = \"^CompactParty\", -- blizz\n    -- player frame\n    [16] = \"^SUFUnitplayer\",\n    [17] = \"^PitBull4_Frames_Player\",\n    [18] = \"^ElvUF_Player\",\n    [19] = \"^oUF.*player\",\n    [20] = \"^PlayerFrame\",\n}\n\nWA_GetFramesCache = WA_GetFramesCache or {}\nif not WA_GetFramesCacheListener then\n    WA_GetFramesCacheListener = CreateFrame(\"Frame\")\n    local f = WA_GetFramesCacheListener\n    f:RegisterEvent(\"PLAYER_REGEN_DISABLED\")\n    f:RegisterEvent(\"PLAYER_REGEN_ENABLED\")\n    f:RegisterEvent(\"GROUP_ROSTER_UPDATE\")\n    f:SetScript(\"OnEvent\", function(self, event, ...)\n            WA_GetFramesCache = {}\n    end)\nend\n\nlocal ignoredFrames = {    \n    [\"SUFUnitplayer\"]=true,\n    [\"PitBull4_Frames_Player\"]=true,\n    [\"PitBull4_Frames_Target\"]=true,\n    [\"PitBull4_Frames_TargetTarget\"]=true,\n    [\"ElvUF_Player\"]=true,\n    [\"ElvUF_Target\"]=true,\n    [\"ElvUF_TargetTarget\"]=true,\n    [\"oUF_TukuiPlayer\"]=true,\n    [\"oUF_TukuiTarget\"]=true,\n    [\"oUF_TukuiTargetTarget\"]=true,\n    [\"PlayerFrame\"]=true,\n    [\"TargetFrame\"]=true,\n    [\"TargetTargetFrame\"]=true,\n}\n\nlocal function GetFrames(target)\n    local function FindButtonsForUnit(frame, target)\n        local results = {}\n        if type(frame) == \"table\" and not frame:IsForbidden() then\n            local type = frame:GetObjectType()\n            if type == \"Frame\" or type == \"Button\" then\n                for _,child in ipairs({frame:GetChildren()}) do\n                    for _,v in pairs(FindButtonsForUnit(child, target)) do\n                        tinsert(results, v)                      \n                    end\n                end\n            end\n            if type == \"Button\" then\n                local unit = frame:GetAttribute('unit')\n                if unit and frame:IsVisible() and frame:GetName() then\n                    WA_GetFramesCache[frame] = unit\n                    if UnitIsUnit(unit, target) then\n                        tinsert(results, frame)\n                    end\n                end\n            end\n        end\n        return results\n    end\n    \n    if not UnitExists(target) then\n        if type(target) == \"string\" and target:find(\"Player\") then\n            target = select(6,GetPlayerInfoByGUID(target))\n        else\n            target = target:gsub(\" .*\", \"\")\n            if not UnitExists(target) then\n                return {}\n            end\n        end\n    end \n    \n    local results = {}\n    for frame, unit in pairs(WA_GetFramesCache) do\n        --print(\"from cache:\", frame:GetName())\n        if UnitIsUnit(unit, target) then\n            if frame:GetAttribute('unit') == unit then\n                tinsert(results, frame)\n            else\n                results = {}\n                break\n            end\n        end\n    end\n    \n    return #results > 0 and results or FindButtonsForUnit(UIParent, target)\nend\n\nlocal isElvUI = IsAddOnLoaded(\"ElvUI\")\nlocal function WhyElvWhy(frame)\n    if isElvUI and frame and frame:GetName():find(\"^ElvUF_\") and frame.Health then\n        return frame.Health\n    else\n        return frame\n    end\nend\n\n\nfunction aura_env.GetFrame(target)\n    local frames = GetFrames(target)\n    if not frames then return nil end\n    for i=1,#frame_priority do\n        for _,frame in pairs(frames) do\n            if (not ignoredFrames[frame:GetName()]) and (frame:GetName()):find(frame_priority[i]) then\n                return WhyElvWhy(frame)\n            end\n        end\n    end\n    if frames[1] and (not ignoredFrames[frames[1]:GetName()]) then\n        return WhyElvWhy(frames[1])\n    end    \nend\n\nlocal function setIconPosition(v,rowIdx)\n    local unit            \n    for u in WA_IterateGroupMembers() do\n        if UnitName(u) == v.name then unit = u end\n    end\n    if not unit then \n        v.show = false\n        v.changed = true\n    else\n        v.unit = unit\n        local region = WeakAuras.GetRegion(aura_env.id, v.ID)\n        local f = aura_env.GetFrame(v.unit)\n        if f and region --[[and region:IsVisible()]] then\n            aura_env.auraCount[v.unit] = aura_env.auraCount[v.unit] or {}\n            aura_env.auraCount[v.unit][rowIdx] = aura_env.auraCount[v.unit][rowIdx] or 0\n            \n            local order = aura_env.auraCount[v.unit][rowIdx]\n            local xoffset, yoffset = 0, 0\n            local height,width = region:GetHeight()+aura_env.spacing, region:GetWidth()+aura_env.spacing\n            if aura_env.growdirection == \"TOP\" then\n                yoffset = (order) * height\n                xoffset = xoffset + (rowIdx-1)*height\n            elseif aura_env.growdirection == \"BOTTOM\" then\n                yoffset = - (order) * height\n                xoffset = xoffset + (rowIdx-1)*height\n            elseif aura_env.growdirection == \"RIGHT\" then\n                xoffset = (order) * width\n                yoffset = yoffset - (rowIdx-1)*height\n            elseif aura_env.growdirection == \"LEFT\" then\n                xoffset = - (order) * width\n                yoffset = yoffset - (rowIdx-1)*height\n            elseif aura_env.growdirection == \"HORIZONTAL\" then\n                xoffset = (-((order) * width / 2)) + ((order - 1) * width)\n            elseif aura_env.growdirection == \"VERTICAL\" then\n                xoffset = (-((order) * width / 2)) + ((order - 1) * width)\n            end \n            if aura_env.auraCount[v.unit][rowIdx]+1 > aura_env.maxAuraCount then\n                xoffset = -3000\n            end\n            region:ClearAllPoints()\n            region:SetPoint(aura_env.positionFrom,f,aura_env.positionTo,xoffset+aura_env.xOffset,yoffset+aura_env.yOffset)                \n            aura_env.auraCount[v.unit][rowIdx] = aura_env.auraCount[v.unit][rowIdx] + 1 \n        else\n            region:ClearAllPoints()\n            region:SetPoint(aura_env.positionFrom,UIParent,aura_env.positionTo,-3000,0) \n        end        \n    end\nend\n\n\nfunction aura_env.updateFrames()\n    local allstates = aura_env.allstates\n    if not allstates then return end\n    table.wipe(aura_env.auraCount)    \n    for rowIdx,row in ipairs(aura_env.rows) do\n        for priority,type in ipairs(row) do            \n            for _, v in pairs(allstates) do\n                if v.type == type then\n                    setIconPosition(v,rowIdx)\n                end                \n            end            \n        end\n    end\nend",
					["do_custom"] = true,
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["uniqueId"] = "ZenTracker",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
						["arena"] = true,
						["none"] = true,
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["stacks"] = true,
			["text2FontSize"] = 24,
			["texture"] = "Blizzard Raid Bar",
			["textFont"] = "ArchivoNarrow-Bold",
			["borderOffset"] = 0,
			["auto"] = true,
			["glow"] = false,
			["timerFont"] = "ArchivoNarrow-Bold",
			["text2Enabled"] = false,
			["sparkWidth"] = 10,
			["sparkRotation"] = 0,
			["borderInset"] = 1,
			["icon"] = true,
			["config"] = {
				["row12"] = true,
				["row214"] = false,
				["row28"] = true,
				["showPlayer"] = true,
				["yOffset"] = 0,
				["row25"] = true,
				["row21"] = false,
				["row114"] = true,
				["row16"] = false,
				["row27"] = true,
				["row18"] = false,
				["row24"] = false,
				["row212"] = false,
				["row213"] = false,
				["row14"] = true,
				["row110"] = false,
				["spacing"] = 0,
				["row15"] = false,
				["row11"] = true,
				["growDirection"] = 2,
				["row111"] = false,
				["row26"] = true,
				["row23"] = false,
				["row211"] = false,
				["row210"] = false,
				["row17"] = false,
				["xOffset"] = 0,
				["row19"] = false,
				["row112"] = false,
				["row13"] = true,
				["row113"] = false,
				["row22"] = false,
				["row29"] = false,
			},
			["text2"] = "%p",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0.3,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["spark"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["customText"] = "\n\n",
			["text2Point"] = "CENTER",
			["timerSize"] = 12,
			["sparkRotationMode"] = "AUTO",
			["cooldownSwipe"] = true,
			["textSize"] = 12,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["displayTextLeft"] = "%n",
			["useglowColor"] = false,
			["uid"] = "fSAugr(0C2v",
			["internalVersion"] = 9,
			["text1"] = "%s",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["colorType"] = "custom",
					["scalex"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    if aura_env.state and aura_env.state.member then\n        local colors = RAID_CLASS_COLORS[aura_env.state.member.classID]\n        if colors then\n            return colors.r, colors.g, colors.b, 1\n        end\n    end\nend\n",
					["rotate"] = 0,
					["scaley"] = 1,
					["use_color"] = true,
				},
				["main"] = {
					["colorR"] = 1,
					["colorType"] = "custom",
					["scaley"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "function()\n    if aura_env.state then\n        local c = aura_env.state.classColor\n        if c then\n            return c.r, c.g, c.b, 1\n        end\n    end\nend",
					["rotate"] = 0,
					["scalex"] = 1,
					["use_color"] = false,
				},
				["finish"] = {
					["colorR"] = 1,
					["colorType"] = "custom",
					["scalex"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["colorFunc"] = "\n\n",
					["rotate"] = 0,
					["scaley"] = 1,
					["use_color"] = false,
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["progressPrecision"] = 1,
			["cooldownTextEnabled"] = true,
			["borderBackdrop"] = "Solid",
			["borderSize"] = 1,
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["authorOptions"] = {
				{
					["width"] = 1,
					["type"] = "select",
					["default"] = 1,
					["values"] = {
						"Left", -- [1]
						"Right", -- [2]
						"Top", -- [3]
						"Bottom", -- [4]
					},
					["useDesc"] = true,
					["key"] = "growDirection",
					["name"] = "Grow Direction",
					["desc"] = "Direction the icons should grow towards, relative to the raidframe.",
				}, -- [1]
				{
					["softMin"] = 0,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 25,
					["step"] = 1,
					["desc"] = "Amount of pixels between icons.",
					["min"] = -10,
					["name"] = "Spacing",
					["default"] = 2,
					["softMax"] = 10,
					["key"] = "spacing",
					["useDesc"] = true,
					["width"] = 1,
				}, -- [2]
				{
					["softMin"] = -15,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 500,
					["step"] = 1,
					["desc"] = "Amount of pixels the display is offset horizontally. ",
					["min"] = -500,
					["name"] = "X-Offset",
					["default"] = 0,
					["softMax"] = 15,
					["key"] = "xOffset",
					["useDesc"] = true,
					["width"] = 1,
				}, -- [3]
				{
					["softMin"] = -15,
					["type"] = "range",
					["bigStep"] = 1,
					["max"] = 500,
					["step"] = 1,
					["desc"] = "Amount of pixels the display is offset vertically. ",
					["min"] = -500,
					["name"] = "Y-Offset",
					["default"] = -1,
					["softMax"] = 15,
					["key"] = "yOffset",
					["useDesc"] = true,
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "showPlayer",
					["width"] = 1,
					["name"] = "Show Player",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "Show your own spells",
				}, -- [5]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 1,
				}, -- [6]
				{
					["text"] = "Row 1:",
					["type"] = "description",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [7]
				{
					["type"] = "toggle",
					["key"] = "row11",
					["default"] = true,
					["name"] = "Damage",
					["width"] = 0.5,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "row12",
					["default"] = true,
					["name"] = "Healing",
					["width"] = 0.5,
				}, -- [9]
				{
					["type"] = "toggle",
					["key"] = "row13",
					["default"] = true,
					["name"] = "Immunity",
					["width"] = 0.5,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "row14",
					["default"] = true,
					["name"] = "Personal",
					["width"] = 0.5,
				}, -- [11]
				{
					["type"] = "toggle",
					["key"] = "row15",
					["default"] = false,
					["name"] = "Hard CC",
					["width"] = 0.5,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "row16",
					["default"] = false,
					["name"] = "Soft CC",
					["width"] = 0.5,
				}, -- [13]
				{
					["type"] = "toggle",
					["key"] = "row17",
					["default"] = false,
					["name"] = "External",
					["width"] = 0.5,
				}, -- [14]
				{
					["type"] = "toggle",
					["key"] = "row18",
					["default"] = false,
					["name"] = "Utility",
					["width"] = 0.5,
				}, -- [15]
				{
					["type"] = "toggle",
					["key"] = "row19",
					["default"] = false,
					["name"] = "Dispel",
					["width"] = 0.5,
				}, -- [16]
				{
					["type"] = "toggle",
					["key"] = "row110",
					["default"] = false,
					["name"] = "Interrupt",
					["width"] = 0.5,
				}, -- [17]
				{
					["type"] = "toggle",
					["key"] = "row111",
					["default"] = false,
					["name"] = "ST Hard CC",
					["width"] = 0.5,
				}, -- [18]
				{
					["type"] = "toggle",
					["key"] = "row112",
					["default"] = false,
					["name"] = "ST Soft CC",
					["width"] = 0.5,
				}, -- [19]
				{
					["type"] = "toggle",
					["key"] = "row113",
					["default"] = false,
					["name"] = "Def Dispel",
					["width"] = 0.5,
				}, -- [20]
				{
					["type"] = "toggle",
					["key"] = "row114",
					["default"] = false,
					["name"] = "Tank",
					["width"] = 0.5,
				}, -- [21]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 1,
				}, -- [22]
				{
					["text"] = "Row 2",
					["type"] = "description",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [23]
				{
					["type"] = "toggle",
					["key"] = "row21",
					["default"] = false,
					["name"] = "Damage",
					["width"] = 0.5,
				}, -- [24]
				{
					["type"] = "toggle",
					["key"] = "row22",
					["default"] = false,
					["name"] = "Healing",
					["width"] = 0.5,
				}, -- [25]
				{
					["type"] = "toggle",
					["key"] = "row23",
					["default"] = false,
					["name"] = "Immunity",
					["width"] = 0.5,
				}, -- [26]
				{
					["type"] = "toggle",
					["key"] = "row24",
					["default"] = false,
					["name"] = "Personal",
					["width"] = 0.5,
				}, -- [27]
				{
					["type"] = "toggle",
					["key"] = "row25",
					["default"] = true,
					["name"] = "Hard CC",
					["width"] = 0.5,
				}, -- [28]
				{
					["type"] = "toggle",
					["key"] = "row26",
					["default"] = true,
					["name"] = "Soft CC",
					["width"] = 0.5,
				}, -- [29]
				{
					["type"] = "toggle",
					["key"] = "row27",
					["default"] = true,
					["name"] = "External",
					["width"] = 0.5,
				}, -- [30]
				{
					["type"] = "toggle",
					["key"] = "row28",
					["default"] = true,
					["name"] = "Utility",
					["width"] = 0.5,
				}, -- [31]
				{
					["type"] = "toggle",
					["key"] = "row29",
					["default"] = true,
					["name"] = "Dispel",
					["width"] = 0.5,
				}, -- [32]
				{
					["type"] = "toggle",
					["key"] = "row210",
					["default"] = false,
					["name"] = "Interrupt",
					["width"] = 0.5,
				}, -- [33]
				{
					["type"] = "toggle",
					["key"] = "row211",
					["default"] = false,
					["name"] = "ST Hard CC",
					["width"] = 0.5,
				}, -- [34]
				{
					["type"] = "toggle",
					["key"] = "row212",
					["default"] = false,
					["name"] = "ST Soft CC",
					["width"] = 0.5,
				}, -- [35]
				{
					["type"] = "toggle",
					["key"] = "row213",
					["default"] = false,
					["name"] = "Def Dispel",
					["width"] = 0.5,
				}, -- [36]
				{
					["type"] = "toggle",
					["key"] = "row214",
					["default"] = false,
					["name"] = "Tank",
					["width"] = 0.5,
				}, -- [37]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["width"] = 1,
				}, -- [38]
			},
			["borderInFront"] = true,
			["height"] = 35,
			["icon_side"] = "LEFT",
			["text1Enabled"] = true,
			["text1Containment"] = "INSIDE",
			["sparkHeight"] = 30,
			["rotateText"] = "NONE",
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["genericShowOn"] = "showOnActive",
						["duration"] = "1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "ZT_ADD",
						["spellIds"] = {
						},
						["custom"] = "function(allstates, event, type, watchID, member, spellID)\n    if event ~= \"ZT_ADD\" then\n        return\n    end\n    \n    -- If this WA was just loaded\n    if not type then\n        -- Since there is no unload event, hooking into region:Collapse() which\n        -- is called from WeakAuras.UnloadDisplays(...)\n        aura_env.region.ZTTypes = aura_env.types\n        \n        if not aura_env.region.ZTCollapse then\n            aura_env.region.ZTCollapse = aura_env.region.Collapse\n        end\n        \n        function aura_env.region:Collapse(...)\n            if self.ZTTypes and (not WeakAuras.loaded[self.id]) then\n                for t,isTracked in pairs(self.ZTTypes) do\n                    if isTracked then\n                        WeakAuras.ScanEvents(\"ZT_UNREGISTER\", t, self.id)\n                    end\n                end\n                self.ZTTypes = nil\n            end\n            \n            self.ZTCollapse(self, ...)\n        end\n        \n        -- Register for all types tracked by this front-end WA\n        for t,isTracked in pairs(aura_env.types) do\n            if isTracked then\n                WeakAuras.ScanEvents(\"ZT_REGISTER\", t, aura_env.region.id)\n            end\n        end\n    end\n    \n    if aura_env.types[type] then\n        if watchID and (not aura_env.ignorePlayer or member.name~=WeakAuras.me)then\n            local state = {}\n            state.show = true\n            state.changed = true\n            state.progressType = 'timed'\n            state.autoHide = false\n            state.resort = false\n            state.value = 0\n            state.total = 0\n            state.duration = 0\n            state.expirationTime = GetTime() \n            state.ID = watchID\n            state.type = type\n            state.spellId = spellID\n            \n            state.name = member.name\n            state.icon = select(3,GetSpellInfo(spellID))\n            state.classColor = member.classColor\n            \n            allstates[watchID] = state\n            aura_env.allstates = allstates\n            return true\n        end\n    end\nend",
						["check"] = "event",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZT_TRIGGER WA_PARTYCOOLDOWNS_UPDATE GROUP_ROSTER_UPDATE",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(allstates, event, type, watchID, duration, expiration)\n    \n    if event == \"WA_PARTYCOOLDOWNS_UPDATE\"then\n        aura_env.last = now\n        aura_env.updateFrames()\n        return true       \n    end\n    \n    if event == \"GROUP_ROSTER_UPDATE\" then\n        local now = GetTime()\n        if not aura_env.last or aura_env.last < now - 1 then\n            C_Timer.After(0.5,function() \n                    WeakAuras.ScanEvents(\"WA_PARTYCOOLDOWNS_UPDATE\") \n            end)\n        end\n        return\n    end\n    \n    if event ~= \"ZT_TRIGGER\" or not type then\n        return\n    end\n    \n    if aura_env.types[type] and aura_env.allstates[watchID] then\n        local state = aura_env.allstates[watchID]\n        \n        state.changed = true\n        state.duration = duration\n        state.expirationTime = expiration \n        return true\n    end\n    \n    \n    \nend",
						["event"] = "Health",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["events"] = "ZT_REMOVE",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(allstates, event, type, watchID)\n    if event ~= \"ZT_REMOVE\" or not type then\n        return\n    end\n    \n    if aura_env.types[type] and aura_env.allstates[watchID] then\n        aura_env.allstates[watchID].show = false\n        aura_env.allstates[watchID].changed = true\n        return true\n    end\nend\n\n\n\n",
						["event"] = "Health",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "ZT - Nnogga's Party CD Front End",
			["backgroundColor"] = {
				0.21176470588235, -- [1]
				0.21176470588235, -- [2]
				0.21176470588235, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 3,
			["width"] = 35,
			["stacksFont"] = "Accidental Presidency",
			["desc"] = "Requires ZenTracker (ZT) backend https://wago.io/r14U746B7",
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["ZenTracker (ZT) Main"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["authorOptions"] = {
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Self-Tracked Types",
					["width"] = 2,
				}, -- [1]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Configures whether to track your own spell cooldowns on a per-type basis",
					["width"] = 2,
				}, -- [2]
				{
					["fontSize"] = "small",
					["type"] = "description",
					["text"] = "(Note: This option is deprecated and will be removed in the future. This option should instead be provided by the front-end WAs.)",
					["width"] = 2,
				}, -- [3]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [4]
				{
					["type"] = "toggle",
					["name"] = "DAMAGE",
					["default"] = true,
					["key"] = "myDAMAGE",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [5]
				{
					["type"] = "toggle",
					["name"] = "DEFMDISPEL",
					["default"] = true,
					["key"] = "myDEFMDISPEL",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [6]
				{
					["type"] = "toggle",
					["name"] = "DISPEL",
					["default"] = true,
					["key"] = "myDISPEL",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [7]
				{
					["type"] = "toggle",
					["name"] = "EXTERNAL",
					["default"] = true,
					["key"] = "myEXTERNAL",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [8]
				{
					["type"] = "toggle",
					["name"] = "HARDCC",
					["default"] = true,
					["key"] = "myHARDCC",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [9]
				{
					["type"] = "toggle",
					["name"] = "HEALING",
					["default"] = true,
					["key"] = "myHEALING",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [10]
				{
					["type"] = "toggle",
					["name"] = "IMMUNITY",
					["default"] = true,
					["key"] = "myIMMUNITY",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [11]
				{
					["type"] = "toggle",
					["name"] = "INTERRUPT",
					["default"] = true,
					["key"] = "myINTERRUPT",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [12]
				{
					["type"] = "toggle",
					["name"] = "PERSONAL",
					["default"] = true,
					["key"] = "myPERSONAL",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [13]
				{
					["type"] = "toggle",
					["name"] = "SOFTCC",
					["default"] = true,
					["key"] = "mySOFTCC",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [14]
				{
					["type"] = "toggle",
					["name"] = "STHARDCC",
					["default"] = true,
					["key"] = "mySTHARDCC",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [15]
				{
					["type"] = "toggle",
					["name"] = "STSOFTCC",
					["default"] = true,
					["key"] = "mySTSOFTCC",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [16]
				{
					["type"] = "toggle",
					["name"] = "TANK",
					["default"] = true,
					["key"] = "myTANK",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [17]
				{
					["type"] = "toggle",
					["name"] = "UTILITY",
					["default"] = true,
					["key"] = "myUTILITY",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [18]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [19]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [20]
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Spell Configuration",
					["width"] = 2,
				}, -- [21]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "Configures the spell list to blacklist (or whitelist) certain spells",
					["width"] = 2,
				}, -- [22]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [23]
				{
					["type"] = "select",
					["values"] = {
						"Blacklist (Exclude Selected)", -- [1]
						"Whitelist (Only Selected)", -- [2]
					},
					["default"] = 1,
					["key"] = "spellConfigType",
					["useDesc"] = false,
					["name"] = "Configuration Type",
					["width"] = 1,
				}, -- [24]
				{
					["type"] = "space",
					["variableWidth"] = false,
					["width"] = 1,
				}, -- [25]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [26]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "DAMAGE",
					["width"] = 2,
				}, -- [27]
				{
					["type"] = "toggle",
					["name"] = "Adrenaline Rush",
					["default"] = false,
					["key"] = "spell13750",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [28]
				{
					["type"] = "toggle",
					["name"] = "Arcane Power",
					["default"] = false,
					["key"] = "spell12042",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [29]
				{
					["type"] = "toggle",
					["name"] = "Army of the Dead",
					["default"] = false,
					["key"] = "spell42650",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [30]
				{
					["type"] = "toggle",
					["name"] = "Ascendance",
					["default"] = false,
					["key"] = "spell114050",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [31]
				{
					["type"] = "toggle",
					["name"] = "Ascendance",
					["default"] = false,
					["key"] = "spell114051",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [32]
				{
					["type"] = "toggle",
					["name"] = "Aspect of the Wild",
					["default"] = false,
					["key"] = "spell193530",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [33]
				{
					["type"] = "toggle",
					["name"] = "Avatar",
					["default"] = false,
					["key"] = "spell107574",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [34]
				{
					["type"] = "toggle",
					["name"] = "Avenging Wrath",
					["default"] = false,
					["key"] = "spell31884",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [35]
				{
					["type"] = "toggle",
					["name"] = "Bestial Wrath",
					["default"] = false,
					["key"] = "spell19574",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [36]
				{
					["type"] = "toggle",
					["name"] = "Bladestorm",
					["default"] = false,
					["key"] = "spell227847",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [37]
				{
					["type"] = "toggle",
					["name"] = "Bladestorm",
					["default"] = false,
					["key"] = "spell46924",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [38]
				{
					["type"] = "toggle",
					["name"] = "Breath of Sindragosaa",
					["default"] = false,
					["key"] = "spell152279",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [39]
				{
					["type"] = "toggle",
					["name"] = "Celestial Alignment",
					["default"] = false,
					["key"] = "spell194223",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [40]
				{
					["type"] = "toggle",
					["name"] = "Combustion",
					["default"] = false,
					["key"] = "spell190319",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [41]
				{
					["type"] = "toggle",
					["name"] = "Coordinated Assault",
					["default"] = false,
					["key"] = "spell266779",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [42]
				{
					["type"] = "toggle",
					["name"] = "Crusade",
					["default"] = false,
					["key"] = "spell231895",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [43]
				{
					["type"] = "toggle",
					["name"] = "Dark Ascension",
					["default"] = false,
					["key"] = "spell280711",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [44]
				{
					["type"] = "toggle",
					["name"] = "Dark Soul: Instability",
					["default"] = false,
					["key"] = "spell113858",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [45]
				{
					["type"] = "toggle",
					["name"] = "Dark Soul: Misery",
					["default"] = false,
					["key"] = "spell113860",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [46]
				{
					["type"] = "toggle",
					["name"] = "Fel Barrage",
					["default"] = false,
					["key"] = "spell258925",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [47]
				{
					["type"] = "toggle",
					["name"] = "Frostwyrm's Fury",
					["default"] = false,
					["key"] = "spell279302",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [48]
				{
					["type"] = "toggle",
					["name"] = "Icy Veins",
					["default"] = false,
					["key"] = "spell12472",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [49]
				{
					["type"] = "toggle",
					["name"] = "Incarnation: Chosen of Elune",
					["default"] = false,
					["key"] = "spell102560",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [50]
				{
					["type"] = "toggle",
					["name"] = "Incarnation: King of the Jungle",
					["default"] = false,
					["key"] = "spell102543",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [51]
				{
					["type"] = "toggle",
					["name"] = "Killing Spree",
					["default"] = false,
					["key"] = "spell51690",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [52]
				{
					["type"] = "toggle",
					["name"] = "Metamorphosis",
					["default"] = false,
					["key"] = "spell191427",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [53]
				{
					["type"] = "toggle",
					["name"] = "Mirror Image",
					["default"] = false,
					["key"] = "spell55342",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [54]
				{
					["type"] = "toggle",
					["name"] = "Nemesis",
					["default"] = false,
					["key"] = "spell206491",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [55]
				{
					["type"] = "toggle",
					["name"] = "Nether Portal",
					["default"] = false,
					["key"] = "spell267217",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [56]
				{
					["type"] = "toggle",
					["name"] = "Recklessness",
					["default"] = false,
					["key"] = "spell1719",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [57]
				{
					["type"] = "toggle",
					["name"] = "Serenity",
					["default"] = false,
					["key"] = "spell152173",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [58]
				{
					["type"] = "toggle",
					["name"] = "Shadow Blades",
					["default"] = false,
					["key"] = "spell121471",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [59]
				{
					["type"] = "toggle",
					["name"] = "Stampede",
					["default"] = false,
					["key"] = "spell201430",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [60]
				{
					["type"] = "toggle",
					["name"] = "Storm, Earth, and Fire",
					["default"] = false,
					["key"] = "spell137639",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [61]
				{
					["type"] = "toggle",
					["name"] = "Summon Darkglare",
					["default"] = false,
					["key"] = "spell205180",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [62]
				{
					["type"] = "toggle",
					["name"] = "Summon Demonic Tyrant",
					["default"] = false,
					["key"] = "spell265187",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [63]
				{
					["type"] = "toggle",
					["name"] = "Summon Gargoyle",
					["default"] = false,
					["key"] = "spell49206",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [64]
				{
					["type"] = "toggle",
					["name"] = "Summon Infernal",
					["default"] = false,
					["key"] = "spell1122",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [65]
				{
					["type"] = "toggle",
					["name"] = "Surrender to Madness",
					["default"] = false,
					["key"] = "spell193223",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [66]
				{
					["type"] = "toggle",
					["name"] = "Touch of Death",
					["default"] = false,
					["key"] = "spell115080",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [67]
				{
					["type"] = "toggle",
					["name"] = "Trueshot",
					["default"] = false,
					["key"] = "spell193526",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [68]
				{
					["type"] = "toggle",
					["name"] = "Unholy Frenzy",
					["default"] = false,
					["key"] = "spell207289",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [69]
				{
					["type"] = "toggle",
					["name"] = "Vendetta",
					["default"] = false,
					["key"] = "spell79140",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [70]
				{
					["type"] = "toggle",
					["name"] = "Xuen",
					["default"] = false,
					["key"] = "spell123904",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [71]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [72]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "DEFMDISPEL",
					["width"] = 2,
				}, -- [73]
				{
					["type"] = "toggle",
					["name"] = "Cleanse",
					["default"] = false,
					["key"] = "spell4987",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [74]
				{
					["type"] = "toggle",
					["name"] = "Detox",
					["default"] = false,
					["key"] = "spell115450",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [75]
				{
					["type"] = "toggle",
					["name"] = "Nature's Cure",
					["default"] = false,
					["key"] = "spell88423",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [76]
				{
					["type"] = "toggle",
					["name"] = "Purify",
					["default"] = false,
					["key"] = "spell527",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [77]
				{
					["type"] = "toggle",
					["name"] = "Purify Spirit",
					["default"] = false,
					["key"] = "spell77130",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [78]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [79]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "DISPEL",
					["width"] = 2,
				}, -- [80]
				{
					["type"] = "toggle",
					["name"] = "Arcane Torrent",
					["default"] = false,
					["key"] = "spellArcaneTorrent",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [81]
				{
					["type"] = "toggle",
					["name"] = "Mass Dispel",
					["default"] = false,
					["key"] = "spell32375",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [82]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [83]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "EXTERNAL",
					["width"] = 2,
				}, -- [84]
				{
					["type"] = "toggle",
					["name"] = "Aura Mastery",
					["default"] = false,
					["key"] = "spell31821",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [85]
				{
					["type"] = "toggle",
					["name"] = "Blessing of Protection",
					["default"] = false,
					["key"] = "spell1022",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [86]
				{
					["type"] = "toggle",
					["name"] = "Blessing of Sacrifice",
					["default"] = false,
					["key"] = "spell6940",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [87]
				{
					["type"] = "toggle",
					["name"] = "Blessing of Spellwarding",
					["default"] = false,
					["key"] = "spell204018",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [88]
				{
					["type"] = "toggle",
					["name"] = "Darkness",
					["default"] = false,
					["key"] = "spell196718",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [89]
				{
					["type"] = "toggle",
					["name"] = "Guardian Spirit",
					["default"] = false,
					["key"] = "spell47788",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [90]
				{
					["type"] = "toggle",
					["name"] = "Ironbark",
					["default"] = false,
					["key"] = "spell102342",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [91]
				{
					["type"] = "toggle",
					["name"] = "Life Cocoon",
					["default"] = false,
					["key"] = "spell116849",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [92]
				{
					["type"] = "toggle",
					["name"] = "Luminous Barrier",
					["default"] = false,
					["key"] = "spell271466",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [93]
				{
					["type"] = "toggle",
					["name"] = "Pain Supression",
					["default"] = false,
					["key"] = "spell33206",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [94]
				{
					["type"] = "toggle",
					["name"] = "Power Word: Barrier",
					["default"] = false,
					["key"] = "spell62618",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [95]
				{
					["type"] = "toggle",
					["name"] = "Rallying Cry",
					["default"] = false,
					["key"] = "spell97462",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [96]
				{
					["type"] = "toggle",
					["name"] = "Spirit Link Totem",
					["default"] = false,
					["key"] = "spell98008",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [97]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [98]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "HARDCC",
					["width"] = 2,
				}, -- [99]
				{
					["type"] = "toggle",
					["name"] = "Bull Rush",
					["default"] = false,
					["key"] = "spell255654",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [100]
				{
					["type"] = "toggle",
					["name"] = "Capacitor Totem",
					["default"] = false,
					["key"] = "spell192058",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [101]
				{
					["type"] = "toggle",
					["name"] = "Chaos Nova",
					["default"] = false,
					["key"] = "spell179057",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [102]
				{
					["type"] = "toggle",
					["name"] = "Leg Sweep",
					["default"] = false,
					["key"] = "spell119381",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [103]
				{
					["type"] = "toggle",
					["name"] = "Shadowfury",
					["default"] = false,
					["key"] = "spell30283",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [104]
				{
					["type"] = "toggle",
					["name"] = "Shockwave",
					["default"] = false,
					["key"] = "spell46968",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [105]
				{
					["type"] = "toggle",
					["name"] = "War Stomp",
					["default"] = false,
					["key"] = "spell20549",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [106]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [107]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "HEALING",
					["width"] = 2,
				}, -- [108]
				{
					["type"] = "toggle",
					["name"] = "Ancestral Protection Totem",
					["default"] = false,
					["key"] = "spell207399",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [109]
				{
					["type"] = "toggle",
					["name"] = "Apotheosis",
					["default"] = false,
					["key"] = "spell200183",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [110]
				{
					["type"] = "toggle",
					["name"] = "Ascendance",
					["default"] = false,
					["key"] = "spell114052",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [111]
				{
					["type"] = "toggle",
					["name"] = "Avenging Crusader",
					["default"] = false,
					["key"] = "spell216331",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [112]
				{
					["type"] = "toggle",
					["name"] = "Divine Hymn",
					["default"] = false,
					["key"] = "spell64843",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [113]
				{
					["type"] = "toggle",
					["name"] = "Earthen Wall Totem",
					["default"] = false,
					["key"] = "spell198838",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [114]
				{
					["type"] = "toggle",
					["name"] = "Evangelism",
					["default"] = false,
					["key"] = "spell246287",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [115]
				{
					["type"] = "toggle",
					["name"] = "Healing Tide Totem",
					["default"] = false,
					["key"] = "spell108280",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [116]
				{
					["type"] = "toggle",
					["name"] = "Holy Avenger",
					["default"] = false,
					["key"] = "spell105809",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [117]
				{
					["type"] = "toggle",
					["name"] = "Holy Word: Salvation",
					["default"] = false,
					["key"] = "spell265202",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [118]
				{
					["type"] = "toggle",
					["name"] = "Lay on Hands",
					["default"] = false,
					["key"] = "spell633",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [119]
				{
					["type"] = "toggle",
					["name"] = "Rapture",
					["default"] = false,
					["key"] = "spell47536",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [120]
				{
					["type"] = "toggle",
					["name"] = "Revival",
					["default"] = false,
					["key"] = "spell115310",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [121]
				{
					["type"] = "toggle",
					["name"] = "TEST Essence Font",
					["default"] = false,
					["key"] = "spell191837",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [122]
				{
					["type"] = "toggle",
					["name"] = "Tranquility",
					["default"] = false,
					["key"] = "spell740",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [123]
				{
					["type"] = "toggle",
					["name"] = "Vampiric Embrace",
					["default"] = false,
					["key"] = "spell15286",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [124]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell210191",
					["name"] = "Word of Glory",
					["width"] = 0.65,
				}, -- [125]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [126]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "IMMUNITY",
					["width"] = 2,
				}, -- [127]
				{
					["type"] = "toggle",
					["name"] = "Aspect of the Turtle",
					["default"] = false,
					["key"] = "spell186265",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [128]
				{
					["type"] = "toggle",
					["name"] = "Cloak of Shadows",
					["default"] = false,
					["key"] = "spell31224",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [129]
				{
					["type"] = "toggle",
					["name"] = "Divine Shield",
					["default"] = false,
					["key"] = "spell642",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [130]
				{
					["type"] = "toggle",
					["name"] = "Ice Block",
					["default"] = false,
					["key"] = "spell45438",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [131]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell196555",
					["name"] = "Netherwalk",
					["width"] = 0.65,
				}, -- [132]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [133]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "INTERRUPT",
					["width"] = 2,
				}, -- [134]
				{
					["type"] = "toggle",
					["name"] = "Consume Magic",
					["default"] = false,
					["key"] = "spell183752",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [135]
				{
					["type"] = "toggle",
					["name"] = "Counter Shot",
					["default"] = false,
					["key"] = "spell147362",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [136]
				{
					["type"] = "toggle",
					["name"] = "Counter Spell",
					["default"] = false,
					["key"] = "spell2139",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [137]
				{
					["type"] = "toggle",
					["name"] = "Kick",
					["default"] = false,
					["key"] = "spell1766",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [138]
				{
					["type"] = "toggle",
					["name"] = "Mind Freeze",
					["default"] = false,
					["key"] = "spell47528",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [139]
				{
					["type"] = "toggle",
					["name"] = "Muzzle",
					["default"] = false,
					["key"] = "spell187707",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [140]
				{
					["type"] = "toggle",
					["name"] = "Pummel",
					["default"] = false,
					["key"] = "spell6552",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [141]
				{
					["type"] = "toggle",
					["name"] = "Rebuke",
					["default"] = false,
					["key"] = "spell96231",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [142]
				{
					["type"] = "toggle",
					["name"] = "Shambling Rush",
					["default"] = false,
					["key"] = "spell91802",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [143]
				{
					["type"] = "toggle",
					["name"] = "Silence",
					["default"] = false,
					["key"] = "spell15487",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [144]
				{
					["type"] = "toggle",
					["name"] = "Skull Bash",
					["default"] = false,
					["key"] = "spell106839",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [145]
				{
					["type"] = "toggle",
					["name"] = "Solar Beam",
					["default"] = false,
					["key"] = "spell78675",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [146]
				{
					["type"] = "toggle",
					["name"] = "Spear Hand Strike",
					["default"] = false,
					["key"] = "spell116705",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [147]
				{
					["type"] = "toggle",
					["name"] = "Spell Lock",
					["default"] = false,
					["key"] = "spell19647",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [148]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell57994",
					["name"] = "Wind Shear",
					["width"] = 0.65,
				}, -- [149]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [150]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "PERSONAL",
					["width"] = 2,
				}, -- [151]
				{
					["type"] = "toggle",
					["name"] = "Anti-Magic Shell",
					["default"] = false,
					["key"] = "spell48707",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [152]
				{
					["type"] = "toggle",
					["name"] = "Ardent Defender",
					["default"] = false,
					["key"] = "spell31850",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [153]
				{
					["type"] = "toggle",
					["name"] = "Astral Shift",
					["default"] = false,
					["key"] = "spell108271",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [154]
				{
					["type"] = "toggle",
					["name"] = "Barkskin",
					["default"] = false,
					["key"] = "spell22812",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [155]
				{
					["type"] = "toggle",
					["name"] = "Blur",
					["default"] = false,
					["key"] = "spell198589",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [156]
				{
					["type"] = "toggle",
					["name"] = "Cold Snap",
					["default"] = false,
					["key"] = "spell235219",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [157]
				{
					["type"] = "toggle",
					["name"] = "Dampen Harm",
					["default"] = false,
					["key"] = "spell122278",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [158]
				{
					["type"] = "toggle",
					["name"] = "Death Pact",
					["default"] = false,
					["key"] = "spell48743",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [159]
				{
					["type"] = "toggle",
					["name"] = "Desperate Prayer",
					["default"] = false,
					["key"] = "spell19236",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [160]
				{
					["type"] = "toggle",
					["name"] = "Die by the Sword",
					["default"] = false,
					["key"] = "spell118038",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [161]
				{
					["type"] = "toggle",
					["name"] = "Diffuse Magic",
					["default"] = false,
					["key"] = "spell122783",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [162]
				{
					["type"] = "toggle",
					["name"] = "Dispersion",
					["default"] = false,
					["key"] = "spell47585",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [163]
				{
					["type"] = "toggle",
					["name"] = "Divine Protection",
					["default"] = false,
					["key"] = "spell498",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [164]
				{
					["type"] = "toggle",
					["name"] = "Enraged Regeneration",
					["default"] = false,
					["key"] = "spell184364",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [165]
				{
					["type"] = "toggle",
					["name"] = "Evasion",
					["default"] = false,
					["key"] = "spellEvasion/Riposte",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [166]
				{
					["type"] = "toggle",
					["name"] = "Exhilaration",
					["default"] = false,
					["key"] = "spell109304",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [167]
				{
					["type"] = "toggle",
					["name"] = "Eye for an Eye",
					["default"] = false,
					["key"] = "spell205191",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [168]
				{
					["type"] = "toggle",
					["name"] = "Fortifying Brew",
					["default"] = false,
					["key"] = "spell115203",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [169]
				{
					["type"] = "toggle",
					["name"] = "Fortifying Brew",
					["default"] = false,
					["key"] = "spell243435",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [170]
				{
					["type"] = "toggle",
					["name"] = "Guardian of the Ancient Kings",
					["default"] = false,
					["key"] = "spell86659",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [171]
				{
					["type"] = "toggle",
					["name"] = "Icebound Fortitude",
					["default"] = false,
					["key"] = "spell48792",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [172]
				{
					["type"] = "toggle",
					["name"] = "Last Stand",
					["default"] = false,
					["key"] = "spell12975",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [173]
				{
					["type"] = "toggle",
					["name"] = "Metamorphosis",
					["default"] = false,
					["key"] = "spell187827",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [174]
				{
					["type"] = "toggle",
					["name"] = "Shield Wall",
					["default"] = false,
					["key"] = "spell871",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [175]
				{
					["type"] = "toggle",
					["name"] = "Shield of Vengeance",
					["default"] = false,
					["key"] = "spell184662",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [176]
				{
					["type"] = "toggle",
					["name"] = "Survival Instincts",
					["default"] = false,
					["key"] = "spell61336",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [177]
				{
					["type"] = "toggle",
					["name"] = "Touch of Karma",
					["default"] = false,
					["key"] = "spell122470",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [178]
				{
					["type"] = "toggle",
					["name"] = "Unending Resolve",
					["default"] = false,
					["key"] = "spell104773",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [179]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell55233",
					["name"] = "Vampiric Blood",
					["width"] = 0.65,
				}, -- [180]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell115176",
					["name"] = "Zen Meditation",
					["width"] = 0.65,
				}, -- [181]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [182]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "SOFTCC",
					["width"] = 2,
				}, -- [183]
				{
					["type"] = "toggle",
					["name"] = "Binding Shot",
					["default"] = false,
					["key"] = "spell109248",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [184]
				{
					["type"] = "toggle",
					["name"] = "Blinding Sleet",
					["default"] = false,
					["key"] = "spell207167",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [185]
				{
					["type"] = "toggle",
					["name"] = "Dragon's Breath",
					["default"] = false,
					["key"] = "spell31661",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [186]
				{
					["type"] = "toggle",
					["name"] = "Gorefiend's Grasp",
					["default"] = false,
					["key"] = "spell108199",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [187]
				{
					["type"] = "toggle",
					["name"] = "Incapacitating Roar",
					["default"] = false,
					["key"] = "spell99",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [188]
				{
					["type"] = "toggle",
					["name"] = "Intimidating Roar",
					["default"] = false,
					["key"] = "spell236748",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [189]
				{
					["type"] = "toggle",
					["name"] = "Mass Entanglement",
					["default"] = false,
					["key"] = "spell102359",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [190]
				{
					["type"] = "toggle",
					["name"] = "Psychic Scream",
					["default"] = false,
					["key"] = "spell8122",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [191]
				{
					["type"] = "toggle",
					["name"] = "Ring of Peace",
					["default"] = false,
					["key"] = "spell116844",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [192]
				{
					["type"] = "toggle",
					["name"] = "Shining Force",
					["default"] = false,
					["key"] = "spell204263",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [193]
				{
					["type"] = "toggle",
					["name"] = "Sigil of Chains",
					["default"] = false,
					["key"] = "spell202138",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [194]
				{
					["type"] = "toggle",
					["name"] = "Sigil of Misery",
					["default"] = false,
					["key"] = "spell207684",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [195]
				{
					["type"] = "toggle",
					["name"] = "Sigil of Silence",
					["default"] = false,
					["key"] = "spell202137",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [196]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell51490",
					["name"] = "Thunderstorm",
					["width"] = 0.65,
				}, -- [197]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell132469",
					["name"] = "Typhoon",
					["width"] = 0.65,
				}, -- [198]
				{
					["type"] = "toggle",
					["name"] = "Ursol's Vortex",
					["default"] = false,
					["key"] = "spell102793",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [199]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [200]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "STHARDCC",
					["width"] = 2,
				}, -- [201]
				{
					["type"] = "toggle",
					["name"] = "Asphyxiate",
					["default"] = false,
					["key"] = "spellAsphyxiate",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [202]
				{
					["type"] = "toggle",
					["name"] = "Fel Eruption",
					["default"] = false,
					["key"] = "spell211881",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [203]
				{
					["type"] = "toggle",
					["name"] = "Hammer of Justice",
					["default"] = false,
					["key"] = "spell853",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [204]
				{
					["type"] = "toggle",
					["name"] = "Holy Word: Chastise",
					["default"] = false,
					["key"] = "spell88625",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [205]
				{
					["type"] = "toggle",
					["name"] = "Intimidation",
					["default"] = false,
					["key"] = "spell19577",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [206]
				{
					["type"] = "toggle",
					["name"] = "Mighty Bash",
					["default"] = false,
					["key"] = "spell5211",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [207]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell6789",
					["name"] = "Mortal Coil",
					["width"] = 0.65,
				}, -- [208]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell64044",
					["name"] = "Psychic Horror",
					["width"] = 0.65,
				}, -- [209]
				{
					["type"] = "toggle",
					["name"] = "Storm Bolt",
					["default"] = false,
					["key"] = "spell107570",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [210]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [211]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "STSOFTCC",
					["width"] = 2,
				}, -- [212]
				{
					["type"] = "toggle",
					["name"] = "Blind",
					["default"] = false,
					["key"] = "spell2094",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [213]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell49576",
					["name"] = "Death Grip",
					["width"] = 0.65,
				}, -- [214]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell187650",
					["name"] = "Freezing Trap",
					["width"] = 0.65,
				}, -- [215]
				{
					["type"] = "toggle",
					["name"] = "Imprison",
					["default"] = false,
					["key"] = "spell217832",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [216]
				{
					["type"] = "toggle",
					["name"] = "Paralysis",
					["default"] = false,
					["key"] = "spell115078",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [217]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [218]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "TANK",
					["width"] = 2,
				}, -- [219]
				{
					["type"] = "toggle",
					["name"] = "Bonestorm",
					["default"] = false,
					["key"] = "spell194844",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [220]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell49028",
					["name"] = "Dancing Rune Weapon",
					["width"] = 0.65,
				}, -- [221]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell1160",
					["name"] = "Demoralizing Shout",
					["width"] = 0.65,
				}, -- [222]
				{
					["type"] = "toggle",
					["name"] = "Fiery Brand",
					["default"] = false,
					["key"] = "spell204021",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [223]
				{
					["type"] = "toggle",
					["name"] = "Rune Tap",
					["default"] = false,
					["key"] = "spell194679",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [224]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [225]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "UTILITY",
					["width"] = 2,
				}, -- [226]
				{
					["type"] = "toggle",
					["name"] = "Earth Elemental",
					["default"] = false,
					["key"] = "spell198103",
					["useDesc"] = false,
					["width"] = 0.65,
				}, -- [227]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell205636",
					["name"] = "Force of Nature (Treants)",
					["width"] = 0.65,
				}, -- [228]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell29166",
					["name"] = "Innervate",
					["width"] = 0.65,
				}, -- [229]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell73325",
					["name"] = "Leap of Faith",
					["width"] = 0.65,
				}, -- [230]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell114018",
					["name"] = "Shroud of Concealment",
					["width"] = 0.65,
				}, -- [231]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell106898",
					["name"] = "Stampeding Roar",
					["width"] = 0.65,
				}, -- [232]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell64901",
					["name"] = "Symbol of Hope",
					["width"] = 0.65,
				}, -- [233]
				{
					["type"] = "toggle",
					["default"] = false,
					["useDesc"] = false,
					["key"] = "spell192077",
					["name"] = "Wind Rush Totem",
					["width"] = 0.65,
				}, -- [234]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [235]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [236]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = " ",
					["width"] = 2,
				}, -- [237]
				{
					["fontSize"] = "large",
					["type"] = "description",
					["text"] = "Custom Spell List",
					["width"] = 2,
				}, -- [238]
				{
					["fontSize"] = "medium",
					["type"] = "description",
					["text"] = "You may add custom entries to the spell list here. The format consists of a Lua table with mandatory entries of type, spellID, baseCD and optional entries of class, specs, race, mods, modTalents, reqTalents. You can look at how such values are defined in the Actions tab 'OnInit' code.",
					["width"] = 2,
				}, -- [239]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Example: {type=\"INTERRUPT\", spellID=183752, class=DH, baseCD=15}",
					["width"] = 2,
				}, -- [240]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [241]
				{
					["type"] = "input",
					["key"] = "custom1",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 1",
					["useLength"] = false,
				}, -- [242]
				{
					["type"] = "input",
					["key"] = "custom2",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 2",
					["useLength"] = false,
				}, -- [243]
				{
					["type"] = "input",
					["key"] = "custom3",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 3",
					["useLength"] = false,
				}, -- [244]
				{
					["type"] = "input",
					["key"] = "custom4",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 4",
					["useLength"] = false,
				}, -- [245]
				{
					["type"] = "input",
					["key"] = "custom5",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 5",
					["useLength"] = false,
				}, -- [246]
				{
					["type"] = "input",
					["key"] = "custom6",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 6",
					["useLength"] = false,
				}, -- [247]
				{
					["type"] = "input",
					["key"] = "custom7",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 7",
					["useLength"] = false,
				}, -- [248]
				{
					["type"] = "input",
					["key"] = "custom8",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 8",
					["useLength"] = false,
				}, -- [249]
				{
					["type"] = "input",
					["key"] = "custom9",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 9",
					["useLength"] = false,
				}, -- [250]
				{
					["type"] = "input",
					["key"] = "custom10",
					["width"] = 2,
					["default"] = "",
					["length"] = 10,
					["name"] = "Spell 10",
					["useLength"] = false,
				}, -- [251]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [252]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = " ",
					["width"] = 2,
				}, -- [253]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = "WARNING: Do not click Enter Author Mode!",
					["width"] = 2,
				}, -- [254]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "Due to the many configuration options, attempting to edit the options will cause a large amount of lag and subsequently display absolutely nothing. Trust me, I tried :)",
					["width"] = 2,
				}, -- [255]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [256]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [257]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [258]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [259]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [260]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [261]
				{
					["type"] = "description",
					["fontSize"] = "large",
					["text"] = " ",
					["width"] = 2,
				}, -- [262]
			},
			["displayText"] = " ",
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["regionType"] = "text",
			["conditions"] = {
			},
			["automaticWidth"] = "Auto",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/r14U746B7/46",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["do_message"] = false,
					["custom"] = "",
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local ZT = aura_env\n--------------------------------------------------------------------------------\n-- CONFIGURATION\n--\n-- The configuration options have moved to the \"Author Options\" tab as of\n-- WeakAuras Version 2.10. \n--\n-- DO NOT EDIT THIS CODE!\n--------------------------------------------------------------------------------\n\n-- Turns on/off debugging messages\nZT.DEBUG_EVENTS = false\nZT.DEBUG_MESSAGES = false\nZT.DEBUG_TRACKING = false\n\n-- Class/Spec ID List\nlocal DK = {ID=6, name=\"DEATHKNIGHT\", Blood=250, Frost=251, Unholy=252}\nlocal DH = {ID=12, name=\"DEMONHUNTER\", Havoc=577, Veng=581}\nlocal Druid = {ID=11, name=\"DRUID\", Balance=102, Feral=103, Guardian=104, Resto=105}\nlocal Hunter = {ID=3, name=\"HUNTER\", BM=253, MM=254, SV=255}\nlocal Mage = {ID=8, name=\"MAGE\", Arcane=62, Fire=63, Frost=64}\nlocal Monk = {ID=10, name=\"MONK\", BRM=268, WW=269, MW=270}\nlocal Paladin = {ID=2, name=\"PALADIN\", Holy=65, Prot=66, Ret=70}\nlocal Priest = {ID=5, name=\"PRIEST\", Disc=256, Holy=257, Shadow=258}\nlocal Rogue = {ID=4, name=\"ROGUE\", Sin=259, Outlaw=260, Sub=261}\nlocal Shaman = {ID=7, name=\"SHAMAN\", Ele=262, Enh=263, Resto=264}\nlocal Warlock = {ID=9, name=\"WARLOCK\", Affl=265, Demo=266, Destro=267}\nlocal Warrior = {ID=1, name=\"WARRIOR\", Arms=71, Fury=72, Prot=73}\n\nlocal AllClasses = {\n    [DK.name] = DK, [DH.name] = DH, [Druid.name] = Druid, [Hunter.name] = Hunter,\n    [Mage.name] = Mage, [Monk.name] = Monk, [Paladin.name] = Paladin,\n    [Priest.name] = Priest, [Rogue.name] = Rogue, [Shaman.name] = Shaman,\n    [Warlock.name] = Warlock, [Warrior.name] = Warrior\n}\n\n-- Local versions of commonly used functions\nlocal ipairs = ipairs\nlocal pairs = pairs\nlocal print = print\nlocal select = select\nlocal tonumber = tonumber\n\nlocal IsInGroup = IsInGroup\nlocal IsInRaid = IsInRaid\nlocal UnitGUID = UnitGUID\nlocal C_ChatInfo_SendAddonMessage = C_ChatInfo.SendAddonMessage\n\n--------------------------------------------------------------------------------\n-- BEGIN SPELL COOLDOWN MODIFIERS\n--------------------------------------------------------------------------------\n\nlocal function StaticMod(type, value)\n    return { type = \"Static\", [type] = value }\nend\n\nlocal function DynamicMod(handlers)\n    if not handlers[1] then\n        handlers = { handlers }\n    end\n    \n    return { type = \"Dynamic\", handlers = handlers }\nend\n\nlocal function EventDeltaMod(type, spellID, delta)\n    return DynamicMod({\n            type = type,\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateDelta(delta)\n            end\n    })\nend\n\nlocal function CastDeltaMod(spellID, delta)\n    return EventDeltaMod(\"SPELL_CAST_SUCCESS\", spellID, delta)\nend\n\nlocal function EventRemainingMod(type, spellID, remaining)\n    return DynamicMod({\n            type = type,\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateRemaining(remaining)\n            end\n    })\nend\n\nlocal function CastRemainingMod(spellID, remaining)\n    return EventRemainingMod(\"SPELL_CAST_SUCCESS\", spellID, remaining)\nend\n\n-- Shockwave: If 3+ targets hit then reduces by 15 seconds\nlocal modShockwave = DynamicMod({\n        {\n            type = \"SPELL_CAST_SUCCESS\", spellID = 46968,\n            handler = function(watchInfo)\n                watchInfo.numHits = 0\n            end\n        },\n        {\n            type = \"SPELL_AURA_APPLIED\", spellID = 132168,\n            handler = function(watchInfo)\n                watchInfo.numHits = watchInfo.numHits + 1\n                if watchInfo.numHits == 3 then\n                    watchInfo:updateDelta(-15)\n                end\n            end\n        }\n})\n\n-- Capacitor Totem: Each target hit reduces by 5 seconds (up to 4 targets hit)\nlocal modCapTotem = DynamicMod({\n        type = \"SPELL_SUMMON\", spellID = 192058,\n        handler = function(watchInfo)\n            watchInfo.numHits = 0\n            \n            if not watchInfo.totemHandler then\n                watchInfo.totemHandler = function(watchInfo)\n                    watchInfo.numHits = watchInfo.numHits + 1\n                    if watchInfo.numHits <= 4 then\n                        watchInfo:updateDelta(-5)\n                    end\n                end\n            end\n            \n            if watchInfo.totemGUID then\n                ZT:removeEventHandler(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, watchInfo.totemHandler)\n            end\n            \n            watchInfo.totemGUID = select(8, CombatLogGetCurrentEventInfo())\n            ZT:addEventHandler(\"SPELL_AURA_APPLIED\", 118905, watchInfo.totemGUID, watchInfo.totemHandler, watchInfo)\n        end\n})\n\n\n-- Guardian Spirit: If expires watchInfothout healing then reset to 60 seconds\nlocal modGuardianSpirit = DynamicMod({\n        {\n            type = \"SPELL_HEAL\", spellID = 48153,\n            handler = function(watchInfo)\n                watchInfo.spiritHeal = true\n            end\n        },\n        {\n            type = \"SPELL_AURA_REMOVED\", spellID = 47788,\n            handler = function(watchInfo)\n                if not watchInfo.spiritHeal then\n                    watchInfo:updateRemaining(60)\n                end\n                watchInfo.spiritHeal = false\n            end\n        }\n})\n\n-- Dispels: Go on cooldown only if a debuff is dispelled\nlocal function DispelMod(spellID)\n    return DynamicMod({\n            type = \"SPELL_DISPEL\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateRemaining(8)\n            end\n    })\nend\n\n-- Resource Spending: For every spender, reduce cooldown by (coefficient * cost) seconds\n--   Note: By default, I use minimum cost values as to not over-estimate the cooldown reduction\nlocal specIDToSpenderInfo = {\n    [DK.Blood] = {resourceType=\"RUNIC_POWER\", spells={[49998]=40, [61999]=30, [206940]=30}},\n}\n\nlocal function ResourceSpendingMods(specID, coefficient)\n    local handlers = {}\n    local spenderInfo = specIDToSpenderInfo[specID]\n    \n    for spellID,cost in pairs(spenderInfo.spells) do\n        local delta = -(coefficient * cost)\n        \n        handlers[#handlers+1] = {\n            type = \"SPELL_CAST_SUCCESS\",\n            spellID = spellID,\n            handler = function(watchInfo)\n                watchInfo:updateDelta(delta)\n            end\n        }\n    end\n    \n    return DynamicMod(handlers)\nend\n\n--------------------------------------------------------------------------------\n-- END SPELL COOLDOWN MODIFIERS\n--------------------------------------------------------------------------------\n\n--------------------------------------------------------------------------------\n-- BEGIN TRACKED SPELLS\n--------------------------------------------------------------------------------\n\nZT.spellsVersion = 2\nZT.typeToTrackedSpells = {}\n\nZT.typeToTrackedSpells[\"INTERRUPT\"] = {\n    {spellID=183752, class=DH, baseCD=15}, -- Consume Magic\n    {spellID=47528, class=DK, baseCD=15}, -- Mind Freeze\n    {spellID=91802, specs={DK.Unholy}, baseCD=30}, -- Shambling Rush\n    {spellID=78675, specs={Druid.Balance}, baseCD=60}, -- Solar Beam\n    {spellID=106839, specs={Druid.Feral,Druid.Guardian}, baseCD=15}, -- Skull Bash\n    {spellID=147362, specs={Hunter.BM, Hunter.MM}, baseCD=24}, -- Counter Shot\n    {spellID=187707, specs={Hunter.SV}, baseCD=15}, -- Muzzle\n    {spellID=2139, class=Mage, baseCD=24}, -- Counter Spell\n    {spellID=116705, specs={Monk.WW, Monk.BRM}, baseCD=15}, -- Spear Hand Strike\n    {spellID=96231, specs={Paladin.Prot, Paladin.Ret}, baseCD=15}, -- Rebuke\n    {spellID=15487, specs={Priest.Shadow}, baseCD=45, modTalents={[41]=StaticMod(\"sub\", 15)}}, -- Silence\n    {spellID=1766, class=Rogue, baseCD=15}, -- Kick\n    {spellID=57994, class=Shaman, baseCD=12}, -- Wind Shear\n    {spellID=19647, class=Warlock, baseCD=24}, -- Spell Lock\n    {spellID=6552, class=Warrior, baseCD=15}, -- Pummel\n}\n\nZT.typeToTrackedSpells[\"HARDCC\"] = {\n    {spellID=179057, specs={DH.Havoc}, baseCD=60, modTalents={[61]=StaticMod(\"mul\", 0.666667)}}, -- Chaos Nova\n    {spellID=119381, class=Monk, baseCD=60, modTalents={[41]=StaticMod(\"sub\", 10)}}, -- Leg Sweep\n    {spellID=192058, class=Shaman, baseCD=60, modTalents={[33]=modCapTotem}}, -- Capacitor Totem\n    {spellID=30283, class=Warlock, baseCD=60, modTalents={[51]=StaticMod(\"sub\", 15)}}, -- Shadowfury\n    {spellID=46968, specs={Warrior.Prot}, baseCD=40, modTalents={[52]=modShockwave}}, -- Shockwave\n    {spellID=20549, race=\"Tauren\", baseCD=90}, -- War Stomp\n    {spellID=255654, race=\"HighmountainTauren\", baseCD=120}, -- Bull Rush\n}\n\nZT.typeToTrackedSpells[\"SOFTCC\"] = {\n    {spellID=202138, specs={DH.Veng}, baseCD=90, reqTalents={53}}, -- Sigil of Chains\n    {spellID=207684, specs={DH.Veng}, baseCD=90}, -- Sigil of Misery\n    {spellID=202137, specs={DH.Veng}, baseCD=60, modTalents={[52]=StaticMod(\"mul\", 0.8)}}, -- Sigil of Silence\n    {spellID=108199, specs={DK.Blood}, baseCD=120, modTalents={[52]=StaticMod(\"sub\", 30)}}, -- Gorefiend's Grasp\n    {spellID=207167, specs={DK.Frost}, baseCD=60, reqTalents={33}}, -- Blinding Sleet\n    {spellID=132469, class=Druid, baseCD=30, reqTalents={43}}, -- Typhoon\n    {spellID=102359, class=Druid, baseCD=30, reqTalents={42}}, -- Mass Entanglement\n    {spellID=99, specs={Druid.Guardian}, baseCD=30}, -- Incapacitating Roar\n    {spellID=236748, specs={Druid.Guardian}, baseCD=30, reqTalents={22}}, -- Intimidating Roar\n    {spellID=102793, specs={Druid.Guardian}, baseCD=60, reqTalents={22}}, -- Ursol's Vortex\n    {spellID=102793, specs={Druid.Resto}, baseCD=60}, -- Ursol's Vortex\n    {spellID=109248, class=Hunter, baseCD=30, reqTalents={53}}, -- Binding Shot\n    {spellID=116844, class=Monk, baseCD=45, reqTalents={43}}, -- Ring of Peace\n    {spellID=8122, specs={Priest.Disc,Priest.Holy}, baseCD=60, modTalents={[41]=StaticMod(\"sub\", 30)}}, -- Psychic Scream\n    {spellID=8122, specs={Priest.Shadow}, baseCD=60}, -- Psychic Scream\n    {spellID=204263, specs={Priest.Disc,Priest.Holy}, baseCD=45, reqTalents={43}}, -- Shining Force\n    {spellID=51490, specs={Shaman.Ele}, baseCD=45}, -- Thunderstorm\n    {spellID=31661, specs={Mage.Fire}, baseCD=20, version=2}, -- Dragon's Breath\n}\n\nZT.typeToTrackedSpells[\"STHARDCC\"] = {\n    {spellID=211881, specs={DH.Havoc}, baseCD=30, reqTalents={63}}, -- Fel Eruption\n    {spellID=221562, specs={DK.Blood}, baseCD=45}, -- Asphyxiate\n    {spellID=108194, specs={DK.Unholy}, baseCD=45, reqTalents={33}}, -- Asphyxiate\n    {spellID=108194, specs={DK.FrostDK}, baseCD=45, reqTalents={32}}, -- Asphyxiate\n    {spellID=5211, class=Druid, baseCD=50, reqTalents={41}}, -- Mighty Bash\n    {spellID=19577, specs={Hunter.BM,Hunter.Surv}, baseCD=60}, -- Intimidation\n    {spellID=853, specs={Paladin.Holy}, baseCD=60, modTalents={[31]=CastDeltaMod(275773, -10)}}, -- Hammer of Justice\n    {spellID=853, specs={Paladin.Prot}, baseCD=60, modTalents={[31]=CastDeltaMod(275779, -6)}}, -- Hammer of Justice\n    {spellID=853, specs={Paladin.Ret}, baseCD=60}, -- Hammer of Justice\n    {spellID=88625, specs={Priest.Holy}, baseCD=60, reqTalents={42}, mods=CastDeltaMod(585, -4), modTalents={[71]=CastDeltaMod(585, -1.333333)}}, -- Holy Word: Chastise\n    {spellID=64044, specs={Priest.Shadow}, baseCD=45, reqTalents={43}}, -- Psychic Horror\n    {spellID=6789, class=Warlock, baseCD=45, reqTalents={52}}, -- Mortal Coil\n    {spellID=107570, specs={Warrior.Prot}, baseCD=30, reqTalents={53}}, -- Storm Bolt\n    {spellID=107570, specs={Warrior.Arms,Warrior.Fury}, baseCD=30, reqTalents={23}}, -- Storm Bolt\n}\n\nZT.typeToTrackedSpells[\"STSOFTCC\"] = {\n    {spellID=217832, class=DH, baseCD=45}, -- Imprison\n    {spellID=2094, specs={Rogue.Sin,Rogue.Sub}, baseCD=120}, -- Blind\n    {spellID=2094, specs={Rogue.Outlaw}, baseCD=120, modTalents={[52]=StaticMod(\"sub\", 30)}}, -- Blind\n    {spellID=115078, class=Monk, baseCD=45}, -- Paralysis\n    {spellID=187650, class=Hunter, baseCD=30}, -- Freezing Trap\n    {spellID=49576, specs={DK.Blood}, baseCD=15, version=2}, -- Death Grip\n    {spellID=49576, specs={DK.Frost,DK.Unholy}, baseCD=25, version=2}, -- Death Grip\n}\n\nZT.typeToTrackedSpells[\"DISPEL\"] = {\n    {spellID=202719, race=\"BloodElf\", class=DH, baseCD=120}, -- Arcane Torrent\n    {spellID=50613, race=\"BloodElf\", class=DK, baseCD=120}, -- Arcane Torrent\n    {spellID=80483, race=\"BloodElf\", class=Hunter, baseCD=120}, -- Arcane Torrent\n    {spellID=28730, race=\"BloodElf\", class=Mage, baseCD=120}, -- Arcane Torrent\n    {spellID=129597, race=\"BloodElf\", class=Monk, baseCD=120}, -- Arcane Torrent\n    {spellID=155145, race=\"BloodElf\", class=Paladin, baseCD=120}, -- Arcane Torrent\n    {spellID=232633, race=\"BloodElf\", class=Priest, baseCD=120}, -- Arcane Torrent\n    {spellID=25046, race=\"BloodElf\", class=Rogue, baseCD=120}, -- Arcane Torrent\n    {spellID=28730, race=\"BloodElf\", class=Warlock, baseCD=120}, -- Arcane Torrent\n    {spellID=69179, race=\"BloodElf\", class=Warrior, baseCD=120}, -- Arcane Torrent\n    {spellID=32375, class=Priest, baseCD=45}, -- Mass Dispel\n}\n\nZT.typeToTrackedSpells[\"DEFMDISPEL\"] = {\n    {spellID=88423, specs={Druid.Resto}, baseCD=8, mods=DispelMod(88423), ignoreCast=true}, -- Nature's Cure\n    {spellID=115450, specs={Monk.MW}, baseCD=8, mods=DispelMod(115450), ignoreCast=true}, -- Detox\n    {spellID=4987, specs={Paladin.Holy}, baseCD=8, mods=DispelMod(4987), ignoreCast=true}, -- Cleanse\n    {spellID=527, specs={Priest.Disc,Priest.Holy}, baseCD=8, mods=DispelMod(527), ignoreCast=true}, -- Purify\n    {spellID=77130, specs={Shaman.Resto}, baseCD=8, mods=DispelMod(77130), ignoreCast=true}, -- Purify Spirit\n}\n\nZT.typeToTrackedSpells[\"EXTERNAL\"] = {\n    {spellID=196718, specs={DH.Havoc}, baseCD=180}, -- Darkness\n    {spellID=102342, specs={Druid.Resto}, baseCD=60, modTalents={[62]=StaticMod(\"sub\", 15)}}, -- Ironbark\n    {spellID=116849, specs={Monk.MW}, baseCD=120}, -- Life Cocoon\n    {spellID=31821, specs={Paladin.Holy}, baseCD=180}, -- Aura Mastery\n    {spellID=6940, specs={Paladin.Holy,Paladin.Prot}, baseCD=120}, -- Blessing of Sacrifice\n    {spellID=1022, specs={Paladin.Holy,Paladin.Ret}, baseCD=300}, -- Blessing of Protection\n    {spellID=1022, specs={Paladin.Prot}, baseCD=300, reqTalents={41,42}}, -- Blessing of Protection\n    {spellID=204018, specs={Paladin.Prot}, baseCD=180, reqTalents={43}}, -- Blessing of Spellwarding\n    {spellID=62618, specs={Priest.Disc}, baseCD=180, reqTalents={71,73}}, -- Power Word: Barrier\n    {spellID=271466, specs={Priest.Disc}, baseCD=180, reqTalents={72}}, -- Luminous Barrier\n    {spellID=33206, specs={Priest.Disc}, baseCD=180}, -- Pain Supression\n    {spellID=47788, specs={Priest.Holy}, baseCD=180, modTalents={[32]=modGuardianSpirit}}, -- Guardian Spirit\n    {spellID=98008, specs={Shaman.Resto}, baseCD=180}, -- Spirit Link Totem\n    {spellID=97462, class=Warrior, baseCD=180}, -- Rallying Cry\n}\n\nZT.typeToTrackedSpells[\"HEALING\"] = {\n    {spellID=740, specs={Druid.Resto}, baseCD=180, modTalents={[61]=StaticMod(\"sub\", 60)}}, -- Tranquility\n    {spellID=191837, specs={Monk.MW}, baseCD=12, version=2}, -- TEST Essence Font\n    {spellID=115310, specs={Monk.MW}, baseCD=180}, -- Revival\n    {spellID=216331, specs={Paladin.Holy}, baseCD=120, reqTalents={62}}, -- Avenging Crusader\n    {spellID=105809, specs={Paladin.Holy}, baseCD=90, reqTalents={53}}, -- Holy Avenger\n    {spellID=633, specs={Paladin.Holy}, baseCD=600, modTalents={[21]=StaticMod(\"mul\", 0.7)}}, -- Lay on Hands\n    {spellID=633, specs={Paladin.Prot,Paladin.Ret}, baseCD=600, modTalents={[51]=StaticMod(\"mul\", 0.7)}}, -- Lay on Hands\n    {spellID=210191, specs={Paladin.Ret}, baseCD=60, reqTalents={63}}, -- Word of Glory\n    {spellID=47536, specs={Priest.Disc}, baseCD=90}, -- Rapture\n    {spellID=246287, specs={Priest.Disc}, baseCD=90, reqTalents={73}}, -- Evangelism\n    {spellID=64843, specs={Priest.Holy}, baseCD=180}, -- Divine Hymn\n    {spellID=200183, specs={Priest.Holy}, baseCD=120, reqTalents={72}}, -- Apotheosis\n    {spellID=265202, specs={Priest.Holy}, baseCD=720, reqTalents={73}, mods={CastDeltaMod(34861,-30), CastDeltaMod(2050,-30)}}, -- Holy Word: Salvation\n    {spellID=15286, specs={Priest.Shadow}, baseCD=120, modTalents={[22]=StaticMod(\"sub\", 45)}}, -- Vampiric Embrace\n    {spellID=108280, specs={Shaman.Resto}, baseCD=180}, -- Healing Tide Totem\n    {spellID=198838, specs={Shaman.Resto}, baseCD=60, reqTalents={42}}, -- Earthen Wall Totem\n    {spellID=207399, specs={Shaman.Resto}, baseCD=300, reqTalents={43}}, -- Ancestral Protection Totem\n    {spellID=114052, specs={Shaman.Resto}, baseCD=180, reqTalents={73}}, -- Ascendance\n}\n\nZT.typeToTrackedSpells[\"UTILITY\"] = {\n    {spellID=205636, specs={Druid.Balance}, baseCD=60, reqTalents={13}}, -- Force of Nature (Treants)\n    {spellID=73325, class=Priest, baseCD=90}, -- Leap of Faith\n    {spellID=114018, class=Rogue, baseCD=360}, -- Shroud of Concealment\n    {spellID=29166, specs={Druid.Balance,Druid.Resto}, baseCD=180}, -- Innervate\n    {spellID=64901, specs={Priest.Holy}, baseCD=300}, -- Symbol of Hope\n    {spellID=198103, class=Shaman, baseCD=300, version=2}, -- Earth Elemental\n    {spellID=192077, class=Shaman, baseCD=120, reqTalents={53}, version=2}, -- Wind Rush Totem\n    {spellID=106898, specs={Druid.Guardian}, baseCD=60, version=2}, -- Stampeding Roar\n    {spellID=106898, specs={Druid.Feral}, baseCD=120, version=2}, -- Stampeding Roar\n}\n\nZT.typeToTrackedSpells[\"PERSONAL\"] = {\n    {spellID=198589, specs={DH.Havoc}, baseCD=60, mods=EventRemainingMod(\"SPELL_AURA_APPLIED\", 212800, 60)}, -- Blur\n    {spellID=187827, specs={DH.Veng}, baseCD=180}, -- Metamorphosis\n    {spellID=48707, specs={DK.Blood}, baseCD=60, modTalents={[42]=StaticMod(\"sub\", 15)}}, -- Anti-Magic Shell\n    {spellID=48707, specs={DK.Frost,DK.Unholy}, baseCD=60}, -- Anti-Magic Shell\n    {spellID=48743, specs={DK.Frost,DK.Unholy}, baseCD=120, reqTalents={53}}, -- Death Pact\n    {spellID=48792, class=DK, baseCD=180}, -- Icebound Fortitude\n    {spellID=55233, specs={DK.Blood}, baseCD=90, modTalents={[72]=ResourceSpendingMods(DK.Blood, 0.1)}}, -- Vampiric Blood\n    {spellID=22812, specs={Druid.Balance,Druid.Guardian,Druid.Resto}, baseCD=60}, -- Barkskin\n    {spellID=61336, specs={Druid.Feral,Druid.Guardian}, baseCD=180}, -- Survival Instincts\n    {spellID=109304, class=Hunter, baseCD=120}, -- Exhilaration\n    {spellID=235219, specs={Mage.Frost}, baseCD=300}, -- Cold Snap\n    {spellID=122278, class=Monk, baseCD=120, reqTalents={53}}, -- Dampen Harm\n    {spellID=122783, specs={Monk.MW, Monk.WW}, baseCD=90, reqTalents={52}}, -- Diffuse Magic\n    {spellID=115203, specs={Monk.BRM}, baseCD=420}, -- Fortifying Brew\n    {spellID=115176, specs={Monk.BRM}, baseCD=300}, -- Zen Meditation\n    {spellID=243435, specs={Monk.MW}, baseCD=90}, -- Fortifying Brew\n    {spellID=122470, specs={Monk.WW}, baseCD=90}, -- Touch of Karma\n    {spellID=498, specs={Paladin.Holy}, baseCD=60}, -- Divine Protection\n    {spellID=31850, specs={Paladin.Prot}, baseCD=120}, -- Ardent Defender\n    {spellID=86659, specs={Paladin.Prot}, baseCD=300}, -- Guardian of the Ancient Kings\n    {spellID=184662, specs={Paladin.Ret}, baseCD=120}, -- Shield of Vengeance\n    {spellID=205191, specs={Paladin.Ret}, baseCD=60, reqTalents={53}}, -- Eye for an Eye\n    {spellID=19236, specs={Priest.Disc, Priest.Holy}, baseCD=90}, -- Desperate Prayer\n    {spellID=47585, specs={Priest.Shadow}, baseCD=120}, -- Dispersion\n    {spellID=5277, specs={Rogue.Sin, Rogue.Sub}, baseCD=120, version=2}, -- Evasion\n    {spellID=199754, specs={Rogue.Outlaw}, baseCD=120, version=2}, -- Riposte\n    {spellID=108271, class=Shaman, baseCD=90}, -- Astral Shift\n    {spellID=104773, class=Warlock, baseCD=180}, -- Unending Resolve\n    {spellID=118038, specs={Warrior.Arms}, baseCD=180}, -- Die by the Sword\n    {spellID=184364, specs={Warrior.Fury}, baseCD=120}, -- Enraged Regeneration\n    {spellID=12975, specs={Warrior.Prot}, baseCD=180, modTalents={[43]=StaticMod(\"sub\", 60)}}, -- Last Stand\n    {spellID=871, specs={Warrior.Prot}, baseCD=240}, -- Shield Wall\n}\n\nZT.typeToTrackedSpells[\"IMMUNITY\"] = {\n    {spellID=196555, specs={DH.Havoc}, baseCD=120, reqTalents={43}}, -- Netherwalk\n    {spellID=186265, class=Hunter, baseCD=180, modTalents={[51]=StaticMod(\"mul\", 0.8)}}, -- Aspect of the Turtle\n    {spellID=45438, specs={Mage.Arcane,Mage.Fire}, baseCD=240}, -- Ice Block\n    {spellID=45438, specs={Mage.Frost}, baseCD=240, mods=CastRemainingMod(235219, 0)}, -- Ice Block\n    {spellID=642, class=Paladin, baseCD=300}, -- Divine Shield\n    {spellID=31224, class=Rogue, baseCD=120}, -- Cloak of Shadows\n}\n\nZT.typeToTrackedSpells[\"DAMAGE\"] = {\n    {spellID=191427, specs={DH.Havoc}, baseCD=240}, -- Metamorphosis\n    {spellID=258925, specs={DH.Havoc}, baseCD=60, reqTalents={33}}, -- Fel Barrage\n    {spellID=206491, specs={DH.Havoc}, baseCD=120, reqTalents={73}}, -- Nemesis\n    {spellID=279302, specs={DK.Frost}, baseCD=180, reqTalents={63}}, -- Frostwyrm's Fury\n    {spellID=152279, specs={DK.Frost}, baseCD=120, reqTalents={73}}, -- Breath of Sindragosaa\n    {spellID=42650, specs={DK.Unholy}, baseCD=480}, -- Army of the Dead\n    {spellID=49206, specs={DK.Unholy}, baseCD=180, reqTalents={73}}, -- Summon Gargoyle\n    {spellID=207289, specs={DK.Unholy}, baseCD=75, reqTalents={72}}, -- Unholy Frenzy\n    {spellID=194223, specs={Druid.Balance}, baseCD=180, reqTalents={51,52}}, -- Celestial Alignment\n    {spellID=102560, specs={Druid.Balance}, baseCD=180, reqTalents={53}}, -- Incarnation: Chosen of Elune\n    {spellID=102543, specs={Druid.Feral}, baseCD=180, reqTalents={53}}, -- Incarnation: King of the Jungle\n    {spellID=19574, specs={Hunter.BM}, baseCD=90}, -- Bestial Wrath\n    {spellID=193530, specs={Hunter.BM}, baseCD=120}, -- Aspect of the Wild\n    {spellID=201430, specs={Hunter.BM}, baseCD=180, reqTalents={63}}, -- Stampede\n    {spellID=193526, specs={Hunter.MM}, baseCD=180}, -- Trueshot\n    {spellID=266779, specs={Hunter.SV}, baseCD=120}, -- Coordinated Assault\n    {spellID=12042, specs={Mage.Arcane}, baseCD=90}, -- Arcane Power\n    {spellID=190319, specs={Mage.Fire}, baseCD=120}, -- Combustion\n    {spellID=12472, specs={Mage.Frost}, baseCD=180}, -- Icy Veins\n    {spellID=55342, class=Mage, baseCD=120, reqTalents={32}}, -- Mirror Image\n    {spellID=115080, specs={Monk.WW}, baseCD=120}, -- Touch of Death\n    {spellID=123904, specs={Monk.WW}, baseCD=180, reqTalents={63}}, -- Xuen\n    {spellID=137639, specs={Monk.WW}, baseCD=90, reqTalents={71, 72}}, -- Storm, Earth, and Fire\n    {spellID=152173, specs={Monk.WW}, baseCD=90, reqTalents={73}}, -- Serenity\n    {spellID=31884, specs={Paladin.Ret}, baseCD=120, reqTalents={71,73}}, -- Avenging Wrath\n    {spellID=231895, specs={Paladin.Ret}, baseCD=120, reqTalents={72}}, -- Crusade\n    {spellID=280711, specs={Priest.Shadow}, baseCD=60, reqTalents={72}}, -- Dark Ascension\n    {spellID=193223, specs={Priest.Shadow}, baseCD=180, reqTalents={73}}, -- Surrender to Madness\n    {spellID=79140, specs={Rogue.Sin}, baseCD=120}, -- Vendetta\n    {spellID=121471, specs={Rogue.Sub}, baseCD=180}, -- Shadow Blades\n    {spellID=13750, specs={Rogue.Outlaw}, baseCD=180}, -- Adrenaline Rush\n    {spellID=51690, specs={Rogue.Outlaw}, baseCD=120, reqTalents={73}}, -- Killing Spree\n    {spellID=114050, specs={Shaman.Ele}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {spellID=114051, specs={Shaman.Enh}, baseCD=180, reqTalents={73}}, -- Ascendance\n    {spellID=205180, specs={Warlock.Affl}, baseCD=180}, -- Summon Darkglare\n    {spellID=113860, specs={Warlock.Affl}, baseCD=120, reqTalents={73}}, -- Dark Soul: Misery\n    {spellID=265187, specs={Warlock.Demo}, baseCD=90}, -- Summon Demonic Tyrant\n    {spellID=267217, specs={Warlock.Demo}, baseCD=180, reqTalents={73}}, -- Nether Portal\n    {spellID=113858, specs={Warlock.Destro}, baseCD=120, reqTalents={73}}, -- Dark Soul: Instability\n    {spellID=1122, specs={Warlock.Destro}, baseCD=180}, -- Summon Infernal\n    {spellID=227847, specs={Warrior.Arms}, baseCD=90}, -- Bladestorm\n    {spellID=107574, specs={Warrior.Arms}, baseCD=120, reqTalents={62}}, -- Avatar\n    {spellID=1719, specs={Warrior.Fury}, baseCD=90}, -- Recklessness\n    {spellID=46924, specs={Warrior.Fury}, baseCD=60, reqTalents={63}}, -- Bladestorm\n}\n\nZT.typeToTrackedSpells[\"TANK\"] = {\n    {spellID=49028, specs={DK.Blood}, baseCD=120}, -- Dancing Rune Weapon\n    {spellID=194679, specs={DK.Blood}, baseCD=25, reqTalents={43}}, -- Rune Tap\n    {spellID=194844, specs={DK.Blood}, baseCD=60, reqTalents={73}}, -- Bonestorm\n    {spellID=204021, specs={DH.Veng}, baseCD=60}, -- Fiery Brand\n    {spellID=1160, specs={Warrior.Prot}, baseCD=45}, -- Demoralizing Shout\n}\n\nZT.linkedSpellIDs = {\n    [19647]  = {119910, 132409, 115781}, -- Spell Lock\n    [132469] = {61391}, -- Typhoon\n    [191427] = {200166}, -- Metamorphosis\n    [106898] = {77761, 77764}, -- Stampeding Roar\n}\n\nZT.specialConfigSpellIDs = {\n    [202719] = \"ArcaneTorrent\",\n    [50613]  = \"ArcaneTorrent\",\n    [80483]  = \"ArcaneTorrent\",\n    [28730]  = \"ArcaneTorrent\",\n    [129597] = \"ArcaneTorrent\",\n    [155145] = \"ArcaneTorrent\",\n    [232633] = \"ArcaneTorrent\",\n    [25046]  = \"ArcaneTorrent\",\n    [28730]  = \"ArcaneTorrent\",\n    [69179]  = \"ArcaneTorrent\",\n    [221562] = \"Asphyxiate\",\n    [108194] = \"Asphyxiate\",\n    [5277]   = \"Evasion/Riposte\",\n    [199754] = \"Evasion/Riposte\",\n}\n\n-- Adding custom spells from the user to the table\nlocal spellConfigFuncHeader = \"return function(DK,DH,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,StaticMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\"\n\nlocal function trim(s) -- From PiL2 20.4\n  return (s:gsub(\"^%s*(.-)%s*$\", \"%1\"))\nend\n\nlocal function addCustomSpell(spellConfig, i)\n    if not spellConfig or type(spellConfig) ~= \"table\" then\n        print(\"[ZT] Custom Spell\", i, \"is not represented as a valid table\")\n        return\n    end\n\n    if type(spellConfig.type) ~= \"string\" then\n        print(\"[ZT] Custom Spell\", i, \"does not have a valid 'type' entry\")\n        return\n    end\n\n    if type(spellConfig.spellID) ~= \"number\" then\n        print(\"[ZT] Custom Spell\", i, \"does not have a valid 'spellID' entry\")\n        return\n    end\n\n    if type(spellConfig.baseCD) ~= \"number\" then\n        print(\"[ZT] Custom Spell\", i, \"does not have a valid 'baseCD' entry\")\n        return\n    end\n\n    spellConfig.version = 10000\n    spellConfig.isCustom = true\n\n    local spells = ZT.typeToTrackedSpells[spellConfig.type]\n    spells[#spells + 1] = spellConfig\nend\n\nfor i = 1,11 do\n    local spellConfig = ZT.config[\"custom\"..i]\n    if spellConfig then\n        spellConfig = trim(spellConfig)\n    end\n\n    if spellConfig and spellConfig ~= \"\" then\n        local spellConfigFuncStr = spellConfigFuncHeader..\" return \"..spellConfig..\" end\"\n        local spellConfigFunc = WeakAuras.LoadFunction(spellConfigFuncStr, \"ZenTracker Custom Spell \"..i)\n        if spellConfigFunc then\n            local spellConfig = spellConfigFunc(DK,DH,Druid,Hunter,Mage,Monk,Paladin,Priest,Rogue,Shaman,Warlock,Warrior,\n                StaticMod,DynamicMod,EventDeltaMod,CastDeltaMod,EventRemainingMod,CastRemainingMod,DispelMod)\n            addCustomSpell(spellConfig, i)\n        end\n    end\nend\n\n-- Building a complete list of tracked spells\nZT.spellIDToInfo = {}\n\nfor type,spells in pairs(ZT.typeToTrackedSpells) do\n    for _,spellInfo in ipairs(spells) do\n        spellInfo.type = type\n\n        -- If no version, assign version=1\n        if not spellInfo.version then\n            spellInfo.version = 1\n        end\n        \n        -- Creating a lookup map from list of valid specs\n        if spellInfo.specs then\n            local specsMap = {}\n            for _,specID in ipairs(spellInfo.specs) do\n                specsMap[specID] = true\n            end\n            spellInfo.specs = specsMap\n        end\n        \n        -- Placing single modifiers inside of a table (or creating an empty table if none)\n        if spellInfo.mods then\n            if spellInfo.mods.type then\n                spellInfo.mods = { spellInfo.mods }\n            end\n        else\n            spellInfo.mods = {}\n        end\n        \n        -- Placing single talent modifiers inside of a table (or creating an empty table if none)\n        if spellInfo.modTalents then\n            for talent,modifiers in pairs(spellInfo.modTalents) do\n                if modifiers.type then\n                    spellInfo.modTalents[talent] = { modifiers }\n                end\n            end\n        else\n            spellInfo.modTalents = {}\n        end\n        \n        local spellID = spellInfo.spellID\n        local allSpellInfo = ZT.spellIDToInfo[spellID]\n        if not allSpellInfo then\n            -- Checking if this spellID is blacklisted or whitelisted\n            local isBlacklisted = ZT.config[\"spell\"..spellID]\n            if isBlacklisted == nil then\n                local configSpellID = ZT.specialConfigSpellIDs[spellID]\n                if configSpellID then\n                    isBlacklisted = ZT.config[\"spell\"..configSpellID]\n                else\n                    isBlacklisted = (ZT.config[\"spellConfigType\"] == 2) -- If not in config, ignore whitelist/blacklist\n                    if not spellInfo.isCustom then\n                        print(\"[ZT] Config not present for spellID\", spellID)\n                    end\n                end\n            end\n            if ZT.config[\"spellConfigType\"] == 2 then\n                isBlacklisted = not isBlacklisted\n            end\n            \n            allSpellInfo = {\n                type = type,\n                variants = { spellInfo },\n                isBlacklisted = isBlacklisted,\n            }\n            ZT.spellIDToInfo[spellID] = allSpellInfo\n        else\n            local variants = allSpellInfo.variants\n            variants[#variants+1] = spellInfo\n        end\n    end\nend\n\n--------------------------------------------------------------------------------\n-- END TRACKED SPELLS\n--------------------------------------------------------------------------------\n\n-- Handling the sending of events to the front-end WAs\nlocal function sendFrontEndTrigger(watchInfo)\n    if watchInfo.isHidden then\n        return\n    end\n    if ZT.DEBUG_EVENTS then\n        print(\"[ZT] Sending ZT_TRIGGER\", watchInfo.spellInfo.type, watchInfo.watchID, watchInfo.duration, watchInfo.expiration)\n    end\n    WeakAuras.ScanEvents(\"ZT_TRIGGER\", watchInfo.spellInfo.type, watchInfo.watchID, watchInfo.duration, watchInfo.expiration)\nend\n\nlocal function sendFrontEndAdd(watchInfo)\n    if watchInfo.isHidden then\n        return\n    end\n    local spellInfo = watchInfo.spellInfo\n    if ZT.DEBUG_EVENTS then\n        print(\"[ZT] Sending ZT_ADD\", spellInfo.type, watchInfo.watchID, watchInfo.member.name, spellInfo.spellID)\n    end\n    WeakAuras.ScanEvents(\"ZT_ADD\", spellInfo.type, watchInfo.watchID, watchInfo.member, spellInfo.spellID)\n    \n    if watchInfo.expiration > GetTime() then\n        sendFrontEndTrigger(watchInfo)\n    end\nend\n\nlocal function sendFrontEndRemove(watchInfo)\n    if watchInfo.isHidden then\n        return\n    end\n    if ZT.DEBUG_EVENTS then\n        print(\"[ZT] Sending ZT_REMOVE\", watchInfo.spellInfo.type, watchInfo.watchID)\n    end\n    WeakAuras.ScanEvents(\"ZT_REMOVE\", watchInfo.spellInfo.type, watchInfo.watchID)\nend\n\n-- Handling combatlog and WeakAura events by invoking specified handler functions\nZT.eventHandlers = {}\n\nfunction ZT:addEventHandler(type, spellID, sourceGUID, handler, data)\n    local types = self.eventHandlers[spellID]\n    if not types then\n        types = {}\n        self.eventHandlers[spellID] = types\n    end\n    \n    local sources = types[type]\n    if not sources then\n        sources = {}\n        types[type] = sources\n    end\n    \n    local handlers = sources[sourceGUID]\n    if not handlers then\n        handlers = {}\n        sources[sourceGUID] = handlers\n    end\n    \n    handlers[handler] = data\nend\n\nfunction ZT:removeEventHandler(type, spellID, sourceGUID, handler)\n    local types = self.eventHandlers[spellID]\n    if types then\n        local sources = types[type]\n        if sources then\n            local handlers = sources[sourceGUID]\n            if handlers then\n                handlers[handler] = nil\n            end\n        end\n    end\nend\n\nfunction ZT:removeAllEventHandlers(sourceGUID)\n    for _,spells in pairs(self.eventHandlers) do\n        for _,sources in pairs(spells) do\n            for GUID,handlers in pairs(sources) do\n                if GUID == sourceGUID then\n                    wipe(handlers)\n                end\n            end\n        end\n    end\nend\n\nlocal function fixSourceGUID(sourceGUID) -- Based on https://wago.io/p/Nnogga\n    local type = strsplit(\"-\",sourceGUID)\n    if type == \"Pet\" then\n        for unit in WA_IterateGroupMembers() do\n            if UnitGUID(unit..\"pet\") == sourceGUID then\n                sourceGUID = UnitGUID(unit)\n                break\n            end\n        end\n    end\n    \n    return sourceGUID\nend\n\nfunction ZT:handleEvent(type, spellID, sourceGUID)\n    local types = self.eventHandlers[spellID]\n    if not types then\n        return\n    end\n    \n    local sources = types[type]\n    if not sources then\n        return\n    end\n    \n    local handlers = sources[sourceGUID]\n    if not handlers then\n        sourceGUID = fixSourceGUID(sourceGUID)\n        handlers = sources[sourceGUID]\n        if not handlers then\n            return\n        end\n    end\n    \n    for handler,data in pairs(handlers) do\n        handler(data)\n    end\nend\n\n-- Managing the set of (spellID,sourceGUID) pairs that are being watched\nZT.nextWatchID = 1\nZT.watching = {}\n\nlocal function WatchInfo_startCooldown(self)\n    self.expiration = GetTime() + self.duration\n    sendFrontEndTrigger(self)\nend\n\nlocal function WatchInfo_updateDelta(self, delta)\n    self.expiration = self.expiration + delta\n    sendFrontEndTrigger(self)\nend\n\nlocal function WatchInfo_updateRemaining(self, remaining)\n    self.expiration = GetTime() + remaining\n    sendFrontEndTrigger(self)\nend\n\nlocal function WatchInfo_update(self, ignoreIfReady, ignoreRateLimit)\n    local startTime, duration, enabled = GetSpellCooldown(self.spellInfo.spellID)\n    if enabled ~= 0 then\n        if startTime ~= 0 then\n            self.duration = duration\n            self.expiration = startTime + duration\n        else\n            self.expiration = GetTime()\n        end\n        \n        if (not ignoreIfReady) or (startTime ~= 0) then\n            sendFrontEndTrigger(self)\n            ZT:sendCDUpdate(self, ignoreRateLimit)\n        end\n    end\nend\n\nlocal function WatchInfo_handleStarted(self)\n    WatchInfo_update(self, false, true)\nend\n\nlocal function WatchInfo_handleChanged(self)\n    WatchInfo_update(self, false, false)\nend\n\nlocal function WatchInfo_handleReady(self)\n    self.expiration = GetTime()\n    sendFrontEndTrigger(self)\n    ZT:sendCDUpdate(self, true)\nend\n\nlocal function WatchInfo_hide(self)\n    sendFrontEndRemove(self)\n    self.isHidden = true\nend\n\nlocal function WatchInfo_unhide(self)\n    self.isHidden = false\n    sendFrontEndAdd(self)\nend\n\nfunction ZT:togglePlayerHandlers(watchInfo, enable)\n    local spellID = watchInfo.spellInfo.spellID\n    local toggleEventHandler = enable and self.addEventHandler or self.removeEventHandler\n    \n    if enable then\n        WeakAuras.WatchSpellCooldown(spellID)\n    end\n    toggleEventHandler(self, \"SPELL_COOLDOWN_STARTED\", spellID, 0, WatchInfo_handleStarted, watchInfo)\n    toggleEventHandler(self, \"SPELL_COOLDOWN_CHANGED\", spellID, 0, WatchInfo_handleChanged, watchInfo)\n    toggleEventHandler(self, \"SPELL_COOLDOWN_READY\", spellID, 0, WatchInfo_handleReady, watchInfo)\nend\n\nfunction ZT:toggleCombatLogHandlers(watchInfo, enable, specInfo)\n    local spellInfo = watchInfo.spellInfo\n    local spellID = spellInfo.spellID\n    local member = watchInfo.member\n    local toggleEventHandler = enable and self.addEventHandler or self.removeEventHandler\n    \n    if not spellInfo.ignoreCast then\n        toggleEventHandler(self, \"SPELL_CAST_SUCCESS\", spellID, member.GUID, WatchInfo_startCooldown, watchInfo)\n        \n        local links = self.linkedSpellIDs[spellID]\n        if links then\n            for _,linkedSpellID in ipairs(links) do\n                toggleEventHandler(self, \"SPELL_CAST_SUCCESS\", linkedSpellID, member.GUID, WatchInfo_startCooldown, watchInfo)\n            end\n        end\n    end\n    \n    for _,modifier in pairs(spellInfo.mods) do\n        if modifier.type == \"Dynamic\" then\n            for _,handlerInfo in ipairs(modifier.handlers) do\n                toggleEventHandler(self, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n            end\n        end\n    end\n    \n    for talent, modifiers in pairs(spellInfo.modTalents) do\n        if specInfo.talentsMap[talent] then\n            for _, modifier in pairs(modifiers) do\n                if modifier.type == \"Dynamic\" then\n                    for _,handlerInfo in ipairs(modifier.handlers) do\n                        toggleEventHandler(self, handlerInfo.type, handlerInfo.spellID, member.GUID, handlerInfo.handler, watchInfo)\n                    end\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:watch(spellInfo, member, specInfo, isHidden)\n    specInfo = specInfo or member.specInfo\n    \n    local spellID = spellInfo.spellID\n    local spells = self.watching[spellID]\n    if not spells then\n        spells = {}\n        self.watching[spellID] = spells\n    end\n    \n    local watchInfo = spells[member.GUID]\n    local isNew = (watchInfo == nil)\n    \n    if not watchInfo then\n        watchInfo = {\n            watchID = self.nextWatchID,\n            member = member,\n            spellInfo = spellInfo,\n            duration = member:computeCooldown(spellInfo, specInfo),\n            expiration = GetTime(),\n            isHidden = isHidden,\n            startCooldown = WatchInfo_startCooldown,\n            update = WatchInfo_update,\n            updateDelta = WatchInfo_updateDelta,\n            updateRemaining = WatchInfo_updateRemaining,\n        }\n        self.nextWatchID = self.nextWatchID + 1\n        \n        spells[member.GUID] = watchInfo\n        member.watching[spellID] = watchInfo\n        \n        sendFrontEndAdd(watchInfo)\n    else\n        watchInfo.spellInfo = spellInfo\n        watchInfo.duration = member:computeCooldown(spellInfo, specInfo)\n        \n        if watchInfo.isHidden and not isHidden then\n            WatchInfo_unhide(watchInfo)\n        end\n    end\n    \n    if member.isPlayer then\n        watchInfo:update(true)\n    end\n    \n    if member.isPlayer then\n        if isNew then\n            self:togglePlayerHandlers(watchInfo, true)\n        end\n    elseif member.tracking == \"CombatLog\" or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n        if isNew then\n            self:toggleCombatLogHandlers(watchInfo, true, specInfo)\n        else\n            self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n            self:toggleCombatLogHandlers(watchInfo, true, specInfo)\n        end\n    end\nend\n\nfunction ZT:unwatch(spellInfo, member, specInfo, keepHidden)\n    local spellID = spellInfo.spellID\n    local sources = self.watching[spellID]\n    if not sources then\n        return\n    end\n    \n    local watchInfo = sources[member.GUID]\n    if watchInfo then\n        if member.isPlayer then\n            if keepHidden then\n                WatchInfo_hide(watchInfo)\n                return\n            end\n            \n            self:togglePlayerHandlers(watchInfo, false)\n        elseif member.tracking == \"CombatLog\"  or (member.tracking == \"Sharing\" and member.spellsVersion < spellInfo.version) then\n            self:toggleCombatLogHandlers(watchInfo, false, specInfo or member.specInfo)\n        end\n        \n        self.watching[spellInfo.spellID][member.GUID] = nil\n        member.watching[spellID] = nil\n        \n        sendFrontEndRemove(watchInfo)\n    end\nend\n\n-- Tracking types registered by front-end WAs\nZT.registration = {}\n\nfunction ZT:isTypeRegistered(type)\n    return self.registration[type] and (next(self.registration[type], nil) ~= nil)\nend\n\nfunction ZT:rebroadcast(type)\n    for _,sources in pairs(self.watching) do\n        for _,watchInfo in pairs(sources) do\n            if (watchInfo.spellInfo.type == type) then\n                sendFrontEndAdd(watchInfo)\n            end\n        end\n    end\nend\n\nfunction ZT:registerFrontEnd(type, frontendID)\n    local frontends = self.registration[type]\n    if not frontends then\n        frontends = {}\n        self.registration[type] = frontends\n    end\n    \n    if not frontends[frontendID] then\n        local typeWasRegistered = self:isTypeRegistered(type)\n        self.registration[type][frontendID] = true\n        \n        if self.DEBUG_EVENTS then\n            print(\"[ZT] Received ZT_REGISTER\", type, frontendID, \" -> New\", typeWasRegistered and \"(Type Registered)\" or \"(Type Unregistered)\")\n        end\n        \n        if typeWasRegistered then\n            self:rebroadcast(type)\n        else\n            for _,member in pairs(self.members) do\n                if (not member.isPlayer) or (self.config[\"my\"..type]) then\n                    for _,allSpellInfo in pairs(self.spellIDToInfo) do\n                        if (not allSpellInfo.isBlacklisted) and (type == allSpellInfo.type) then\n                            for _,spellInfo in pairs(allSpellInfo.variants) do\n                                if member:checkSpellRequirements(spellInfo) then\n                                    self:watch(spellInfo, member, member.specInfo, member.isHidden)\n                                    break\n                                end\n                            end\n                        end\n                    end\n                end\n            end\n        end\n    else\n        if self.DEBUG_EVENTS then\n            print(\"[ZT] Received ZT_REGISTER\", type, frontendID, \" -> Existing\")\n        end\n        \n        self:rebroadcast(type)\n    end\nend\n\nfunction ZT:unregisterFrontEnd(type, frontendID)\n    self.registration[type][frontendID] = nil\n    \n    if not self:isTypeRegistered(type) then\n        if self.DEBUG_EVENTS then\n            print(\"[ZT] Received ZT_UNREGISTER\", type)\n        end\n        \n        for _,member in pairs(self.members) do\n            for spellID,watchInfo in pairs(member.watching) do\n                local spellInfo = watchInfo.spellInfo\n                if spellInfo.type == type then\n                    self:unwatch(spellInfo, member, member.specInfo, true)\n                end\n            end\n        end\n    end\nend\n\n-- Utility functions for operating over all spells available for a group member\nZT.members = {}\nZT.inEncounter = false\n\nlocal function Member_checkSpellRequirements(self, spellInfo, specInfo)\n    if not specInfo then\n        specInfo = self.specInfo\n    end\n    \n    if spellInfo.race and spellInfo.race ~= self.race then\n        return false\n    end\n    if spellInfo.class and spellInfo.class.ID ~= self.classID then\n        return false\n    end\n    if spellInfo.specs and (not specInfo.specID or not spellInfo.specs[specInfo.specID]) then\n        return false\n    end\n    \n    if spellInfo.reqTalents then\n        local talented = false\n        for _,t in ipairs(spellInfo.reqTalents) do\n            if specInfo.talentsMap[t] then\n                talented = true\n                break\n            end\n        end\n        \n        if not talented then\n            return false\n        end\n    end\n    \n    return true\nend\n\nlocal function Member_computeCooldown(self, spellInfo, specInfo)\n    if not specInfo then\n        specInfo = self.specInfo\n    end\n    \n    local cooldown = spellInfo.baseCD\n    if spellInfo.modTalents then\n        for talent,modifiers in pairs(spellInfo.modTalents) do\n            if specInfo.talentsMap[talent] then\n                for _,modifier in ipairs(modifiers) do\n                    if modifier.type == \"Static\" then\n                        if modifier.sub then\n                            cooldown = cooldown - modifier.sub\n                        elseif modifier.mul then\n                            cooldown = cooldown * modifier.mul\n                        end\n                    end\n                end\n            end\n        end\n    end\n    \n    return cooldown\nend\n\nlocal function Member_hide(self)\n    if not self.isHidden and not self.isPlayer then\n        self.isHidden = true\n        for _,watchInfo in pairs(self.watching) do\n            WatchInfo_hide(watchInfo)\n        end\n    end\nend\n\nlocal function Member_unhide(self)\n    if self.isHidden and not self.isPlayer then\n        self.isHidden = false\n        for _,watchInfo in pairs(self.watching) do\n            WatchInfo_unhide(watchInfo)\n        end\n    end\nend\n\nfunction ZT:addOrUpdateMember(memberInfo)\n    local member = self.members[memberInfo.GUID]\n    if not member then\n        member = memberInfo\n        member.watching = {}\n        member.tracking = member.tracking and member.tracking or \"CombatLog\"\n        member.isPlayer = (member.GUID == UnitGUID(\"player\"))\n        member.isHidden = (not member.isPlayer and self.inEncounter)\n        member.isReady = false\n        member.checkSpellRequirements = Member_checkSpellRequirements\n        member.computeCooldown = Member_computeCooldown\n        self.members[memberInfo.GUID] = member\n    end\n    \n    -- Gathering all necessary information about the member (if we don't have it already)\n    local justBecameReady = false\n    if not member.isReady then\n        local _,className,_,race,_,name = GetPlayerInfoByGUID(member.GUID)\n        member.name = name and gsub(name, \"%-[^|]+\", \"\") or nil\n        if self.DEBUG_TRACKING and (member.tracking == \"Sharing\") and member.name then\n            print(\"[ZT]\", member.name, \"is using ZenTracker ( SpellsVersion =\", member.spellsVersion, \")\")\n        end\n        member.class = className and AllClasses[className] or nil\n        member.classID = className and AllClasses[className].ID or nil\n        member.classColor = className and RAID_CLASS_COLORS[className] or nil\n        member.race = race\n        \n        member.isReady = (member.name ~= nil) and (member.classID ~= nil) and (member.race ~= nil)\n        justBecameReady = member.isReady\n    end\n    \n    local specInfo = memberInfo.specInfo\n    \n    -- Update if the member is now ready, or if they swapped specs/talents\n    local needsUpdate = justBecameReady\n    if specInfo.specID and specInfo.talents then\n        if (specInfo.specID ~= member.specInfo.specID) or (specInfo.talents ~= member.specInfo.talents) then\n            needsUpdate = true\n        end\n    end\n    \n    if needsUpdate then\n        -- If we are updating information about the player, send a handshake now\n        if member.isPlayer then\n            self:sendHandshake(specInfo)\n        end\n        \n        -- Watching/Unwatching relevant spell cooldowns\n        for spellID, allSpellInfo in pairs(self.spellIDToInfo) do\n            local isRegistered = self:isTypeRegistered(allSpellInfo.type)\n            local isBlacklisted = allSpellInfo.isBlacklisted\n            local hasSpell = false\n            \n            if member.isPlayer then -- If player, watch all possible spells (but some may be hidden)\n                for _,spellInfo in ipairs(allSpellInfo.variants) do\n                    hasSpell = member:checkSpellRequirements(spellInfo, specInfo)\n                    if hasSpell then\n                        local isHidden = (not isRegistered) or (not self.config[\"my\"..allSpellInfo.type]) or isBlacklisted\n                        self:watch(spellInfo, member, specInfo, isHidden)\n                        break\n                    end\n                end\n            elseif isRegistered and (not isBlacklisted) then -- Otherwise if group member, only watch relevant spells\n                for _,spellInfo in ipairs(allSpellInfo.variants) do\n                    hasSpell = member:checkSpellRequirements(spellInfo, specInfo)\n                    if hasSpell then\n                        self:watch(spellInfo, member, specInfo, member.isHidden)\n                        break\n                    end\n                end\n            end\n            \n            local prevWatchInfo = member.watching[spellID]\n            if not hasSpell and prevWatchInfo then\n                self:unwatch(prevWatchInfo.spellInfo, member)\n            end\n        end\n        \n        member.specInfo = specInfo\n    end\n    \n    -- If tracking changed from \"CombatLog\" to \"Sharing\", remove unnecessary event handlers and send a handshake/updates\n    if (member.tracking == \"CombatLog\") and (memberInfo.tracking == \"Sharing\") then\n        member.tracking = \"Sharing\"\n        member.spellsVersion = memberInfo.spellsVersion\n\n        if self.DEBUG_TRACKING and member.name then\n            print(\"[ZT]\", member.name, \"is using ZenTracker ( SpellsVersion =\", member.spellsVersion, \")\")\n        end\n        \n        for _,watchInfo in pairs(member.watching) do\n            if watchInfo.spellInfo.version <= member.spellsVersion then\n                self:toggleCombatLogHandlers(watchInfo, false, member.specInfo)\n            end\n        end\n\n        self:sendHandshake()\n        local time = GetTime()\n        for _,watchInfo in pairs(self.members[UnitGUID(\"player\")].watching) do\n            if watchInfo.expiration > time then\n                self:sendCDUpdate(watchInfo)\n            end\n        end\n    end\nend\n\nfunction ZT:resetEncounterCDs()\n    for _,member in pairs(self.members) do\n        if not member.isPlayer and member.tracking ~= \"Sharing\" then\n            for _,watchInfo in pairs(member.watching) do\n                if watchInfo.duration >= 180 then\n                    WatchInfo_updateRemaining(watchInfo, 0)\n                end\n            end\n        end\n    end\nend\n\nfunction ZT:startEncounter(event)\n    -- Note: This shouldn't happen, but in case it does...\n    if self.inEncounter then\n        for _,member in pairs(self.members) do\n            Member_unhide(member)\n        end\n    end\n    \n    self.inEncounter = true\n    local _,_,_,instanceID = UnitPosition(\"player\")\n    for _,member in pairs(self.members) do\n        local _,_,_,mInstanceID = UnitPosition(self.inspectLib:GuidToUnit(member.GUID))\n        if mInstanceID ~= instanceID then\n            Member_hide(member)\n        end\n    end\n    \n    if event == \"CHALLENGE_MODE_START\" then\n        self:resetEncounterCDs()\n    end\nend\n\nfunction ZT:endEncounter(event)\n    if self.inEncounter then\n        self.inEncounter = false\n        for _,member in pairs(self.members) do\n            Member_unhide(member)\n        end\n    end\n    \n    if event == \"ENCOUNTER_END\" then\n        self:resetEncounterCDs()\n    end\nend\n\n-- Message Format = <Protocol Version (%d)>:<Message Type (%s)>:<Member GUID (%s)>...\n--   Type = \"H\" (Handshake)\n--     ...:<Spec ID (%d)>:<Talents (%s)>:<IsInitial? (%d) [2]>:<Spells Version (%d) [2]>\n--   Type = \"U\" (CD Update)\n--     ...:<Spell ID (%d)>:<Duration (%f)>:<Remaining (%f)>\n\nZT.protocolVersion = 2\n\nZT.timeBetweenHandshakes = 5 --seconds\nZT.timeOfLastHandshake = 0\nZT.queuedHandshake = false\n\nZT.timeBetweenCDUpdates = 5 --seconds (per spellID)\nZT.timeOfLastCDUpdate = {}\nZT.queuedCDUpdates = {}\n\nlocal function sendMessage(message)\n    if not IsInGroup() and not IsInRaid() then\n        return\n    end\n    \n    if ZT.DEBUG_MESSAGES then\n        print(\"[ZT] Sending Message '\"..message..\"'\")\n    end\n    \n    local channel = IsInGroup(2) and \"INSTANCE_CHAT\" or \"RAID\"\n    C_ChatInfo_SendAddonMessage(\"ZenTracker\", message, channel)\nend\n\nZT.hasSentHandshake = false\nfunction ZT:sendHandshake(specInfo)\n    local time = GetTime()\n    local timeSinceLastHandshake = (time - self.timeOfLastHandshake)\n    if timeSinceLastHandshake < self.timeBetweenHandshakes then\n        if not self.queuedHandshake then\n            self.queuedHandshake = true\n            C_Timer.After(self.timeBetweenHandshakes - timeSinceLastHandshake, function() self:sendHandshake() end)\n        end\n        return\n    end\n    \n    local GUID = UnitGUID(\"player\")\n    specInfo = specInfo or self.members[GUID].specInfo\n    local specID = specInfo.specID or 0\n    local talents = specInfo.talents or \"\"\n    local isInitial = self.hasSentHandshake and 0 or 1\n    local message = string.format(\"%d:H:%s:%d:%s:%d:%d\", self.protocolVersion, GUID, specID, talents, isInitial, self.spellsVersion)\n    sendMessage(message)\n    \n    self.timeOfLastHandshake = time\n    self.queuedHandshake = false\n    self.hasSentHandshake = true\nend\n\nfunction ZT:sendCDUpdate(watchInfo, ignoreRateLimit, wasQueued)\n    local spellID = watchInfo.spellInfo.spellID\n    local time = GetTime()\n    local remaining = watchInfo.expiration - time\n    if remaining < 0 then\n        remaining = 0\n    end\n    \n    if not ignoreRateLimit then\n        local isQueued = self.queuedCDUpdates[spellID]\n        if wasQueued then\n            if not isQueued then\n                return -- Ignore since an update occured while this update was queued\n            end\n        else\n            if isQueued then\n                return -- Ignore since an update is already queued\n            else\n                local timeOfLastCDUpdate = self.timeOfLastCDUpdate[spellID]\n                if timeOfLastCDUpdate then\n                    local timeSinceLastCDUpdate = (time - self.timeOfLastCDUpdate[spellID])\n                    if timeSinceLastCDUpdate < self.timeBetweenCDUpdates then\n                        self.queuedCDUpdates[spellID] = true\n                        C_Timer.After(self.timeBetweenCDUpdates - timeSinceLastCDUpdate, function() self:sendCDUpdate(watchInfo, false, true) end)\n                        return -- Ignore since an update has now been queued\n                    end\n                end\n            end\n        end\n    end\n    \n    local GUID = watchInfo.member.GUID\n    local duration = watchInfo.duration\n    local message = string.format(\"%d:U:%s:%d:%0.2f:%0.2f\", self.protocolVersion, GUID, spellID, duration, remaining)\n    sendMessage(message)\n    \n    self.timeOfLastCDUpdate[spellID] = time\n    self.queuedCDUpdates[spellID] = false\nend\n\nfunction ZT:handleHandshake(mGUID, specID, talents, isInitial, spellsVersion)\n    specID = tonumber(specID)\n    if specID == 0 then\n        specID = nil\n    end\n    \n    local talentsMap = {}\n    if talents ~= \"\" then\n        for index in talents:gmatch(\"%d%d\") do\n            index = tonumber(index)\n            talentsMap[index] = true\n        end\n    else\n        talents = nil\n    end\n\n    -- Protocol V2: Assume false if not present\n    if isInitial == \"1\" then\n        isInitial = true\n    else\n        isInitial = false\n    end\n\n    -- Protocol V2: Assume spellsVersion is 1 if not present\n    if spellsVersion then\n        spellsVersion = tonumber(spellsVersion)\n        if not spellsVersion then\n            spellsVersion = 1\n        end\n    else\n        spellsVersion = 1\n    end\n    \n    local memberInfo = {\n        GUID = mGUID,\n        specInfo = {\n            specID = specID,\n            talents = talents,\n            talentsMap = talentsMap,\n        },\n        tracking = \"Sharing\",\n        spellsVersion = spellsVersion,\n    }\n    \n    self:addOrUpdateMember(memberInfo)\n    if isInitial then\n        self:sendHandshake()\n    end\nend\n\nfunction ZT:handleCDUpdate(mGUID, spellID, duration, remaining)\n    local member = self.members[mGUID]\n    if not member or not member.isReady then\n        return\n    end\n    \n    spellID = tonumber(spellID)\n    duration = tonumber(duration)\n    remaining = tonumber(remaining)\n    if not spellID or not duration or not remaining then\n        return\n    end\n    \n    local sources = self.watching[spellID]\n    if sources then\n        local watchInfo = sources[member.GUID]\n        if not watchInfo then\n            return\n        end\n        \n        watchInfo.duration = duration\n        watchInfo:updateRemaining(remaining)\n    end\nend\n\nfunction ZT:handleMessage(message)\n    local protocolVersion, type, mGUID, arg1, arg2, arg3, arg4, arg5 = strsplit(\":\", message)\n    protocolVersion = tonumber(protocolVersion)\n    \n    -- Ignore any messages sent by the player\n    if mGUID == UnitGUID(\"player\") then\n        return\n    end\n    \n    if ZT.DEBUG_MESSAGES then\n        print(\"[ZT] Received Message '\"..message..\"'\")\n    end\n    \n    if type == \"H\" then     -- Handshake\n        self:handleHandshake(mGUID, arg1, arg2, arg3, arg4, arg5)\n    elseif type == \"U\" then -- CD Update\n        self:handleCDUpdate(mGUID, arg1, arg2, arg3, arg4, arg5)\n    else\n        return\n    end\nend\n\nif not C_ChatInfo.RegisterAddonMessagePrefix(\"ZenTracker\") then\n    print(\"[ZT] Error: Could not register addon message prefix. Defaulting to local-only cooldown tracking.\")\nend\n\n-- Callback functions for libGroupInspecT for updating/removing members\nfunction ZT:libInspectUpdate(event, GUID, unit, info)\n    local specID = info.global_spec_id\n    if specID == 0 then\n        specID = nil\n    end\n    \n    local talents = nil\n    local talentsMap = {}\n    if info.talents then\n        for _,talentInfo in pairs(info.talents) do\n            local index = (talentInfo.tier * 10) + talentInfo.column\n            if not talents then\n                talents = \"\"..index\n            else\n                talents = talents..\",\"..index\n            end\n            \n            talentsMap[index] = true\n        end\n    end\n    \n    local memberInfo = {\n        GUID = GUID,\n        specInfo = {\n            specID = specID,\n            talents = talents,\n            talentsMap = talentsMap,\n        },\n    }\n    \n    self:addOrUpdateMember(memberInfo)\nend\n\nfunction ZT:libInspectRemove(event, GUID)\n    local member = self.members[GUID]\n    if not member then\n        return\n    end\n    \n    for _,watchInfo in pairs(member.watching) do\n        self:unwatch(watchInfo.spellInfo, member)\n    end\n    self.members[GUID] = nil\nend\n\nZT.inspectLib = LibStub:GetLibrary(\"LibGroupInSpecT-1.1\",true)\n\nif ZT.inspectLib then\n    WeakAurasSaved[\"ZenTracker_AuraEnv\"] = nil -- Flushing out past garbage :)\n    \n    if _G[\"ZenTracker_AuraEnv\"] then\n        ZT.inspectLib.UnregisterAllCallbacks(_G[\"ZenTracker_AuraEnv\"])\n    end\n    _G[\"ZenTracker_AuraEnv\"] = ZT\n    \n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Update\", \"libInspectUpdate\")\n    ZT.inspectLib.RegisterCallback(ZT, \"GroupInSpecT_Remove\", \"libInspectRemove\")\n    for unit in WA_IterateGroupMembers() do\n        local GUID = UnitGUID(unit)\n        if GUID then\n            local info = ZT.inspectLib:GetCachedInfo(GUID)\n            if info then\n                ZT:libInspectUpdate(\"Init\", GUID, unit, info)\n            else\n                ZT.inspectLib:Rescan(GUID)\n            end\n        end\n    end\nelse\n    print(\"[ZT] Error: LibGroupInSpecT-1.1 not found\")\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["custom_type"] = "event",
						["custom"] = "function(event,...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local _, eventType, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID = ...\n        aura_env:handleEvent(eventType, spellID, sourceGUID)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["spellIds"] = {
						},
						["names"] = {
						},
						["event"] = "Health",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["events"] = "SPELL_COOLDOWN_STARTED, SPELL_COOLDOWN_CHANGED, SPELL_COOLDOWN_READY",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["custom"] = "function (event, id)\n    aura_env:handleEvent(event, id, 0)\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["events"] = "ENCOUNTER_START,ENCOUNTER_END, CHALLENGE_MODE_START,CHALLENGE_MODE_COMPLETED,PLAYER_ENTERING_WORLD",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(event)\n    if event == \"ENCOUNTER_START\" or event == \"ENCOUNTER_END\" then\n        local _,instanceType = IsInInstance()\n        if instanceType ~= \"raid\" then\n            return\n        end\n    end\n    \n    if event == \"ENCOUNTER_START\" or event == \"CHALLENGE_MODE_START\" then\n        aura_env:startEncounter(event)\n    elseif event == \"ENCOUNTER_END\" or event == \"CHALLENGE_MODE_COMPLETED\" or event == \"PLAYER_ENTERING_WORLD\" then\n        aura_env:endEncounter(event)\n    end\nend",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["events"] = "ZT_REGISTER",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["custom"] = "function (event, type, frontendID)\n    aura_env:registerFrontEnd(type, frontendID)\nend",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function (event, type, frontendID)\n    aura_env:unregisterFrontEnd(type, frontendID)\nend",
						["custom_type"] = "event",
						["use_unit"] = true,
						["events"] = "ZT_UNREGISTER",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["events"] = "CHAT_MSG_ADDON",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function(event,prefix,message,type,sender)\n    if prefix == \"ZenTracker\" then\n        aura_env:handleMessage(message)\n    end\nend",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["events"] = "GROUP_JOINED",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["custom"] = "function()\n    aura_env:sendHandshake()\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [7]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "ZenTracker (ZT) Main",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 6.9999642372131,
			["font"] = "Friz Quadrata TT",
			["config"] = {
				["spell280711"] = false,
				["spellArcaneTorrent"] = false,
				["spell1766"] = false,
				["spell73325"] = false,
				["spell64044"] = false,
				["myUTILITY"] = true,
				["spell191427"] = false,
				["spell183752"] = false,
				["spell107570"] = false,
				["spell86659"] = false,
				["spell740"] = false,
				["spell196555"] = false,
				["spell64843"] = false,
				["spell265187"] = false,
				["spell48707"] = false,
				["spell106839"] = false,
				["spell109248"] = false,
				["spell31661"] = false,
				["spell79140"] = false,
				["spell235219"] = false,
				["spell57994"] = false,
				["spell55342"] = false,
				["spell193526"] = false,
				["spell271466"] = false,
				["myDAMAGE"] = true,
				["spell1719"] = false,
				["spell206491"] = false,
				["myIMMUNITY"] = true,
				["spell217832"] = false,
				["custom5"] = "",
				["spellEvasion/Riposte"] = false,
				["spell198838"] = false,
				["mySTSOFTCC"] = true,
				["spell267217"] = false,
				["spell216331"] = false,
				["spell105809"] = false,
				["spell194223"] = false,
				["spell207289"] = false,
				["spell200183"] = false,
				["spell118038"] = false,
				["spell30283"] = false,
				["spell853"] = false,
				["spell179057"] = false,
				["spell47788"] = false,
				["spell116705"] = false,
				["spell186265"] = false,
				["spell98008"] = false,
				["spell46968"] = false,
				["spell255654"] = false,
				["spell102359"] = false,
				["spell192058"] = false,
				["myDEFMDISPEL"] = true,
				["spell207684"] = false,
				["spell5211"] = false,
				["spell114051"] = false,
				["spell47585"] = false,
				["spell12975"] = false,
				["spell633"] = false,
				["spell137639"] = false,
				["spell49576"] = false,
				["spell211881"] = false,
				["spell31821"] = false,
				["spell116844"] = false,
				["spell1022"] = false,
				["spell642"] = false,
				["spell45438"] = false,
				["spell19236"] = false,
				["spell202138"] = false,
				["spell1122"] = false,
				["spell6940"] = false,
				["spell102560"] = false,
				["spell13750"] = false,
				["custom4"] = "",
				["myPERSONAL"] = true,
				["spell97462"] = false,
				["spell42650"] = false,
				["spell152279"] = false,
				["spell15286"] = false,
				["spell266779"] = false,
				["spell194679"] = false,
				["spell207399"] = false,
				["spell31884"] = false,
				["spell19574"] = false,
				["mySTHARDCC"] = true,
				["spell55233"] = false,
				["spell102342"] = false,
				["spell198103"] = false,
				["spell184662"] = false,
				["spell115176"] = false,
				["custom1"] = "",
				["spell279302"] = false,
				["spell201430"] = false,
				["spell12042"] = false,
				["spell204263"] = false,
				["spell210191"] = false,
				["spell108271"] = false,
				["spell196718"] = false,
				["spell62618"] = false,
				["spell236748"] = false,
				["spell109304"] = false,
				["spell116849"] = false,
				["spell1160"] = false,
				["spell187650"] = false,
				["spell187827"] = false,
				["myINTERRUPT"] = true,
				["spell243435"] = false,
				["myHEALING"] = true,
				["spell115080"] = false,
				["spell119381"] = false,
				["spell88625"] = false,
				["spell91802"] = false,
				["spell51690"] = false,
				["spell6789"] = false,
				["spell190319"] = false,
				["spell115450"] = false,
				["spell104773"] = false,
				["spell2094"] = false,
				["custom9"] = "",
				["spell77130"] = false,
				["spell48792"] = false,
				["spell205180"] = false,
				["spell114052"] = false,
				["spell2139"] = false,
				["spell114050"] = false,
				["myTANK"] = true,
				["spellAsphyxiate"] = false,
				["spell4987"] = false,
				["spell498"] = false,
				["spell19647"] = false,
				["spell6552"] = false,
				["spell96231"] = false,
				["spell33206"] = false,
				["spell12472"] = false,
				["custom7"] = "",
				["spell99"] = false,
				["spell8122"] = false,
				["spell114018"] = false,
				["spell193223"] = false,
				["spell64901"] = false,
				["spell191837"] = false,
				["myDISPEL"] = true,
				["custom10"] = "",
				["myHARDCC"] = true,
				["spell198589"] = false,
				["myEXTERNAL"] = true,
				["spell265202"] = false,
				["spell192077"] = false,
				["spell194844"] = false,
				["spell46924"] = false,
				["spell107574"] = false,
				["spell152173"] = false,
				["spell115310"] = false,
				["spell102543"] = false,
				["spell202137"] = false,
				["spell113858"] = false,
				["mySOFTCC"] = true,
				["spell227847"] = false,
				["spell205191"] = false,
				["spell113860"] = false,
				["spell184364"] = false,
				["custom3"] = "",
				["spell61336"] = false,
				["spell187707"] = false,
				["spell205636"] = false,
				["spell47528"] = false,
				["spell527"] = false,
				["spell106898"] = false,
				["spell31850"] = false,
				["spell51490"] = false,
				["spell78675"] = false,
				["spell49206"] = false,
				["spell204021"] = false,
				["spell132469"] = false,
				["spell88423"] = false,
				["spell115203"] = false,
				["spell204018"] = false,
				["spell29166"] = false,
				["spell31224"] = false,
				["spell207167"] = false,
				["custom2"] = "",
				["spell147362"] = false,
				["spell48743"] = false,
				["spell22812"] = false,
				["spell121471"] = false,
				["spell115078"] = false,
				["spell122470"] = false,
				["spell123904"] = false,
				["spell122278"] = false,
				["spell15487"] = false,
				["spell49028"] = false,
				["spell122783"] = false,
				["spell102793"] = false,
				["spell231895"] = false,
				["spell20549"] = false,
				["spellConfigType"] = 1,
				["spell246287"] = false,
				["custom8"] = "",
				["spell19577"] = false,
				["spell108199"] = false,
				["spell47536"] = false,
				["spell193530"] = false,
				["spell108280"] = false,
				["spell871"] = false,
				["spell258925"] = false,
				["custom6"] = "",
				["spell32375"] = false,
			},
			["uid"] = "ejYTBRnd5n5",
			["selfPoint"] = "BOTTOM",
			["height"] = 12.000001907349,
			["fixedWidth"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["single"] = "arena",
					["multi"] = {
						["party"] = true,
						["arena"] = true,
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Uldir - Mythrax - Xalzaix's Awakening - rangecheck"] = {
			["outline"] = "OUTLINE",
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["parent"] = "奥迪尔分散技能",
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 273810,
						["use_absorbMode"] = true,
						["unit"] = "boss1",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["event"] = "Cast",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_spellId"] = true,
						["name"] = "夏尔扎克斯的觉醒",
						["use_specific_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["duration"] = "1",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["genericShowOn"] = "showOnActive",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 5, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["xOffset"] = 0,
			["wordWrap"] = "WordWrap",
			["crop_x"] = 0.41,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["desaturateForeground"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 160,
			["rotate"] = false,
			["crop_y"] = 0.41,
			["selfPoint"] = "CENTER",
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["config"] = {
			},
			["stickyDuration"] = false,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["rotation"] = 0,
			["blendMode"] = "BLEND",
			["startAngle"] = 0,
			["width"] = 160,
			["slantMode"] = "INSIDE",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2135",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["frameStrata"] = 1,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Mythrax - Xalzaix's Awakening - rangecheck",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fontSize"] = 72,
			["uid"] = "xgL5OWFi7EW",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["backgroundOffset"] = 2,
		},
		["目标指示器 "] = {
			["glow"] = false,
			["text1FontSize"] = 15,
			["cooldownTextEnabled"] = true,
			["displayText"] = "%c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/rJWQDzuZX/1",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["text1Containment"] = "OUTSIDE",
			["rotation"] = 315,
			["font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 24,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\targeting-mark.tga",
			["zoom"] = 0,
			["auto"] = true,
			["text2Enabled"] = false,
			["uid"] = "mnXedKK1E0g",
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["parent"] = "当前目标指示",
			["customText"] = "function()\n    if not UnitExists(\"target\") then return \"\" end\n    \n    local minDistance, maxDistance = WeakAuras.GetRange(\"target\")\n    if not minDistance then minDistance = 0 end\n    if not maxDistance then maxDistance = 200 end\n    \n    local color = (minDistance >= 40) and \"ff6666\" or \"ffffff\"\n    return string.format(\"|cff%s%d~%s|r\", color, minDistance, maxDistance)\nend",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["custom_type"] = "status",
						["genericShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function()\n    local region = aura_env.region\n    local plate = C_NamePlate.GetNamePlateForUnit(\"target\")\n    if plate then\n        region:ClearAllPoints()\n        region:SetPoint(\"CENTER\", plate, \"CENTER\", 115, -3)\n        region:Show()\n    else\n        region:Hide()\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scalex"] = 1.3,
					["colorB"] = 0.0588235294117647,
					["colorG"] = 1,
					["type"] = "custom",
					["colorA"] = 1,
					["scaleType"] = "pulse",
					["preset"] = "pulse",
					["scaley"] = 1.3,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "pulseHSV",
					["use_scale"] = true,
					["use_color"] = true,
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["colorR"] = 0,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 270,
			["height"] = 45,
			["rotate"] = false,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "聊天",
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "Interface\\ICONS\\NeonRedArrowH.tga",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.0196078431372549, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["text1"] = "%c",
			["text2"] = "%p",
			["text2Font"] = "Friz Quadrata TT",
			["text1Point"] = "RIGHT",
			["justify"] = "LEFT",
			["width"] = 75,
			["id"] = "目标指示器 ",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.displayMinimalDistanceOnly = false\naura_env.nextDistance = {\n    [0] = 1,\n    [1] = 2,\n    [2] = 3,\n    [3] = 4,\n    [4] = 5,\n    [5] = 7,\n    [7] = 8,\n    [8] = 10,\n    [10] = 15,\n    [15] = 20,\n    [20] = 25,\n    [25] = 28,\n    [28] = 30,\n    [30] = 35,\n    [35] = 38,\n    [38] = 40,\n    [40] = 45,\n    [45] = 50,\n    [50] = 55,\n    [55] = 60,\n    [60] = 70,\n    [70] = 80,\n    [80] = 90,\n    [90] = 100,\n    [100] = 150,\n    [150] = \"more\",\n}\n\n\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["text2Point"] = "CENTER",
			["conditions"] = {
			},
			["xOffset"] = 0,
			["desaturate"] = false,
		},
		["奥迪尔分散技能"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Uldir - Taloc - Hardened Arteries - rangecheck", -- [1]
				"Uldir - Mother - Endemic Virus - rangecheck", -- [2]
				"Uldir - Zek'voz - Beam - rangecheck", -- [3]
				"Uldir - Zek'voz - Corruptor's Pact - rangecheck", -- [4]
				"Uldir - Vectis - Lingering Infection - rangecheck", -- [5]
				"Uldir - Fetid Devourer - Miasma - rangecheck", -- [6]
				"Uldir - Fetid Devourer - Miasma < 5 - rangecheck", -- [7]
				"Uldir - Fetid Devourer - Putrid Paroxysm - rangecheck", -- [8]
				"Uldir - Mythrax - Sphere - rangecheck", -- [9]
				"Uldir - Mythrax - Xalzaix's Awakening - rangecheck", -- [10]
				"Uldir - Ghunn - Wave of Corruption - rangecheck", -- [11]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["authorOptions"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["expanded"] = false,
			["internalVersion"] = 9,
			["scale"] = 0.8,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "奥迪尔分散技能",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderOffset"] = 5,
			["config"] = {
			},
			["uid"] = "Wot14bylfMr",
			["borderInset"] = 11,
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 20,
		},
		["目标距离"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 15,
			["cooldownTextEnabled"] = true,
			["displayText"] = "%c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/rJWQDzuZX/1",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.displayMinimalDistanceOnly = false\naura_env.nextDistance = {\n    [0] = 1,\n    [1] = 2,\n    [2] = 3,\n    [3] = 4,\n    [4] = 5,\n    [5] = 7,\n    [7] = 8,\n    [8] = 10,\n    [10] = 15,\n    [15] = 20,\n    [20] = 25,\n    [25] = 28,\n    [28] = 30,\n    [30] = 35,\n    [35] = 38,\n    [38] = 40,\n    [40] = 45,\n    [45] = 50,\n    [50] = 55,\n    [55] = 60,\n    [60] = 70,\n    [70] = 80,\n    [80] = 90,\n    [90] = 100,\n    [100] = 150,\n    [150] = \"more\",\n}\n\n\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "OUTSIDE",
			["rotation"] = 315,
			["font"] = "默认",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 24,
			["texture"] = "Interface\\ICONS\\NeonRedArrow.tga",
			["zoom"] = 0,
			["auto"] = true,
			["text2Enabled"] = false,
			["uid"] = "QaChREEc9UE",
			["displayIcon"] = "Interface\\ICONS\\NeonRedArrowH.tga",
			["outline"] = "OUTLINE",
			["parent"] = "当前目标指示",
			["customText"] = "function()\n    if not UnitExists(\"target\") then return \"\" end\n    \n    local minDistance, maxDistance = WeakAuras.GetRange(\"target\")\n    if not minDistance then minDistance = 0 end\n    if not maxDistance then maxDistance = 200 end\n    \n    local color = (minDistance >= 40) and \"ff6666\" or \"ffffff\"\n    return string.format(\"|cff%s%d-%s|r\", color, minDistance, maxDistance)\nend",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["custom_type"] = "status",
						["genericShowOn"] = "showOnActive",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function()\n    local region = aura_env.region\n    local plate = C_NamePlate.GetNamePlateForUnit(\"target\")\n    if plate then\n        region:ClearAllPoints()\n        region:SetPoint(\"CENTER\", plate, \"CENTER\", 110, 20)\n        region:Show()\n    else\n        region:Hide()\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 0.501960784313726,
					["scalex"] = 1.3,
					["colorB"] = 0,
					["colorG"] = 1,
					["scaleType"] = "pulse",
					["colorA"] = 1,
					["use_scale"] = true,
					["use_color"] = true,
					["preset"] = "pulse",
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "pulseHSV",
					["scaley"] = 1.3,
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 270,
			["height"] = 30,
			["rotate"] = false,
			["fontSize"] = 15,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["alpha"] = 1,
			["fixedWidth"] = 200,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["text1"] = "%c",
			["anchorFrameParent"] = true,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.0196078431372549, -- [3]
				1, -- [4]
			},
			["width"] = 45,
			["justify"] = "LEFT",
			["desaturate"] = false,
			["id"] = "目标距离",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["text1Font"] = "聊天",
			["icon"] = true,
			["inverse"] = false,
			["text1Point"] = "RIGHT",
			["conditions"] = {
			},
			["glow"] = false,
			["xOffset"] = 0,
		},
		["Anchors WA to Spawn of G'huun nameplate if it targets you"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["customText"] = "function()\n    if aura_env.state and aura_env.state.PassUnit then\n        local region = aura_env.region\n        local plate = C_NamePlate.GetNamePlateForUnit(aura_env.state.PassUnit)\n        if plate then\n            region:ClearAllPoints()\n            region:SetPoint(\"BOTTOM\", plate, \"TOP\", 0, 0)\n            region:Show()\n        else\n            region:Hide()\n        end\n    end\nend",
			["yOffset"] = 234.44,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/ry84Im3u7/18",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.guids  = {\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, NAME_PLATE_UNIT_REMOVED, NAME_PLATE_UNIT_ADDED",
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["custom"] = "function(allstates, event, unit, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_AURA_APPLIED\" and spellID == 268074 and destName == WeakAuras.me then\n            aura_env.guids[sourceGUID] = true\n            for i=1,255 do\n                local u = \"nameplate\"..i\n                if UnitExists(u) then\n                    if UnitGUID(u) == sourceGUID then\n                        allstates[sourceGUID] = { \n                            show = true,\n                            changed = true,\n                            PassUnit = u,\n                            progressType = \"static\",\n                        }\n                    end\n                end\n            end\n        end\n        if subEvent == \"SPELL_AURA_REMOVED\" and spellID == 268074 and destName == WeakAuras.me then\n            if allstates[sourceGUID] then\n                allstates[sourceGUID].show = false\n                allstates[sourceGUID].changed = true\n            end\n            if aura_env.guids[sourceGUID] then\n                aura_env.guids[sourceGUID] = nil\n            end\n        end\n    end\n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        if unit then \n            if allstates[UnitGUID(unit)] then\n                allstates[UnitGUID(unit)].changed = true\n                allstates[UnitGUID(unit)].PassUnit = \"none\"\n            end\n        end    \n    end\n    if event == \"NAME_PLATE_UNIT_ADDED\" then\n        if unit and unit ~= \"target\" then \n            if aura_env.guids[UnitGUID(unit)] then\n                allstates[UnitGUID(unit)] = { \n                    show = true,\n                    changed = true,\n                    PassUnit = unit,\n                    progressType = \"static\",\n                }\n            end\n        end\n    end\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["useglowColor"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 50,
			["displayIcon"] = 841382,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["use_zoneId"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["encounterid"] = "2122",
				["use_encounterid"] = true,
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["authorOptions"] = {
			},
			["text2FontSize"] = 24,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%c",
			["xOffset"] = 186.667114257813,
			["zoom"] = 0,
			["text2"] = "%p",
			["auto"] = false,
			["cooldownEdge"] = false,
			["id"] = "Anchors WA to Spawn of G'huun nameplate if it targets you",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 50.0001449584961,
			["desaturate"] = false,
			["uid"] = "m6VBb9yLSXS",
			["inverse"] = false,
			["internalVersion"] = 9,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = true,
		},
		["Uldir - Vectis - Lingering Infection - rangecheck"] = {
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "267242",
						["unevent"] = "timed",
						["duration"] = "3",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["name"] = "传染病毒",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["useCount"] = true,
						["count"] = "5",
						["spellIds"] = {
							265127, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["countOperator"] = ">=",
						["names"] = {
							"持续感染", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["event"] = "Health",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1]\n    and WeakAuras.triggerState[aura_env.id].triggers[2]\n    then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 8, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["user_y"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["crop_x"] = 0.41,
			["sameTexture"] = true,
			["height"] = 160,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2134",
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["config"] = {
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["desaturateForeground"] = false,
			["crop_y"] = 0.41,
			["slantMode"] = "INSIDE",
			["startAngle"] = 0,
			["fontSize"] = 72,
			["selfPoint"] = "CENTER",
			["parent"] = "奥迪尔分散技能",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Vectis - Lingering Infection - rangecheck",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 160,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["uid"] = "3yEFj6EGSvk",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["wordWrap"] = "WordWrap",
			["backgroundOffset"] = 2,
		},
		["G'huun - Wave - DBM"] = {
			["text2Point"] = "BOTTOM",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 234.777984619141,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/S1O1gF-uQ/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "270373",
						["remaining_operator"] = "<=",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "5",
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_id"] = false,
						["subeventSuffix"] = "_CAST_START",
						["id"] = "",
						["use_absorbMode"] = true,
						["event"] = "DBM Timer",
						["use_remaining"] = true,
						["name"] = "腐化之潮",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "TOP",
			["text1Enabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 50,
			["useglowColor"] = false,
			["load"] = {
				["use_encounterid"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["width"] = 50,
			["text2Enabled"] = true,
			["text2FontSize"] = 15,
			["text1FontFlags"] = "OUTLINE",
			["text1"] = "WAVE",
			["glow"] = false,
			["text2"] = "SPREAD 5y",
			["zoom"] = 0,
			["auto"] = false,
			["desaturate"] = false,
			["id"] = "G'huun - Wave - DBM",
			["text2Font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "5ExlYUpGd9A",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 1396973,
			["cooldownTextEnabled"] = true,
			["xOffset"] = 127.555969238281,
		},
		["Uldir - Ghunn - Wave of Corruption - rangecheck"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = 5,
			["yOffset"] = -40,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2122",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["compress"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["parent"] = "奥迪尔分散技能",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "270373",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["use_unit"] = true,
						["remaining"] = "5",
						["genericShowOn"] = "showOnActive",
						["duration"] = "3",
						["use_cloneId"] = false,
						["spellIds"] = {
						},
						["text_operator"] = "find('%s')",
						["debuffType"] = "HELPFUL",
						["use_alwaystrue"] = true,
						["use_remaining"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "BigWigs Timer",
						["text"] = "Wave of Corruption",
						["use_text"] = false,
						["subeventSuffix"] = "_CAST_START",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "腐化之潮",
						["remaining_operator"] = "<",
						["use_message"] = true,
						["unit"] = "player",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_remaining"] = true,
						["spellId"] = "270373",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "DBM Timer",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "5",
						["use_spellId"] = true,
						["name"] = "腐化之潮",
						["use_unit"] = true,
						["remaining_operator"] = "<",
						["unevent"] = "auto",
						["type"] = "status",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1]\n    or WeakAuras.triggerState[aura_env.id].triggers[2]\n    then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 5, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] or t[2])\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["height"] = 160,
			["rotate"] = false,
			["useAdjustededMax"] = true,
			["fontSize"] = 72,
			["mirror"] = false,
			["uid"] = "ACQJNHwk)yQ",
			["xOffset"] = 0,
			["displayText"] = "%c Penis",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["id"] = "Uldir - Ghunn - Wave of Corruption - rangecheck",
			["crop_y"] = 0.41,
			["frameStrata"] = 1,
			["width"] = 160,
			["selfPoint"] = "CENTER",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["inverse"] = false,
			["anchorFrameType"] = "SCREEN",
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["cooldown"] = true,
			["startAngle"] = 0,
		},
		["Uldir - Mother - Endemic Virus - rangecheck"] = {
			["user_y"] = 0,
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["parent"] = "奥迪尔分散技能",
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/HyyjHN4K7/8",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "270373",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"风土病毒", -- [1]
						},
						["duration"] = "3",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["remaining_operator"] = "<",
						["remaining"] = "5",
						["use_unit"] = true,
						["use_alwaystrue"] = true,
						["spellIds"] = {
							279662, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["use_cloneId"] = false,
						["buffShowOn"] = "showOnActive",
						["text_operator"] = "find('%s')",
						["use_remaining"] = true,
						["type"] = "aura",
						["unevent"] = "auto",
						["use_text"] = false,
						["text"] = "Wave of Corruption",
						["event"] = "BigWigs Timer",
						["subeventSuffix"] = "_CAST_START",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "腐化之潮",
						["use_absorbMode"] = true,
						["use_message"] = true,
						["message_operator"] = "find('%s')",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 8, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["crop_x"] = 0.41,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 160,
			["rotate"] = false,
			["load"] = {
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2141",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["translateType"] = "circle",
					["use_rotate"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = false,
					["use_alpha"] = false,
					["scalex"] = 0,
					["type"] = "none",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotate"] = 360,
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["config"] = {
			},
			["stickyDuration"] = false,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["discrete_rotation"] = 0,
			["blendMode"] = "BLEND",
			["startAngle"] = 0,
			["width"] = 160,
			["slantMode"] = "INSIDE",
			["crop_y"] = 0.41,
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["alpha"] = 1,
			["textureWrapMode"] = "CLAMP",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Uldir - Mother - Endemic Virus - rangecheck",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fontSize"] = 72,
			["uid"] = "O4lCwapKZSr",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["backgroundOffset"] = 2,
		},
	},
	["minimap"] = {
		["minimapPos"] = -73735,
		["hide"] = false,
	},
	["personalRessourceDisplayFrame"] = {
	},
	["registered"] = {
	},
	["login_squelch_time"] = 10,
	["frame"] = {
		["xOffset"] = -316.22021484375,
		["yOffset"] = -226.610900878906,
		["height"] = 665.000122070313,
		["width"] = 750,
	},
	["editor_theme"] = "Monokai",
}
