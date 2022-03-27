
PlaterDB = {
["profiles"]={
["Default"]={
["script_auto_imported"]={
["Unit - Show Energy"]=11,
["Cast - Frontal Cone"]=11,
["Fixate On You"]=11,
["Cast - Castbar is Timer [P]"]=2,
["Cast - Big Alert"]=12,
["Cast - Small Alert"]=11,
["Auto Set Skull"]=11,
["Cast - Important Target [P]"]=1,
["Unit - Health Markers"]=12,
["Cast - Tank Interrupt"]=12,
["Spiteful Affix"]=3,
["Cast - Ultra Important"]=11,
["Aura - Debuff Alert"]=11,
["Unit - Main Target"]=11,
["Aura - Blink Time Left"]=12,
["Countdown"]=11,
["Cast - Very Important"]=12,
["Aura - Buff Alert"]=13,
["Cast - Alert + Timer [P]"]=1,
["Fixate"]=11,
["Explosion Affix M+"]=11,
["Unit - Important"]=11,
},
["aura_y_offset"]=5,
["aura2_x_offset"]=0,
["aura_x_offset"]=0,
["OptionsPanelDB"]={
["PlaterOptionsPanelFrame"]={
["scale"]=1,
},
},
["aura_timer"]=false,
["hook_auto_imported"]={
["Cast Bar Icon Config"]=2,
["Extra Border"]=2,
["Combo Points"]=6,
["Dont Have Aura"]=1,
["Color Automation"]=1,
["Hide Neutral Units"]=1,
["Execute Range"]=1,
["Target Color"]=3,
["Attacking Specific Unit"]=2,
["Reorder Nameplate"]=4,
["Players Targetting Amount"]=4,
["Aura Reorder"]=3,
},
["first_run3"]=true,
["hook_data"]={
[1]={
["Revision"]=50,
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    envTable.NpcColors = {\
        \
        --examples, using the unit name in lower case, regular unit name and the unitID:\
        \
        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\
        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\
        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\
        \
        --insert the new mobs here:\
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
    } --close custom color bracket\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --attempt to get the color from the unit color list\
    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\
    \
    --if the color exists, set the health bar color\
    if (color) then\
        Plater.SetNameplateColor (unitFrame, color)\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
",
},
["url"]="",
["HooksTemp"]={
},
["Name"]="Color Automation [Plater]",
["semver"]="",
["PlaterCore"]=1,
["Time"]=1547392935,
["version"]=-1,
["LoadConditions"]={
["class"]={
},
["group"]={
},
["map_ids"]={
},
["race"]={
},
["pvptalent"]={
},
["spec"]={
},
["affix"]={
},
["encounter_ids"]={
},
["talent"]={
},
["role"]={
},
},
["Icon"]="Interface\\AddOns\\Plater\\images\\color_bar",
["Enabled"]=false,
["LastHookEdited"]="",
["Author"]="Kastfall-Azralon",
["Desc"]="Easy way to change the color of an unit. Open the constructor script and follow the examples.",
},
[2]={
["Enabled"]=false,
["Hooks"]={
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat) then\
            envTable.HideNameplate (unitFrame)\
        end\
    end\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end\
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat and InCombatLockdown()) then\
            return\
        end\
        \
        envTable.HideNameplate (unitFrame)\
    end\
    \
end\
\
\
\
\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat and InCombatLockdown()) then\
            return\
        end\
        \
        --check the unit reaction\
        if (unitFrame.namePlateIsTarget) then\
            envTable.ShowNameplate (unitFrame)\
            \
        else\
            envTable.HideNameplate (unitFrame)\
            \
        end    \
    end\
    \
end\
\
\
\
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        envTable.ShowNameplate (unitFrame)\
    end\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --when plater finishes an update on the nameplate\
    --check within the envTable if the healthBar of this nameplate should be hidden\
    if (envTable.IsHidden) then\
        if (unitFrame.healthBar:IsShown()) then\
            envTable.HideNameplate (unitFrame)\
        end\
    end\
    \
end\
\
\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat) then\
            envTable.ShowNameplate (unitFrame)\
        end\
    end\
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.OnlyInOpenWorld = true;\
    envTable.ShowInCombat = true;\
    \
    --consts\
    envTable.REACTION_NEUTRAL = 4;\
    \
    --functions to hide and show the healthBar\
    function envTable.HideNameplate (unitFrame)\
        Plater.HideHealthBar (unitFrame)\
        Plater.DisableHighlight (unitFrame)\
        envTable.IsHidden = true\
    end\
    \
    function envTable.ShowNameplate (unitFrame)\
        Plater.ShowHealthBar (unitFrame)\
        Plater.EnableHighlight (unitFrame)\
        envTable.IsHidden = false\
    end\
    \
end\
\
\
\
\
",
},
["semver"]="",
["Name"]="Hide Neutral Units [Plater]",
["Desc"]="Hide neutral units, show when selected, see the constructor script for options.",
["Time"]=1541606242,
["HooksTemp"]={
},
["Author"]="Izimode-Azralon",
["PlaterCore"]=1,
["Icon"]=1990989,
["Revision"]=73,
["LastHookEdited"]="",
["version"]=-1,
["LoadConditions"]={
["class"]={
},
["role"]={
},
["affix"]={
},
["race"]={
},
["group"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["spec"]={
},
["encounter_ids"]={
},
["talent"]={
},
},
["url"]="",
},
[3]={
["Time"]=1596791840,
["LoadConditions"]={
["group"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
["spec"]={
},
["talent"]={
},
["class"]={
},
["map_ids"]={
},
["affix"]={
},
["encounter_ids"]={
},
},
["url"]="",
["Revision"]=93,
["Author"]="Kastfall-Azralon",
["Options"]={
},
["Desc"]="Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
["PlaterCore"]=1,
["Hooks"]={
["Nameplate Added"]="\
\
-- exported function Plater.UpdatePlateSize() from Plater.lua\
--this is for advanced users which wants to reorder the nameplate frame at their desire\
\
\
\
function (self, unitId, unitFrame, envTable)\
    \
    --check if there's a type of unit on this nameplate\
    local plateFrame = unitFrame:GetParent()\
    if (not plateFrame.actorType) then\
        return\
    end\
    \
    --get all the frames and cache some variables\
    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\
    local profile = Plater.db.profile\
    local DB_PLATE_CONFIG = profile.plate_config\
    local isInCombat = Plater.IsInCombat()\
    local actorType = plateFrame.actorType\
    \
    local unitFrame = plateFrame.unitFrame\
    local healthBar = unitFrame.healthBar\
    local castBar = unitFrame.castBar\
    local powerBar = unitFrame.powerBar\
    local buffFrame1 = unitFrame.BuffFrame\
    local buffFrame2 = unitFrame.BuffFrame2\
    \
    --use in combat bars when in pvp\
    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\
        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\
            isInCombat = true\
        end\
    end\
    \
    --get the config for this actor type\
    local plateConfigs = DB_PLATE_CONFIG [actorType]\
    --get the config key based if the player is in combat\
    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\
    \
    --get the width and height from what the user set in the options panel\
    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\
    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\
    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\
    \
    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\
    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\
    local castBarOffSetY = plateConfigs.castbar_offset\
    \
    --calculate offsets for the power bar\
    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\
    local powerBarOffSetY = 0\
    \
    --calculate the size deviation for pets\
    local unitType = Plater.GetUnitType (plateFrame)\
    if (unitType == \"pet\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\
        \
    elseif (unitType == \"minus\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\
    end\
    \
    --unit frame - is set to be the same size as the plateFrame\
    unitFrame:ClearAllPoints()\
    unitFrame:SetAllPoints()\
    \
    --calculates the health bar anchor points\
    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \
    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\
    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\
    \
    --set the health bar point\
    healthBar:ClearAllPoints()\
    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\
    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\
    \
    --set the cast bar point and size\
    castBar:ClearAllPoints()\
    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetHeight (castBar, castBarHeight)\
    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\
    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\
    \
    --set the power bar point and size\
    powerBar:ClearAllPoints()\
    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetHeight (powerBar, powerBarHeight)\
    \
    --power bar are hidden by default, show it if there's a custom size for it\
    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\
        powerBar:SetUnit (unitFrame.unit)\
    end\
    \
    --aura frames\
    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\
    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\
    \
    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\
    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\
    \
end\
\
\
",
},
["Icon"]=574574,
["semver"]="",
["LastHookEdited"]="",
["Name"]="Reorder Nameplate [Plater]",
["version"]=-1,
["Enabled"]=false,
["HooksTemp"]={
},
},
[4]={
["OptionsValues"]={
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --Important: lines starting with double dashes are comments and are not part of the script\
    \
    --set this to true if you are not using threat colors in the health bar\
    envTable.ForceRefreshNameplateColor = true\
    \
    --if the unit does not have any of the following auras, it will be painted with the color listed below\
    --list of spells to track, can be the spell name (case-sensitive) or the spellID\
    envTable.TrackingAuras = {\
        --[\"Nightblade\"] = true, --this is an example using the spell name\
        --[195452] = true, --this is an example using the spellID\
        \
    }\
    \
    --which color the nameplate wil be changed\
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    --you may also use /plater colors\
    envTable.NameplateColor = \"pink\"\
    \
end",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --do nothing if the player isn't in combat\
    if (not Plater.IsInCombat()) then\
        return \
    end\
    \
    --do nothing if the unit isn't in combat\
    if (not unitFrame.InCombat) then\
        return\
    end\
    \
    --do nothing if the unit is the player it self\
    if (unitFrame.IsSelf) then\
        return\
    end\
    \
    --check the auras\
    local hasAura = false\
    \
    for auraName, _ in pairs (envTable.TrackingAuras) do\
        if (Plater.NameplateHasAura (unitFrame, auraName)) then\
            hasAura = true\
            break\
        end\
    end\
    \
    if (not hasAura) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    else\
        if (envTable.ForceRefreshNameplateColor) then\
            Plater.RefreshNameplateColor (unitFrame) \
        end\
    end    \
    \
end",
},
["LoadConditions"]={
["spec"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["race"]={
},
["encounter_ids"]={
},
["talent"]={
},
["pvptalent"]={
},
["role"]={
},
["affix"]={
},
},
["Icon"]=136207,
["LastHookEdited"]="",
["Time"]=1627307023,
["Prio"]=99,
["Name"]="Don't Have Aura [Plater]",
["PlaterCore"]=1,
["Author"]="Izimode-Azralon",
["Desc"]="Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
["version"]=-1,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --do nothing if the player isn't in combat\
    if (not Plater.IsInCombat()) then\
        return \
    end\
    \
    --do nothing if the unit isn't in combat\
    if (not unitFrame.InCombat) then\
        return\
    end\
    \
    --do nothing if the unit is the player it self\
    if (unitFrame.IsSelf) then\
        return\
    end\
    \
    --check the auras\
    local hasAura = false\
    \
    for auraName, _ in pairs (envTable.TrackingAuras) do\
        if (Plater.NameplateHasAura (unitFrame, auraName)) then\
            hasAura = true\
            break\
        end\
    end\
    \
    if (not hasAura) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    else\
        if (envTable.ForceRefreshNameplateColor) then\
            Plater.RefreshNameplateColor (unitFrame) \
        end\
    end    \
    \
end",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --Important: lines starting with double dashes are comments and are not part of the script\
    \
    --set this to true if you are not using threat colors in the health bar\
    envTable.ForceRefreshNameplateColor = true\
    \
    --if the unit does not have any of the following auras, it will be painted with the color listed below\
    --list of spells to track, can be the spell name (case-sensitive) or the spellID\
    envTable.TrackingAuras = {\
        --[\"Nightblade\"] = true, --this is an example using the spell name\
        --[195452] = true, --this is an example using the spellID\
        \
    }\
    \
    --which color the nameplate wil be changed\
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    --you may also use /plater colors\
    envTable.NameplateColor = \"pink\"\
    \
end",
},
["semver"]="",
["url"]="",
["Enabled"]=false,
["Revision"]=60,
["Options"]={
},
},
[5]={
["LastHookEdited"]="",
["Desc"]="Show how many raid members are targeting the unit",
["version"]=-1,
["Icon"]=1966587,
["Enabled"]=false,
["Revision"]=182,
["Hooks"]={
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    envTable.CanShow = false;\
    envTable.TargetAmount:SetText (\"\")\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --when a nameplate is added to the screen check if the player is in combat\
    if (InCombatLockdown()) then\
        --player is in combat, check if can check amount of targets\
        envTable.CanShow = envTable.CanShowTargetAmount();\
        \
    else\
        envTable.CanShow = false; \
    end\
    \
    envTable.TargetAmount:SetText (\"\");\
    \
end",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.TargetAmount:SetText (\"\");\
    envTable.CanShow = false;\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --if the script is allowed to show the amount of targets\
    --also check if the unit is in combat\
    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\
        \
        --check if can update the amount of targets following the cooldown set in the constructor script\
        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\
        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\
        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\
            return\
        else\
            \
            --reset the cooldown interval to check the amount of target again\
            envTable.UpdateCooldown = 0\
            \
            --get the amount of targets\
            local amount;\
            if (envTable.InRaid) then\
                amount = envTable.NumTargetsInRaid (unitFrame)      \
                \
            elseif (envTable.InParty) then\
                amount = envTable.NumTargetsInParty (unitFrame)   \
                \
            else\
                envTable.TargetAmount:SetText (\"\")\
                return\
            end\
            \
            --update the amount text\
            if (amount == 0) then\
                envTable.TargetAmount:SetText (\"\")\
            else\
                envTable.TargetAmount:SetText (amount)\
            end\
            \
        end\
    end\
end\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can show the amount of targets\
    envTable.CanShow = envTable.CanShowTargetAmount();\
    \
    if (not envTable.CanShow) then\
        envTable.TargetAmount:SetText (\"\") \
    end\
end\
\
\
\
\
",
["Constructor"]="--all gray text like this are comments and do not run as code\
--build the settings and basic functions for the hook\
\
function (self, unitId, unitFrame, envTable)\
    \
    --declare setting variables:\
    local textColor = \"orange\";\
    local textSize = 12;\
    \
    local showInRaid = true;\
    local showInDungeon = true;\
    local showInArena = false;\
    local showInBattleground = false;\
    local showInOpenWorld = true;\
    \
    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\
    \
    local anchor = {\
        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\
        x = 4, --x offset\
        y = 0, --y offset\
    };\
    \
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------\
    \
    \
    --frames:\
    \
    --create the text that will show the amount of people targeting the unit\
    if (not  unitFrame.healthBar.TargetAmount) then\
        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\
        Plater.SetAnchor (envTable.TargetAmount, anchor);\
        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\
    end\
    \
    --in case Plater wipes the envTable\
    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------           \
    --private variables (they will be used in the other scripts within this hook)\
    envTable.CanShow = false;\
    envTable.UpdateCooldown = 0;\
    envTable.InRaid = false;\
    envTable.InParty = false;\
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------           \
    --functions\
    \
    --update the InRaid or InParty proprieties\
    function envTable.UpdateGroupType()\
        if (IsInRaid()) then\
            envTable.InRaid = true;\
            envTable.InParty = false;     \
            \
        elseif (IsInGroup()) then\
            envTable.InRaid = false;\
            envTable.InParty = true;   \
            \
        else\
            envTable.InRaid = false;            \
            envTable.InParty = false;\
        end\
    end\
    \
    --this function controls if the amount of targets can show following the settings in the top of this script\
    function envTable.CanShowTargetAmount()\
        \
        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\
        \
        if (showInRaid and instanceType == \"raid\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInDungeon and instanceType == \"party\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInArena and instanceType == \"arena\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInBattleground and instanceType == \"pvp\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInOpenWorld and instanceType == \"none\") then\
            envTable.UpdateGroupType()\
            if (envTable.InRaid or envTable.InParty) then\
                return true\
            end\
        end\
        \
        return false\
    end\
    \
    --get the amount of player targetting the unit in raid or party\
    function envTable.NumTargetsInRaid (unitFrame)\
        local amount = 0\
        for i = 1, GetNumGroupMembers() do\
            local unit = \"raid\" .. i .. \"target\"\
            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
                amount = amount + 1\
            end\
        end\
        \
        return amount\
    end\
    \
    function envTable.NumTargetsInParty()\
        local amount = 0\
        for i = 1, GetNumGroupMembers() - 1 do\
            local unit = \"party\" .. i .. \"target\"\
            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
                amount = amount + 1\
            end\
        end\
        \
        local unit = \"playertarget\"\
        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
            amount = amount + 1\
        end        \
        \
        return amount\
    end\
    \
end",
},
["PlaterCore"]=1,
["url"]="",
["semver"]="",
["Time"]=1548278227,
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["race"]={
},
["spec"]={
},
["role"]={
},
["class"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
},
["Author"]="Izimode-Azralon",
["Name"]="Players Targeting a Target [Plater]",
["HooksTemp"]={
},
},
[6]={
["Revision"]=176,
["Author"]="Tecno-Azralon",
["Desc"]="Add another border with more customizations. This border can also be manipulated by other scripts.",
["semver"]="",
["LastHookEdited"]="",
["url"]="",
["Icon"]=133689,
["HooksTemp"]={
},
["version"]=-1,
["PlaterCore"]=1,
["LoadConditions"]={
["talent"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
["affix"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["Enabled"]=false,
["Name"]="Extra Border [Plater]",
["Hooks"]={
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BorderFrame:Hide()\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --border color\
    local borderColor = \"yellow\"\
    \
    --size of the border\
    local borderSize = 1\
    \
    --transparency\
    local borderAlpha = 1\
    \
    --enabled (set to false it you only want to use the extra border in other scripts)\
    local isEnabled = true\
    \
    --export border (allow the border to be used by other scripts)\
    --other scripts can use:\
    --unitFrame.healthBar.extraBorder:Show()\
    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\
    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\
    local canExportBorder = true\
    \
    --do not add the border to personal bar\
    local noPersonalBar = true\
    \
    --private\
    do\
        \
        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\
        envTable.BorderFrame = newBorder\
        \
        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\
        newBorder:UpdateSizes()\
        \
        local r, g, b = DetailsFramework:ParseColors (borderColor)\
        newBorder:SetVertexColor (r, g, b, borderAlpha)\
        \
        envTable.ShowOnPersonalBar = not noPersonalBar\
        \
        if (canExportBorder) then\
            unitFrame.healthBar.extraBorder = newBorder\
        end\
        \
        if (not isEnabled) then\
            envTable.IsEnabled = false\
        else\
            envTable.IsEnabled = true\
        end\
    end\
    \
end\
\
\
",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.IsEnabled) then\
        if (unitFrame.IsSelf) then\
            if (envTable.ShowOnPersonalBar) then\
                envTable.BorderFrame:Show()\
            else\
                envTable.BorderFrame:Hide() \
            end\
        else\
            envTable.BorderFrame:Show()\
        end   \
    end\
    \
end   \
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BorderFrame:Hide()\
    \
end\
\
\
",
},
["Time"]=1547409079,
},
[7]={
["LastHookEdited"]="",
["Hooks"]={
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateColor (unitFrame)\
end\
\
\
\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\
    \
    envTable.TargetColor = \"purple\"\
    --envTable.TargetColor = \"#FF00FF\"\
    --envTable.TargetColor = {252/255, 0/255, 254/255}\
    \
    function envTable.UpdateColor (unitFrame)\
        --do not change the color of the personal bar\
        if (not unitFrame.IsSelf) then\
            \
            --if this nameplate the current target of the player?\
            if (unitFrame.namePlateIsTarget) then\
                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\
            else\
                --refresh the nameplate color\
                Plater.RefreshNameplateColor (unitFrame)\
            end\
        end\
    end\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateColor (unitFrame)\
end",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateColor (unitFrame)\
end",
},
["HooksTemp"]={
},
["Name"]="Current Target Color [Plater]",
["Desc"]="Changes the target color to the color set in the constructor script.",
["PlaterCore"]=1,
["url"]="",
["Icon"]=878211,
["semver"]="",
["Author"]="Izimode-Azralon",
["Time"]=1552354619,
["LoadConditions"]={
["talent"]={
},
["class"]={
},
["map_ids"]={
},
["race"]={
},
["pvptalent"]={
},
["affix"]={
},
["group"]={
},
["role"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["Enabled"]=false,
["Revision"]=93,
["version"]=-1,
},
[8]={
["Options"]={
},
["Author"]="Ditador-Azralon",
["Time"]=1608663128,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
["Enabled"]=false,
["semver"]="",
["Desc"]="Reorder buffs and debuffs following the settings set in the constructor.",
["Name"]="Aura Reorder [Plater]",
["LoadConditions"]={
["encounter_ids"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["race"]={
},
["role"]={
},
["pvptalent"]={
},
["spec"]={
},
["affix"]={
},
},
["PlaterCore"]=1,
["Revision"]=356,
["LastHookEdited"]="",
["HooksTemp"]={
},
["Hooks"]={
["Initialization"]="function (modTable)\
    \
    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\
    \
    local sortByTime = false\
    local invertSort = false\
    \
    --which auras goes first, assign a value (any number), bigger value goes first\
    local priority = {\
        [\"Vampiric Touch\"] = 50,\
        [\"Shadow Word: Pain\"] = 22,\
        [\"Mind Flay\"] = 5,\
        [\"Pistol Shot\"] = 50,\
        [\"Marked for Death\"] = 99,\
    }\
    \
    -- Sort function - do not touch\
    Plater.db.profile.aura_sort = true\
    \
    \
    function Plater.AuraIconsSortFunction (aura1, aura2)\
        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\
        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\
        \
        if sortByTime and p1 == p2 then\
            if invertSort then\
                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\
            else\
                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\
            end\
        else\
            if invertSort then\
                 return p1 < p2\
            else\
                return p1 > p2\
            end\
        end\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["version"]=-1,
["url"]="",
},
[9]={
["Revision"]=348,
["semver"]="",
["Author"]="Ditador-Azralon",
["Time"]=1597097268,
["PlaterCore"]=1,
["url"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\castbar_icon",
["Enabled"]=false,
["LastHookEdited"]="",
["HooksTemp"]={
},
["Name"]="Cast Bar Icon Settings [P]",
["Desc"]="Move the icon of the spell cast to the left or right side of the nameplate.",
["Hooks"]={
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\
    envTable.UpdateIconPosition (unitFrame)\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIconPosition (unitFrame)\
    self.ThrottleUpdate = -1\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable, modTable)\
    \
    --private:\
    function envTable.UpdateIconPosition (unitFrame)\
        local castBar = unitFrame.castBar\
        local icon = castBar.Icon\
        local noInterruptTexture = castBar.BorderShield\
        \
        if (modTable.config.showIcon) then\
            icon:ClearAllPoints()\
            \
            if (modTable.config.iconOnLeftSide) then\
                if (modTable.config.useFullSize) then\
                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                    \
                else\
                    \
                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                end\
                \
            else\
                if (modTable.config.useFullSize) then\
                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                    \
                else\
                    \
                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                end\
            end\
            \
            icon:SetWidth (icon:GetHeight())\
            icon:Show()\
        else\
            icon:Hide()\
        end\
        \
        if (modTable.config.showTexture and not castBar.canInterrupt) then\
            noInterruptTexture:Show()\
            \
            local texturePath = modTable.config.iconTexturePath\
            texturePath = texturePath:gsub(\"//\", \"/\")\
            texturePath = texturePath:gsub(\"\\\\\", \"/\")\
            \
            noInterruptTexture:SetTexture (texturePath)\
            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\
            \
            if (modTable.config.desaturatedTexture) then\
                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\
            else\
                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\
            end\
            \
            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\
            noInterruptTexture:ClearAllPoints()\
            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\
            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\
        else\
            noInterruptTexture:Hide()\
        end\
    end\
end",
},
["version"]=-1,
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["map_ids"]={
},
["race"]={
},
["affix"]={
},
["encounter_ids"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["spec"]={
},
},
["Options"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Icon Settings",
["Value"]="Icon Settings:",
["Key"]="option4",
},
[2]={
["Name"]="Show Icon",
["Value"]=true,
["Key"]="showIcon",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show the castbar icon when enabled",
["Type"]=4,
},
[3]={
["Type"]=4,
["Name"]="Icon on Left Side",
["Value"]=true,
["Key"]="iconOnLeftSide",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled it anchor the icon on the left side, right otherwise",
},
[4]={
["Type"]=4,
["Key"]="useFullSize",
["Value"]=false,
["Name"]="Use Big Icon",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled the icon has the size of the cast bar plus the healthbar",
},
[5]={
["Type"]=2,
["Max"]=5,
["Name"]="Icon Size Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Fine tune the icon size",
["Min"]=0,
["Fraction"]=true,
["Value"]=0,
["Key"]="iconSizeOffset",
},
[6]={
["Min"]=-5,
["Value"]=0,
["Key"]="iconPadding",
["Fraction"]=false,
["Type"]=2,
["Max"]=5,
["Desc"]="Space between the icon and the cast bar",
["Name"]="Icon Padding",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[7]={
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
},
[8]={
["Key"]="option5",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Interrupt Texture",
["Value"]="Can't Interrupt Texture:",
},
[9]={
["Value"]=true,
["Key"]="showTexture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled show a texture to tell the cast can't be interrupted",
["Type"]=4,
["Name"]="Show Texture",
},
[10]={
["Key"]="iconTexturePath",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_text",
["Desc"]="Insert the path for the texture",
["Type"]=3,
["Name"]="Texture Path",
["Value"]="Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
},
[11]={
["Type"]=4,
["Name"]="Texture Desaturated",
["Value"]=true,
["Key"]="desaturatedTexture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enbaled, texture is shown in black & white",
},
[12]={
["Key"]="textureColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Select the color of the texture",
["Type"]=1,
["Name"]="Texture Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=0.30567157268524,
},
},
[13]={
["Type"]=2,
["Desc"]="Adjust the texture width",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Texture Width",
["Key"]="textureWidth",
["Max"]=32,
["Min"]=1,
["Fraction"]=false,
["Value"]=10,
},
[14]={
["Type"]=2,
["Max"]=16,
["Min"]=-16,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Desc"]="The texture is set to be the same size as the cast bar, fine tune the height as wanted",
["Name"]="Texture Height Mod",
["Value"]=0,
["Key"]="textureHeightMod",
},
[15]={
["Min"]=-32,
["Name"]="Texture Position",
["Key"]="texturePosition",
["Type"]=2,
["Max"]=32,
["Desc"]="Adjust the texture position",
["Fraction"]=false,
["Value"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[16]={
["Desc"]="Adjust the texture transparency",
["Min"]=0,
["Key"]="textureAlpha",
["Value"]=1,
["Type"]=2,
["Max"]=1,
["Name"]="Texture Alpha",
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
},
[10]={
["Time"]=1547406548,
["HooksTemp"]={
},
["Name"]="Execute Range [Plater]",
["LastHookEdited"]="",
["Author"]="Ahwa-Azralon",
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --execute detection, if true the script will handle the execute percent\
    --while false Plater will automatically trigger the execute range\
    --you only want to set this to true in case of Plater not detecting the execute range correctly\
    envTable.UseCustomExecutePercent = false\
    --execute percent, if not detecting automatic, this is the percent to active the execute range\
    --use from zero to one, 0.20 is equal to 20% of the unit life\
    envTable.ExecutePercent = 0.20\
    \
    --allow this script to change the nameplate color when the unit is in execute range\
    envTable.CanChangeColor = true\
    --change the health bar color to this color when the unit is in execute range\
    --color can be set as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}\
    envTable.ExecuteColor = \"green\"\
    \
    --border color\
    envTable.CanChangeBorderColor = false\
    envTable.BorderColor = \"red\"\
    \
    --hide the default health divisor and the health execute indicator\
    envTable.HideHealthDivisor = false\
    --if not hidden, adjust the health divisor settings and the health execute indicator\
    envTable.HealthDivisorAlpha = 0.5\
    envTable.HealthDivisorColor = \"white\"\
    envTable.HealthExecuteIndicatorAlpha = 0.15\
    envTable.HealthExecuteIndicatorColor = \"darkred\"\
    \
    \
    --private (internal functions)\
    do\
        function envTable.UnitInExecuteRange (unitFrame)\
            --check if can change the execute color\
            if (envTable.CanChangeColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\
            end\
            \
            if (envTable.CanChangeBorderColor) then\
                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\
            end\
            \
            if (envTable.HideHealthDivisor) then\
                unitFrame.healthBar.healthCutOff:Hide() \
                unitFrame.healthBar.executeRange:Hide()\
                \
            else\
                envTable.UpdateHealthDivisor (unitFrame)\
                \
            end\
        end\
        \
        function envTable.UpdateHealthDivisor (unitFrame)\
            local healthBar = unitFrame.healthBar\
            \
            healthBar.healthCutOff:Show()\
            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\
            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\
            \
            healthBar.executeRange:Show()\
            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\
            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\
            \
            if (envTable.UseCustomExecutePercent) then\
                healthBar.healthCutOff:ClearAllPoints()\
                healthBar.executeRange:ClearAllPoints()\
                \
                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\
                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\
                \
                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\
                healthBar.executeRange:SetHeight (healthBar:GetHeight())\
                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\
                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\
            end\
            \
        end\
    end\
    \
end",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    if (envTable.UseCustomExecutePercent) then\
        \
        --manual detection\
        local healthBar = unitFrame.healthBar\
        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\
            envTable.UnitInExecuteRange (unitFrame)\
        end        \
        \
    else\
        \
        --auto detection\
        if (unitFrame.InExecuteRange) then\
            envTable.UnitInExecuteRange (unitFrame)\
        end\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["version"]=-1,
["semver"]="",
["PlaterCore"]=1,
["LoadConditions"]={
["map_ids"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["race"]={
},
["pvptalent"]={
},
["role"]={
},
},
["url"]="",
["Icon"]=135358,
["Enabled"]=false,
["Desc"]="Add extra effects to execute range. See the constructor script for options.",
["Revision"]=84,
},
[11]={
["Author"]="Kastfall-Azralon",
["Time"]=1620377377,
["Name"]="Attacking Specific Unit [Plater]",
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["map_ids"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
},
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
["semver"]="",
["LastHookEdited"]="",
["version"]=-1,
["url"]="",
["Revision"]=363,
["Hooks"]={
["Initialization"]="function (modTable)\
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    modTable.changeBarColor = modTable.config.changeBarColor\
    modTable.changeBorderColor = modTable.config.changeBorderColor\
    modTable.resetColors = modTable.config.resetColors\
    \
    modTable.ListOfNpcs = {\
        [61146] = modTable.config.color, --\"olive\", --monk statue npcID\
        [103822] = modTable.config.color, --\"olive\", --druid treant npcID\
        [15352] = modTable.config.color, --\"olive\", --shaman elemental\
        [95072] = modTable.config.color, --\"olive\", --shaman greater earth elemental npcID\
        [61056] = modTable.config.color, --\"olive\", --shaman primal earth elemental npcID\
        \
    }\
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable, modTable)\
    if not unitId then\
        return\
    end\
    --get the GUID of the target of the unit\
    local targetGUID = UnitGUID (unitId .. \"target\")\
    \
    if (targetGUID) then\
        \
        --get the npcID of the target\
        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\
        local unitName = UnitName (unitId .. \"target\")\
        local unitNameLower = string.lower (unitName)\
        \
        --check if the npcID of this unit is in the npc list \
        local color = modTable.ListOfNpcs [npcID] or modTable.ListOfNpcs [unitName] or modTable.ListOfNpcs [unitNameLower]\
        \
        if color then\
            if modTable.changeBarColor then\
                Plater.SetNameplateColor (unitFrame, color)\
            end\
            if modTable.changeBorderColor then\
                Plater.SetBorderColor (unitFrame, color)\
            end\
            unitFrame.attackingSpecificUnitFromMod = true\
        elseif unitFrame.attackingSpecificUnitFromMod and modTable.resetColors then\
            if modTable.changeBorderColor then\
                Plater.SetBorderColor (unitFrame)\
            end\
            if modTable.changeBarColor then\
                Plater.RefreshNameplateColor (unitFrame)\
            end\
            unitFrame.attackingSpecificUnitFromMod = false\
        end\
    end\
end",
},
["Desc"]="Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
["PlaterCore"]=1,
["Options"]={
[1]={
["Type"]=1,
["Key"]="color",
["Value"]={
[1]=0.50196078431373,
[2]=0.50196078431373,
[3]=0,
[4]=1,
},
["Name"]="Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[2]={
["Value"]=true,
["Name"]="Change Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Key"]="changeBarColor",
},
[3]={
["Type"]=4,
["Key"]="changeBorderColor",
["Value"]=false,
["Name"]="Change Border Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[4]={
["Type"]=4,
["Key"]="resetColors",
["Value"]=true,
["Name"]="Reset Colors",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
},
["Enabled"]=false,
["HooksTemp"]={
},
},
[12]={
["OptionsValues"]={
},
["LastHookEdited"]="",
["Revision"]=285,
["PlaterCore"]=1,
["HooksTemp"]={
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if this nameplate is the current target\
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
    else\
        envTable.ComboPointFrame:Hide()\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Player Power Update"]="function (self, unitId, unitFrame, envTable, modTable, ...)\
    local powerType = ...\
    \
    if (powerType and powerType == \"COMBO_POINTS\" and unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.UpdateComboPoints()\
    end\
    \
    \
end",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
\
\
",
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the amount of comboo points shown when the player changes talents or specialization\
    envTable.UpdateComboPointAmount()\
    \
    --save the time of the last talent change\
    envTable.LastPlayerTalentUpdate = GetTime()\
    \
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --settings\
    local anchors = {\
        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\
    }\
    \
    local sizes = {\
        width = 12,\
        height = 12,\
        scale = 1,\
    }\
    \
    local textures = {\
        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\
        \
        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\
    }\
    if WOW_PROJECT_ID ~= WOW_PROJECT_MAINLINE then\
        textures = {\
            backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
            backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\
            \
            comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
            comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\
        }\
    end\
    \
    local frameLevel = 1000\
    local frameStrata = \"high\"    \
    \
    --private\
    do\
        --store combo points frames on this table\
        envTable.ComboPoints = {}\
        --save when the player changed talents or spec\
        envTable.LastPlayerTalentUpdate = GetTime()\
        --save when this nameplate got a combo point amount and alignment update        \
        \
        --build combo points frame anchor (combo point are anchored to this)\
        if (not unitFrame.PlaterComboPointFrame) then\
            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\
            hostFrame.ComboPointFramesPool = {}\
            unitFrame.PlaterComboPointFrame = hostFrame\
            envTable.ComboPointFrame = hostFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            \
            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\
            \
            --animations\
            local onPlayShowAnimation = function (animation)\
                --stop the hide animation if it's playing\
                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().HideAnimation:Stop()\
                end\
                \
                animation:GetParent():Show()\
            end\
            \
            local onPlayHideAnimation = function (animation)\
                --stop the show animation if it's playing\
                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().ShowAnimation:Stop()\
                end\
            end        \
            local onStopHideAnimation = function (animation)\
                animation:GetParent():Hide()       \
            end\
            \
            local createAnimations = function (comboPoint)\
                --on show\
                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\
                \
                --on hide\
                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\
            end\
            \
            --build combo point frame        \
            for i =1, 10 do \
                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\
                f:SetSize (sizes.width, sizes.height)\
                tinsert (envTable.ComboPoints, f)\
                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\
                \
                local backgroundTexture = f:CreateTexture (nil, \"background\")\
                backgroundTexture:SetTexture (textures.backgroundTexture)\
                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\
                backgroundTexture:SetSize (sizes.width, sizes.height)\
                backgroundTexture:SetPoint (\"center\")\
                \
                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\
                comboPointTexture:SetTexture (textures.comboPointTexture)\
                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\
                \
                comboPointTexture:SetSize (sizes.width, sizes.height)\
                comboPointTexture:SetPoint (\"center\")\
                comboPointTexture:Hide()            \
                \
                f.IsActive = false\
                \
                f.backgroundTexture = backgroundTexture\
                f.comboPointTexture = comboPointTexture\
                \
                createAnimations (f)\
            end\
            \
        else\
            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\
            \
        end            \
        \
        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\
        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\
        \
        function envTable.UpdateComboPoints()\
            local comboPoints = GetComboPoints(\"player\", \"target\")\
            --UnitPower (\"player\", Enum.PowerType.ComboPoints)\
            \
            for i = 1, envTable.TotalComboPoints do\
                local thisComboPoint = envTable.ComboPoints [i]\
                \
                if (i <= comboPoints ) then\
                    --combo point enabled\
                    if (not thisComboPoint.IsActive) then\
                        thisComboPoint.ShowAnimation:Play()\
                        thisComboPoint.IsActive = true\
                        \
                    end\
                    \
                else\
                    --combo point disabled\
                    if (thisComboPoint.IsActive) then\
                        thisComboPoint.HideAnimation:Play()\
                        thisComboPoint.IsActive = false\
                        \
                    end\
                end\
            end\
            \
            \
        end\
        \
        function envTable.UpdateComboPointAmount()\
            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\
            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\
            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \
            \
            --store the total amount of combo points\
            envTable.TotalComboPoints = comboPoints\
            \
            --update anchor frame\
            envTable.ComboPointFrame:SetWidth (namePlateWidth)\
            envTable.ComboPointFrame:SetHeight (20)\
            envTable.ComboPointFrame:ClearAllPoints()\
            for i = 1, #anchors do\
                local anchor = anchors[i]\
                envTable.ComboPointFrame:SetPoint (unpack (anchor))\
            end        \
            \
            --\
            for i = 1, #envTable.ComboPoints do\
                envTable.ComboPoints[i]:Hide()\
                envTable.ComboPoints[i]:ClearAllPoints()\
            end\
            \
            for i = 1, comboPoints do\
                local comboPoint = envTable.ComboPoints[i]\
                if i == 1 then\
                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\
                else\
                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\
                end\
                \
                comboPoint:Show()\
            end\
            \
            envTable.LastUpdate = GetTime()\
            \
            envTable.UpdateComboPoints()\
        end\
        \
        --initialize\
        envTable.UpdateComboPointAmount()\
        envTable.ComboPointFrame:Hide()\
    end\
    \
    \
end",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    --constructor is executed only once when any script of the hook runs.\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if need update the amount of combo points shown\
    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\
        envTable.UpdateComboPointAmount()\
    end    \
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end    \
    \
end\
\
\
",
},
["Hooks"]={
["Player Power Update"]="function (self, unitId, unitFrame, envTable, modTable, ...)\
    local powerType = ...\
    \
    if (powerType and powerType == \"COMBO_POINTS\" and unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.UpdateComboPoints()\
    end\
    \
    \
end",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
\
\
",
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the amount of comboo points shown when the player changes talents or specialization\
    envTable.UpdateComboPointAmount()\
    \
    --save the time of the last talent change\
    envTable.LastPlayerTalentUpdate = GetTime()\
    \
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --settings\
    local anchors = {\
        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\
    }\
    \
    local sizes = {\
        width = 12,\
        height = 12,\
        scale = 1,\
    }\
    \
    local textures = {\
        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\
        \
        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\
    }\
    if WOW_PROJECT_ID ~= WOW_PROJECT_MAINLINE then\
        textures = {\
            backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
            backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\
            \
            comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
            comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\
        }\
    end\
    \
    local frameLevel = 1000\
    local frameStrata = \"high\"    \
    \
    --private\
    do\
        --store combo points frames on this table\
        envTable.ComboPoints = {}\
        --save when the player changed talents or spec\
        envTable.LastPlayerTalentUpdate = GetTime()\
        --save when this nameplate got a combo point amount and alignment update        \
        \
        --build combo points frame anchor (combo point are anchored to this)\
        if (not unitFrame.PlaterComboPointFrame) then\
            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\
            hostFrame.ComboPointFramesPool = {}\
            unitFrame.PlaterComboPointFrame = hostFrame\
            envTable.ComboPointFrame = hostFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            \
            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\
            \
            --animations\
            local onPlayShowAnimation = function (animation)\
                --stop the hide animation if it's playing\
                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().HideAnimation:Stop()\
                end\
                \
                animation:GetParent():Show()\
            end\
            \
            local onPlayHideAnimation = function (animation)\
                --stop the show animation if it's playing\
                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().ShowAnimation:Stop()\
                end\
            end        \
            local onStopHideAnimation = function (animation)\
                animation:GetParent():Hide()       \
            end\
            \
            local createAnimations = function (comboPoint)\
                --on show\
                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\
                \
                --on hide\
                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\
            end\
            \
            --build combo point frame        \
            for i =1, 10 do \
                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\
                f:SetSize (sizes.width, sizes.height)\
                tinsert (envTable.ComboPoints, f)\
                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\
                \
                local backgroundTexture = f:CreateTexture (nil, \"background\")\
                backgroundTexture:SetTexture (textures.backgroundTexture)\
                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\
                backgroundTexture:SetSize (sizes.width, sizes.height)\
                backgroundTexture:SetPoint (\"center\")\
                \
                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\
                comboPointTexture:SetTexture (textures.comboPointTexture)\
                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\
                \
                comboPointTexture:SetSize (sizes.width, sizes.height)\
                comboPointTexture:SetPoint (\"center\")\
                comboPointTexture:Hide()            \
                \
                f.IsActive = false\
                \
                f.backgroundTexture = backgroundTexture\
                f.comboPointTexture = comboPointTexture\
                \
                createAnimations (f)\
            end\
            \
        else\
            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\
            \
        end            \
        \
        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\
        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\
        \
        function envTable.UpdateComboPoints()\
            local comboPoints = GetComboPoints(\"player\", \"target\")\
            --UnitPower (\"player\", Enum.PowerType.ComboPoints)\
            \
            for i = 1, envTable.TotalComboPoints do\
                local thisComboPoint = envTable.ComboPoints [i]\
                \
                if (i <= comboPoints ) then\
                    --combo point enabled\
                    if (not thisComboPoint.IsActive) then\
                        thisComboPoint.ShowAnimation:Play()\
                        thisComboPoint.IsActive = true\
                        \
                    end\
                    \
                else\
                    --combo point disabled\
                    if (thisComboPoint.IsActive) then\
                        thisComboPoint.HideAnimation:Play()\
                        thisComboPoint.IsActive = false\
                        \
                    end\
                end\
            end\
            \
            \
        end\
        \
        function envTable.UpdateComboPointAmount()\
            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\
            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\
            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \
            \
            --store the total amount of combo points\
            envTable.TotalComboPoints = comboPoints\
            \
            --update anchor frame\
            envTable.ComboPointFrame:SetWidth (namePlateWidth)\
            envTable.ComboPointFrame:SetHeight (20)\
            envTable.ComboPointFrame:ClearAllPoints()\
            for i = 1, #anchors do\
                local anchor = anchors[i]\
                envTable.ComboPointFrame:SetPoint (unpack (anchor))\
            end        \
            \
            --\
            for i = 1, #envTable.ComboPoints do\
                envTable.ComboPoints[i]:Hide()\
                envTable.ComboPoints[i]:ClearAllPoints()\
            end\
            \
            for i = 1, comboPoints do\
                local comboPoint = envTable.ComboPoints[i]\
                if i == 1 then\
                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\
                else\
                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\
                end\
                \
                comboPoint:Show()\
            end\
            \
            envTable.LastUpdate = GetTime()\
            \
            envTable.UpdateComboPoints()\
        end\
        \
        --initialize\
        envTable.UpdateComboPointAmount()\
        envTable.ComboPointFrame:Hide()\
    end\
    \
    \
end",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    --constructor is executed only once when any script of the hook runs.\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if need update the amount of combo points shown\
    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\
        envTable.UpdateComboPointAmount()\
    end    \
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end    \
    \
end\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if this nameplate is the current target\
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
    else\
        envTable.ComboPointFrame:Hide()\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["LoadConditions"]={
["talent"]={
},
["class"]={
["DRUID"]=true,
["ROGUE"]=true,
["Enabled"]=true,
},
["map_ids"]={
},
["role"]={
},
["race"]={
},
["affix"]={
},
["group"]={
},
["pvptalent"]={
},
["spec"]={
["103"]=true,
["Enabled"]=true,
},
["encounter_ids"]={
},
},
["url"]="",
["Icon"]=135426,
["Enabled"]=false,
["Desc"]="Show combo points above the nameplate for Druid Feral and Rogues.",
["Name"]="Combo Points [Plater]",
["semver"]="",
["Prio"]=99,
["Options"]={
},
["Time"]=1627307022,
["Author"]="Izimode-Azralon",
["version"]=-1,
},
},
["patch_version"]=16,
["script_data_trash"]={
[1]={
["url"]="",
["Enabled"]=true,
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["NpcNames"]={
},
["version"]=-1,
["Options"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Blank Line",
},
[2]={
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Cast start animation settings",
},
[3]={
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[4]={
["Name"]="Cast Bar Color Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Key"]="useCastbarColor",
["Value"]=true,
},
[5]={
["Type"]=1,
["Key"]="castbarColor",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Name"]="Cast Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
},
[6]={
["Type"]=6,
["Key"]="option7",
["Value"]=0,
["Name"]="Blank Line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Key"]="flashDuration",
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Value"]=0.4,
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Type"]=2,
},
[8]={
["Max"]=10,
["Desc"]="Increases the cast bar height by this value",
["Min"]=0,
["Value"]=5,
["Fraction"]=false,
["Type"]=2,
["Key"]="castBarHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Cast Bar Height Mod",
},
[9]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Duration",
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
["Key"]="shakeDuration",
["Value"]=0.2,
["Fraction"]=true,
},
[10]={
["Value"]=8,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Max"]=100,
["Desc"]="How strong is the shake.",
["Key"]="shakeAmplitude",
["Min"]=2,
},
[11]={
["Value"]=40,
["Name"]="Shake Frequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Key"]="shakeFrequency",
["Max"]=80,
["Min"]=1,
},
[12]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_list",
["Desc"]="Key is the spellId and value is the amount of time of the Timer",
["Type"]=7,
["Name"]="Timer (Key is SpellId and Value is Time)",
["Value"]={
[1]={
[1]="350421",
[2]="5",
},
[2]={
[1]="355787",
[2]="15",
},
[3]={
[1]="348513",
[2]="14",
},
[4]={
[1]="348513",
[2]="14",
},
},
["Key"]="timerList",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
    --check if there's a timer for this spell\
    local timer = scriptTable.config.timerList[tostring(envTable._SpellID)]\
    \
    if (timer) then\
        --insert code here\
        \
        --set the castbar config\
        local config = {\
            iconTexture = \"\",\
            iconTexcoord = {0.1, 0.9, 0.1, 0.9},\
            iconAlpha = 1,\
            iconSize = 14,\
            \
            text = \"Spikes Incoming!\",\
            textSize = 8,\
            \
            texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\
            color = {.6, .6, .6, 0.8},\
            \
            isChanneling = false,\
            canInterrupt = false,\
            \
            height = 5,\
            width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\
            \
            spellNameAnchor = {side = 3, x = 0, y = -2},\
            timerAnchor = {side = 5, x = 0, y = -2},\
        }\
        \
        Plater.SetAltCastBar(unitFrame.PlateFrame, config, timer, nil, nil)\
        local castBar2 = unitFrame.castBar2\
        castBar2.Text:ClearAllPoints()\
        castBar2.Text:SetPoint (\"topleft\", castBar2, \"bottomleft\", 0, 0)\
        castBar2.percentText:ClearAllPoints()\
        castBar2.percentText:SetPoint (\"topright\", castBar2, \"bottomright\", 0, 0)\
        Plater:SetFontSize(castBar2.percentText, 8)\
    end\
    \
end\
\
\
\
\
\
\
\
",
["Time"]=1625793282,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["__TrashAt"]=1627306963,
["Author"]="Tercioo-Sylvanas",
["Name"]="Cast - Alert + Timer [P]",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\", 7)\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Revision"]=1154,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["SpellIds"]={
[1]=350421,
[2]=355787,
[3]=348513,
},
["PlaterCore"]=1,
["OptionsValues"]={
},
["ScriptType"]=2,
},
},
["aura2_y_offset"]=5,
["use_ui_parent"]=true,
["script_data"]={
[1]={
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
    \
end",
["ScriptType"]=1,
["Time"]=1605214963,
["Revision"]=607,
["SpellIds"]={
[1]=323149,
[2]=324392,
[3]=340544,
[4]=342189,
[5]=333227,
},
["Name"]="Aura - Buff Alert [Plater]",
["Options"]={
[1]={
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[4]={
["Type"]=4,
["Name"]="Glow Enabled",
["Value"]=false,
["Key"]="glowEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[5]={
["Type"]=1,
["Name"]="Glow Color",
["Value"]={
[1]=0.40392156862745,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
["Key"]="glowColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[6]={
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
},
[7]={
["Type"]=4,
["Name"]="Dots Enabled",
["Value"]=true,
["Key"]="dotsEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[8]={
["Type"]=1,
["Key"]="dotsColor",
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
["Name"]="Dots Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
},
["url"]="",
["Author"]="Tercioo-Sylvanas",
["NpcNames"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Show()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \
    end\
    \
end\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Enabled"]=true,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Add the buff name in the trigger box.",
["PlaterCore"]=1,
["version"]=-1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Hide()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        Plater.StopDotAnimation(self, envTable.dotAnimation)\
    end\
    \
    \
end",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
},
[2]={
["ScriptType"]=2,
["PlaterCore"]=1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\
    \
    envTable.overlaySpark:Hide()\
    envTable.topArrow:Hide()\
    \
    Plater.RefreshNameplateColor (unitFrame)\
    \
    envTable.smallScaleAnimation:Stop()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)\
end\
\
\
",
["semver"]="",
["Desc"]="Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
["Name"]="Explosion Affix M+ [Plater]",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --update the percent\
    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\
    \
    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\
    \
    --forces the script to update on a 60Hz base\
    self.ThrottleUpdate = 0\
    \
\
end\
\
\
",
["Time"]=1604698647,
["Enabled"]=true,
["Revision"]=462,
["NpcNames"]={
},
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Key"]="option2",
["Value"]="Plays a special animation showing the explosion time.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[4]={
["Fraction"]=false,
["Key"]="castBarHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Cast Bar Height Mod",
["Type"]=2,
["Min"]=0,
["Value"]=3,
["Max"]=6,
["Desc"]="Increases the cast bar height by this value",
},
[5]={
["Type"]=1,
["Key"]="castBarColor",
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
["Name"]="Cast Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Changes the cast bar color to this one.",
},
[6]={
["Type"]=6,
["Key"]="option7",
["Value"]=0,
["Name"]="Option 7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Key"]="option6",
["Value"]="Arrow:",
["Name"]="Arrow:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[8]={
["Desc"]="Show an arrow above the nameplate showing the cast bar progress.",
["Type"]=4,
["Key"]="showArrow",
["Value"]=true,
["Name"]="Show Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[9]={
["Value"]=0.5,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=1,
["Desc"]="Arrow alpha.",
["Name"]="Arrow Alpha",
["Min"]=0,
["Fraction"]=true,
["Key"]="arrowAlpha",
},
[10]={
["Type"]=2,
["Desc"]="Arrow Width.",
["Min"]=4,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="arrowWidth",
["Max"]=12,
["Name"]="Arrow Width",
["Value"]=8,
["Fraction"]=false,
},
[11]={
["Fraction"]=false,
["Name"]="Arrow Height",
["Max"]=12,
["Desc"]="Arrow Height.",
["Min"]=4,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=8,
["Key"]="arrowHeight",
},
[12]={
["Type"]=6,
["Key"]="option13",
["Value"]=0,
["Name"]="Option 13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[13]={
["Type"]=5,
["Key"]="option12",
["Value"]="Dot Animation:",
["Name"]="Dot Animation:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[14]={
["Name"]="Dot Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dot animation.",
["Type"]=1,
["Key"]="dotColor",
["Value"]={
[1]=1,
[2]=0.6156862745098,
[3]=0,
[4]=1,
},
},
[15]={
["Max"]=10,
["Key"]="xOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Desc"]="Dot X Offset",
["Min"]=-10,
["Name"]="Dot X Offset",
["Value"]=4,
},
[16]={
["Type"]=2,
["Name"]="Dot Y Offset",
["Max"]=10,
["Desc"]="Dot Y Offset",
["Min"]=-10,
["Key"]="yOffset",
["Value"]=3,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.overlaySpark:Show()\
    \
    if (envTable.ShowArrow) then\
        envTable.topArrow:Show()\
    end\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    envTable.smallScaleAnimation:Play()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    envTable.overlaySpark.height = nameplateHeight + 5\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
    \
    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\
end\
\
\
\
\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings\
    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\
    envTable.ShowArrow = scriptTable.config.showArrow\
    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\
    envTable.HealthBarColor = scriptTable.config.healthBarColor\
    \
    --creates the spark to show the cast progress inside the health bar\
    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\
    envTable.overlaySpark:SetBlendMode (\"ADD\")\
    envTable.overlaySpark.width = 16\
    envTable.overlaySpark.height = 36\
    envTable.overlaySpark.alpha = .9\
    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\
    \
    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\
    envTable.topArrow:SetBlendMode (\"ADD\")\
    envTable.topArrow.width = scriptTable.config.arrowWidth\
    envTable.topArrow.height = scriptTable.config.arrowHeight\
    envTable.topArrow.alpha = envTable.ArrowAlpha\
    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\
    \
    --scale animation\
    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \
    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\
    \
end\
\
\
\
\
\
\
\
",
["url"]="",
["Icon"]=2175503,
["Author"]="Bombad�o-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["SpellIds"]={
[1]=240446,
},
["version"]=-1,
},
[3]={
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
    \
end\
\
\
",
["Desc"]="Add the debuff name in the trigger box.",
["Name"]="Aura - Debuff Alert [Plater]",
["version"]=-1,
["ScriptType"]=1,
["Revision"]=351,
["NpcNames"]={
},
["SpellIds"]={
[1]=337220,
[2]=337253,
[3]=337251,
},
["PlaterCore"]=1,
["Author"]="Tercioo-Sylvanas",
["Options"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Blank Space",
},
[2]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
["Name"]="Blank Space",
},
[4]={
["Type"]=4,
["Key"]="glowEnabled",
["Value"]=false,
["Name"]="Glow Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[5]={
["Type"]=1,
["Key"]="glowColor",
["Value"]={
[1]=0.40392156862745,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
["Name"]="Glow Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[6]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option3",
},
[7]={
["Type"]=4,
["Key"]="dotsEnabled",
["Value"]=true,
["Name"]="Dots Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[8]={
["Type"]=1,
["Name"]="Dots Color",
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
["Key"]="dotsColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Show()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \
    end\
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Time"]=1604454032,
["url"]="",
["Enabled"]=true,
["semver"]="",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Hide()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        Plater.StopDotAnimation(self, envTable.dotAnimation)\
    end\
    \
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
},
[4]={
["ScriptType"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["version"]=-1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\", 7)\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
    --check if there's a timer for this spell\
    local timer = scriptTable.config.timerList[tostring(envTable._SpellID)]\
    \
    if (timer) then\
        --insert code here\
        \
        --set the castbar config\
        local config = {\
            iconTexture = \"\",\
            iconTexcoord = {0.1, 0.9, 0.1, 0.9},\
            iconAlpha = 1,\
            iconSize = 14,\
            \
            text = \"Spikes Incoming!\",\
            textSize = 8,\
            \
            texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\
            color = {.6, .6, .6, 0.8},\
            \
            isChanneling = false,\
            canInterrupt = false,\
            \
            height = 5,\
            width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\
            \
            spellNameAnchor = {side = 3, x = 0, y = -2},\
            timerAnchor = {side = 5, x = 0, y = -2},\
        }\
        \
        Plater.SetAltCastBar(unitFrame.PlateFrame, config, timer, nil, nil)\
        local castBar2 = unitFrame.castBar2\
        castBar2.Text:ClearAllPoints()\
        castBar2.Text:SetPoint (\"topleft\", castBar2, \"bottomleft\", 0, 0)\
        castBar2.percentText:ClearAllPoints()\
        castBar2.percentText:SetPoint (\"topright\", castBar2, \"bottomright\", 0, 0)\
        Plater:SetFontSize(castBar2.percentText, 8)\
    end\
    \
end\
\
\
\
\
\
\
\
",
["url"]="",
["semver"]="",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
\
\
",
["Time"]=1625698948,
["Enabled"]=true,
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["SpellIds"]={
[1]=350421,
[2]=355571,
[3]=355787,
},
["PlaterCore"]=1,
["NpcNames"]={
},
["Name"]="Cast - Alert + Timer [P]",
["Options"]={
[1]={
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
},
[2]={
["Name"]="Option 2",
["Value"]="Cast start animation settings",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
},
[4]={
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
},
[5]={
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
},
[6]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Min"]=0.05,
["Value"]=0.4,
["Name"]="Flash Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="flashDuration",
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Fraction"]=true,
},
[8]={
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Fraction"]=false,
["Name"]="Cast Bar Height Mod",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="castBarHeight",
["Max"]=10,
["Min"]=0,
["Value"]=5,
},
[9]={
["Name"]="Shake Duration",
["Max"]=1,
["Min"]=0.1,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Type"]=2,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
},
[10]={
["Name"]="Shake Amplitude",
["Value"]=8,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
["Type"]=2,
["Max"]=100,
["Desc"]="How strong is the shake.",
["Min"]=2,
},
[11]={
["Type"]=2,
["Max"]=80,
["Desc"]="How fast the shake moves.",
["Value"]=40,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=1,
["Name"]="Shake Frequency",
["Key"]="shakeFrequency",
},
[12]={
["Key"]="timerList",
["Value"]={
[1]={
[1]="350421",
[2]="5",
},
[2]={
[1]="355787",
[2]="15",
},
[3]={
[1]="355571",
[2]="14",
},
},
["Name"]="Timer (Key is SpellId and Value is Time)",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_list",
["Desc"]="Key is the spellId and value is the amount of time of the Timer",
["Type"]=7,
},
},
["OptionsValues"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Revision"]=1138,
["Author"]="Tercioo-Sylvanas",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
},
[5]={
["NpcNames"]={
},
["Name"]="Cast - Ultra Important [P]",
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.overlaySpark:Show()\
    \
    if (envTable.ShowArrow) then\
        envTable.topArrow:Show()\
    end\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    envTable.smallScaleAnimation:Play()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    envTable.overlaySpark.height = nameplateHeight + 5\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
    \
    \
end",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings\
    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\
    envTable.ShowArrow = scriptTable.config.showArrow\
    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\
    envTable.HealthBarColor = scriptTable.config.healthBarColor\
    \
    --creates the spark to show the cast progress inside the health bar\
    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\
    envTable.overlaySpark:SetBlendMode (\"ADD\")\
    envTable.overlaySpark.width = 16\
    envTable.overlaySpark.height = 36\
    envTable.overlaySpark.alpha = .9\
    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\
    \
    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\
    envTable.topArrow:SetBlendMode (\"ADD\")\
    envTable.topArrow.width = scriptTable.config.arrowWidth\
    envTable.topArrow.height = scriptTable.config.arrowHeight\
    envTable.topArrow.alpha = envTable.ArrowAlpha\
    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\
    \
    --scale animation\
    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \
    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\
    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\
    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\
end\
\
\
\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\
    \
    envTable.overlaySpark:Hide()\
    envTable.topArrow:Hide()\
    \
    Plater.RefreshNameplateColor (unitFrame)\
    \
    envTable.smallScaleAnimation:Stop()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)\
end\
\
\
",
["Enabled"]=true,
["Author"]="Bombad�o-Azralon",
["PlaterCore"]=1,
["Time"]=1604617977,
["url"]="",
["Revision"]=513,
["semver"]="",
["Desc"]="Used on casts that make the mob explode or transform if the cast passes.",
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --update the percent\
    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\
    \
    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\
    \
    --forces the script to update on a 60Hz base\
    self.ThrottleUpdate = 0.016\
    \
    --update the health bar color coloring from yellow to red\
    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_red",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["SpellIds"]={
[1]=332329,
[2]=320103,
[3]=321406,
[4]=335817,
[5]=321061,
[6]=320141,
[7]=326171,
},
["Options"]={
[1]={
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 1",
},
[2]={
["Value"]="Plays a special animation showing the explosion time.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
},
[3]={
["Value"]=0,
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 3",
},
[4]={
["Type"]=2,
["Min"]=0,
["Fraction"]=false,
["Value"]=3,
["Key"]="castBarHeight",
["Max"]=6,
["Desc"]="Increases the health bar height by this value",
["Name"]="Health Bar Height Mod",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[5]={
["Type"]=1,
["Name"]="Health Bar Color",
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
["Key"]="healthBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Changes the health bar color to this one.",
},
[6]={
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 7",
["Value"]=0,
},
[7]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Arrow:",
["Value"]="Arrow:",
["Key"]="option6",
},
[8]={
["Name"]="Show Arrow",
["Value"]=true,
["Key"]="showArrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show an arrow above the nameplate showing the cast bar progress.",
["Type"]=4,
},
[9]={
["Max"]=1,
["Name"]="Arrow Alpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="arrowAlpha",
["Type"]=2,
["Desc"]="Arrow alpha.",
["Min"]=0,
["Fraction"]=true,
["Value"]=0.5,
},
[10]={
["Name"]="Arrow Width",
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Max"]=12,
["Desc"]="Arrow Width.",
["Min"]=4,
["Key"]="arrowWidth",
},
[11]={
["Value"]=8,
["Name"]="Arrow Height",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=12,
["Fraction"]=false,
["Desc"]="Arrow Height.",
["Min"]=4,
["Key"]="arrowHeight",
},
[12]={
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[13]={
["Name"]="Dot Animation:",
["Value"]="Dot Animation:",
["Key"]="option12",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[14]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dot animation.",
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=1,
[2]=0.6156862745098,
[3]=0,
[4]=1,
},
["Key"]="dotColor",
},
[15]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Desc"]="Dot X Offset",
["Min"]=-10,
["Value"]=4,
["Type"]=2,
["Name"]="Dot X Offset",
["Fraction"]=false,
["Key"]="xOffset",
},
[16]={
["Key"]="yOffset",
["Desc"]="Dot Y Offset",
["Max"]=10,
["Min"]=-10,
["Value"]=3,
["Name"]="Dot Y Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
},
},
},
[6]={
["url"]="",
["PlaterCore"]=1,
["Name"]="Cast - Small Alert [Plater]",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --flash duration\
    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --manually create a new texture for the flash animation\
    if (not envTable.SmallFlashTexture) then\
        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\
        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\
        envTable.SmallFlashTexture:SetAllPoints()\
    end\
    \
    --manually create a flash animation using the framework\
    if (not envTable.SmallFlashAnimationHub) then \
        \
        local onPlay = function()\
            envTable.SmallFlashTexture:Show()\
        end\
        \
        local onFinished = function()\
            envTable.SmallFlashTexture:Hide()\
        end\
        \
        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\
        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\
        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\
        \
        envTable.SmallFlashAnimationHub = animationHub\
    end\
    \
    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\
    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\
    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\
    \
end\
\
\
\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Play()\
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["semver"]="",
["SpellIds"]={
[1]=320170,
[2]=320171,
[3]=320462,
[4]=330712,
[5]=332170,
[6]=333875,
[7]=326836,
[8]=342135,
[9]=333861,
[10]=341969,
[11]=317963,
[12]=327481,
[13]=328331,
[14]=322614,
[15]=325701,
[16]=326438,
[17]=323538,
[18]=321764,
[19]=296523,
[20]=330755,
[21]=295929,
[22]=296019,
[23]=335685,
[24]=170751,
[25]=342207,
[26]=350554,
[27]=348513,
[28]=351779,
},
["version"]=-1,
["Options"]={
[1]={
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Type"]=5,
["Key"]="option2",
["Value"]="Plays a small animation when the cast start.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[4]={
["Key"]="option3",
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[5]={
["Max"]=1.2,
["Desc"]="How long is the flash played when the cast starts.",
["Fraction"]=true,
["Value"]=0.6,
["Type"]=2,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Min"]=0.1,
},
[6]={
["Desc"]="Color of the Flash",
["Type"]=1,
["Key"]="flashColor",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Flash Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
},
["ScriptType"]=2,
["NpcNames"]={
},
["Enabled"]=true,
["Revision"]=595,
["Author"]="Tercioo-Sylvanas",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    \
    \
end\
\
\
",
["Time"]=1604617585,
},
[7]={
["SpellIds"]={
},
["version"]=-1,
["semver"]="",
["NpcNames"]={
[1]="156212",
[2]="168098",
[3]=179124,
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --check if can change the nameplate color\
    if (scriptTable.config.changeNameplateColor) then\
        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\
    end\
    \
end\
\
\
\
\
",
["url"]="",
["Author"]="Izimode-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Name"]="Unit - Main Target [P]",
["Options"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
},
[2]={
["Type"]=5,
["Name"]="Option 6",
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[4]={
["Type"]=4,
["Name"]="Change Nameplate Color",
["Value"]=true,
["Key"]="changeNameplateColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="change to true to change the color",
},
[5]={
["Desc"]="",
["Type"]=1,
["Name"]="Nameplate Color",
["Value"]={
[1]=1,
[2]=0,
[3]=0.52549019607843,
[4]=1,
},
["Key"]="nameplateColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[6]={
["Desc"]="increase the nameplate height by this value",
["Name"]="Nameplate Size Offset",
["Fraction"]=false,
["Type"]=2,
["Max"]=6,
["Min"]=0,
["Key"]="nameplateSizeOffset",
["Value"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[7]={
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[8]={
["Key"]="dotsColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=1,
[2]=0.71372549019608,
[3]=0,
[4]=1,
},
},
[9]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\
    \
    --restore the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)    \
    \
end\
\
\
\
\
",
["ScriptType"]=3,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\
    \
    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\
    \
end\
\
\
\
\
\
\
\
",
["Enabled"]=true,
["Revision"]=406,
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["PlaterCore"]=1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
--[=[\
\
154564 - debug\
\
168098 - empowered coldheart agent\
156212 - coldheart agent\
\
\
\
--]=]",
["Time"]=1604607993,
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
},
[8]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    local timeLeft = envTable._RemainingTime\
    \
    --check if the spellID isn't being ignored\
    if (envTable.IgnoredSpellID [envTable._SpellID]) then\
        return\
    end\
    \
    --check the time left and start or stop the blink animation and also check if the time left is > zero\
    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftToBlink) then\
            --blink effect\
            if (envTable.BlinkEnabled) then\
                if (not envTable.blinkAnimation:IsPlaying()) then\
                    envTable.blinkAnimation:Play()\
                end\
            end\
            --glow effect\
            if (envTable.GlowEnabled) then\
                envTable.glowEffect:Show()\
            end\
            --nameplate color\
            if (envTable.ChangeNameplateColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
            end\
        else\
            --blink effect\
            if (envTable.blinkAnimation:IsPlaying()) then\
                envTable.blinkAnimation:Stop()\
            end\
            --glow effect\
            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\
                envTable.glowEffect:Hide()\
            end\
        end\
    end\
    \
    --timer color\
    if (envTable.TimerColorEnabled and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftCritical) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\
        elseif (timeLeft < envTable.TimeLeftWarning) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \
        else\
            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
        end\
    end\
    \
end",
["Time"]=1611856720,
["url"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_blink",
["Enabled"]=true,
["semver"]="",
["PlaterCore"]=1,
["ScriptType"]=1,
["Options"]={
[1]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option10",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Type"]=5,
["Name"]="Option 17",
["Value"]="Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
["Key"]="option17",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option10",
["Value"]=0,
["Name"]="Blank Space",
},
[4]={
["Name"]="Blink Enabled",
["Value"]=true,
["Key"]="blinkEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable blink",
["Type"]=4,
},
[5]={
["Value"]=true,
["Key"]="glowEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable glows",
["Type"]=4,
["Name"]="Glow Enabled",
},
[6]={
["Value"]=true,
["Key"]="changeNameplateColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'true' to enable nameplate color change",
["Type"]=4,
["Name"]="Change NamePlate Color",
},
[7]={
["Desc"]="in seconds, affects the blink effect only",
["Min"]=1,
["Name"]="Timeleft to Blink",
["Value"]=3,
["Fraction"]=true,
["Type"]=2,
["Max"]=20,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="timeleftToBlink",
},
[8]={
["Value"]=1,
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0.5,
["Max"]=3,
["Desc"]="time to complete a blink loop",
["Name"]="Blink Speed",
["Key"]="blinkSpeed",
["Type"]=2,
},
[9]={
["Type"]=2,
["Desc"]="max transparency in the animation loop (1.0 is full opaque)",
["Fraction"]=true,
["Key"]="blinkMaxAlpha",
["Max"]=1,
["Min"]=0.1,
["Name"]="Blink Max Alpha",
["Value"]=0.6,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="blinkColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color of the blink",
["Type"]=1,
["Name"]="Blink Color",
},
[11]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="nameplate color if ChangeNameplateColor is true",
["Type"]=1,
["Name"]="Nameplate Color",
["Value"]={
[1]=0.28627450980392,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
["Key"]="",
},
[12]={
["Type"]=6,
["Key"]="option10",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[13]={
["Type"]=4,
["Name"]="Timer Color Enabled",
["Value"]=true,
["Key"]="timerColorEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable changes in the color of the time left text",
},
[14]={
["Value"]=8,
["Name"]="Time Left Warning",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="timeLeftWarning",
["Max"]=20,
["Min"]=1,
["Fraction"]=true,
["Type"]=2,
["Desc"]="in seconds, affects the color of the text",
},
[15]={
["Max"]=10,
["Desc"]="in seconds, affects the color of the text",
["Min"]=1,
["Fraction"]=true,
["Value"]=3,
["Key"]="timeLeftCritical",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Time Left Critical",
},
[16]={
["Type"]=1,
["Name"]="Warning Color",
["Value"]={
[1]=1,
[2]=0.87058823529412,
[3]=0,
[4]=1,
},
["Key"]="warningColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color when the time left entered in a warning zone",
},
[17]={
["Type"]=1,
["Name"]="Critical Color",
["Value"]={
[1]=1,
[2]=0.074509803921569,
[3]=0,
[4]=1,
},
["Key"]="criticalColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color when the time left is critical",
},
},
["Name"]="Aura - Blink by Time Left [Plater]",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
["NpcNames"]={
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings (require a /reload after editing any setting)\
    do\
        --blink and glow\
        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\
        envTable.GlowEnabled = scriptTable.config.glowEnabled \
        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\
        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\
        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \
        envTable.BlinkColor = scriptTable.config.blinkColor; \
        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \
        envTable.NameplateColor = scriptTable.config.nameplateColor; \
        \
        --text color\
        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \
        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\
        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\
        envTable.TextColor_Warning = scriptTable.config.warningColor; \
        envTable.TextColor_Critical = scriptTable.config.criticalColor; \
        \
        --list of spellIDs to ignore\
        envTable.IgnoredSpellID = {\
            [12] = true, --use a simple comma here\
            [13] = true,\
        }\
    end\
    \
    \
    --private\
    do\
        --if not envTable.blinkTexture then\
        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\
        envTable.blinkTexture:SetPoint ('center', 0, 0)\
        envTable.blinkTexture:Hide()\
        \
        local onPlay = function()\
            envTable.blinkTexture:Show() \
            envTable.blinkTexture.color = envTable.BlinkColor\
        end\
        local onStop = function()\
            envTable.blinkTexture:Hide()  \
        end\
        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\
        --end\
        \
        envTable.glowEffect = envTable.glowEffect or self.overlay or Plater.CreateIconGlow (self)\
        --envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\
        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\
        \
    end\
    \
end\
\
\
\
\
",
["SpellIds"]={
},
["version"]=-1,
["Revision"]=369,
["Author"]="Izimode-Azralon",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.blinkTexture:SetSize (self:GetSize())\
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.blinkAnimation:Stop()\
    envTable.blinkTexture:Hide()\
    envTable.blinkAnimation:Stop()\
    envTable.glowEffect:Stop()\
    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
end\
\
\
",
},
[9]={
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    if (unitFrame.healthMarker) then\
        unitFrame.healthMarker:Hide()\
        unitFrame.healthOverlay:Hide()\
    end\
end\
\
\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\health_indicator",
["Desc"]="Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
["NpcNames"]={
[1]="164451",
[2]="164463",
[3]="164461",
[4]="165946",
[5]="164501",
[6]="164218",
},
["SpellIds"]={
},
["Name"]="Unit - Health Markers [P]",
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["url"]="",
["Revision"]=109,
["Author"]="Aelerolor-Torghast",
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["PlaterCore"]=1,
["version"]=-1,
["Options"]={
[1]={
["Desc"]="",
["Type"]=5,
["Name"]="Option 1",
["Value"]="Add markers into the health bar to remind you about boss abilities at life percent.",
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[2]={
["Type"]=6,
["Name"]="blank line",
["Value"]=0,
["Key"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[3]={
["Type"]=1,
["Name"]="Vertical Line Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="indicatorColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Indicator color.",
},
[4]={
["Min"]=0.1,
["Fraction"]=true,
["Name"]="Vertical Line Alpha",
["Key"]="indicatorAlpha",
["Type"]=2,
["Max"]=1,
["Desc"]="Indicator alpha.",
["Value"]=0.79,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[5]={
["Name"]="blank line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="",
["Value"]=0,
},
[6]={
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Fill Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Fill color.",
["Type"]=1,
["Key"]="fillColor",
},
[7]={
["Type"]=2,
["Max"]=1,
["Desc"]="Fill alpha.",
["Key"]="fillAlpha",
["Value"]=0.2,
["Fraction"]=true,
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Fill Alpha",
},
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    envTable.lifePercent = {\
        --npcId         percent divisions\
        [154564] = {80, 30},   --debug\
        [164451] = {40}, --dessia the decapirator - theater of pain\
        [164463] = {40}, --Paceran the Virulent - theater of pain\
        [164461] = {40}, -- Sathel the Accursed - theater of pain\
        [165946]= {50}, -- ~mordretha - thather of pain\
        [164501] = {70, 40, 10}, --mistcaller - tina scythe\
        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\
    }\
    \
    function envTable.CreateMarker(unitFrame)\
        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\
        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\
        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\
        \
        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\
        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\
        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\
    end\
    \
    function envTable.UpdateMarkers(unitFrame)\
        local markersTable = envTable.lifePercent[envTable._NpcID]\
        if (markersTable) then\
            local unitLifePercent = envTable._HealthPercent / 100\
            for i, percent in ipairs(markersTable) do\
                percent = percent / 100\
                if (unitLifePercent > percent) then\
                    if (not unitFrame.healthMarker) then\
                        envTable.CreateMarker(unitFrame)\
                    end\
                    \
                    unitFrame.healthMarker:Show()\
                    local width = unitFrame.healthBar:GetWidth()\
                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\
                    \
                    local overlaySize = width * (unitLifePercent - percent)\
                    unitFrame.healthOverlay:SetWidth(overlaySize)\
                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\
                    \
                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\
                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\
                    \
                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\
                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\
                    \
                    return\
                end\
            end --end for\
            \
            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\
                unitFrame.healthMarker:Hide()\
                unitFrame.healthOverlay:Hide()\
            end\
        end\
    end\
end      \
\
\
\
\
\
",
["Time"]=1606506781,
["Enabled"]=true,
},
[10]={
["Author"]="Tercioo-Sylvanas",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["SpellIds"]={
[1]=321828,
},
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Time"]=1618996775,
["url"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_tank",
["PlaterCore"]=1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (not Plater.IsPlayerTank()) then\
        return\
    end\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (not Plater.IsPlayerTank()) then\
        return\
    end\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end    \
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
",
["Revision"]=843,
["semver"]="",
["Desc"]="Cast alert for abilities which only the tank can interrupt.",
["NpcNames"]={
},
["Options"]={
[1]={
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Name"]="Option 2",
["Value"]="Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Type"]=5,
["Name"]="Option 3",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[4]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
},
[5]={
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
},
[6]={
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
},
[7]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[8]={
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Value"]=0.2,
["Name"]="Flash Duration",
["Key"]="flashDuration",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
},
[9]={
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Min"]=0,
["Fraction"]=false,
["Key"]="castBarHeight",
["Max"]=10,
["Value"]=0,
["Name"]="Cast Bar Height Mod",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Min"]=0.1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
["Value"]=0.1,
["Name"]="Shake Duration",
},
[11]={
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
["Type"]=2,
["Max"]=200,
["Name"]="Shake Amplitude",
["Desc"]="How strong is the shake.",
["Min"]=10,
["Value"]=25,
},
[12]={
["Type"]=2,
["Max"]=80,
["Value"]=30,
["Fraction"]=false,
["Key"]="shakeFrequency",
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Name"]="Shake Frequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["Enabled"]=true,
["Name"]="Cast - Tank Interrupt [P]",
["version"]=-1,
},
[11]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.UpdateTargetBox(unitFrame, unitId) \
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_target",
["Author"]="Bombad�o-Azralon",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (envTable.UpdateTargetBox(unitFrame, unitId)) then\
        \
        envTable.BackgroundFlash:Play()\
        \
        Plater.FlashNameplateBorder (unitFrame, 0.05)   \
        Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
        \
        unitFrame:PlayFrameShake (envTable.FrameShake)\
        \
        if (envTable._CanInterrupt) then\
            if (scriptTable.config.useCastbarColor) then\
                self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\
            end\
        end\
        \
    end\
    \
end\
\
\
\
\
\
\
",
["ScriptType"]=2,
["url"]="",
["Name"]="Cast - Important Target [P]",
["Options"]={
[1]={
["Type"]=6,
["Name"]="Option 1",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Shows the target name in a separate box",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Type"]=5,
["Key"]="option2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[4]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 4",
["Value"]=0,
["Key"]="option4",
},
[5]={
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Flash",
["Value"]="Flash:",
},
[6]={
["Type"]=2,
["Max"]=1.2,
["Min"]=0.1,
["Fraction"]=true,
["Value"]=0.8,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="How long is the flash played when the cast starts.",
["Name"]="Flash Duration",
},
[7]={
["Type"]=1,
["Name"]="Flash Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="flashColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the Flash",
},
[8]={
["Type"]=6,
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[9]={
["Type"]=5,
["Key"]="option2",
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[10]={
["Type"]=2,
["Max"]=0.5,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Name"]="Shake Duration",
["Min"]=0.1,
["Fraction"]=true,
["Value"]=0.2,
["Key"]="shakeDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[11]={
["Max"]=10,
["Desc"]="How strong is the shake.",
["Fraction"]=false,
["Value"]=5,
["Type"]=2,
["Min"]=1,
["Key"]="shakeAmplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Amplitude",
},
[12]={
["Desc"]="How fast the shake moves.",
["Fraction"]=false,
["Name"]="Shake Frequency",
["Max"]=80,
["Min"]=1,
["Value"]=40,
["Key"]="shakeFrequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
},
[13]={
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[14]={
["Type"]=5,
["Name"]="Dot Animation",
["Value"]="Dot Animation:",
["Key"]="option14",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[15]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dots around the nameplate",
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=0.56470588235294,
[2]=0.56470588235294,
[3]=0.56470588235294,
[4]=1,
},
["Key"]="dotColor",
},
[16]={
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Min"]=-10,
["Fraction"]=false,
["Type"]=2,
["Max"]=20,
["Name"]="Dot X Offset",
["Value"]=8,
["Key"]="xOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[17]={
["Type"]=2,
["Max"]=10,
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Name"]="Dot Y Offset",
["Min"]=-10,
["Key"]="yOffset",
["Value"]=3,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[18]={
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
},
[19]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
},
[20]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
},
[21]={
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
},
[22]={
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[23]={
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
},
[24]={
["Type"]=5,
["Name"]="Option 19",
["Value"]="Cast Bar",
["Key"]="option19",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[25]={
["Desc"]="Use cast bar color.",
["Type"]=4,
["Name"]="Use Cast Bar Color",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[26]={
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=0.41176470588235,
[2]=1,
[3]=0,
[4]=1,
},
["Key"]="castBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Cast bar color.",
},
[27]={
["Type"]=6,
["Key"]="option27",
["Value"]=0,
["Name"]="Option 27",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[28]={
["Name"]="Option 28",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option28",
["Value"]="Target Options",
},
[29]={
["Max"]=32,
["Desc"]="",
["Min"]=8,
["Value"]=14,
["Type"]=2,
["Fraction"]=false,
["Key"]="targetNameSize",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Text Size",
},
[30]={
["Type"]=4,
["Key"]="colorByClass",
["Value"]=true,
["Name"]="Use Class Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[31]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="textColor",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Text Color",
},
[32]={
["Value"]={
[1]=0,
[2]=0,
[3]=0,
[4]=0.98467203229666,
},
["Name"]="Background Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="targetBgColor",
},
[33]={
["Name"]="Border Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="targetBgBorderColor",
["Value"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
},
[34]={
["Type"]=2,
["Desc"]="",
["Min"]=30,
["Value"]=90,
["Name"]="Frame Width",
["Max"]=160,
["Fraction"]=false,
["Key"]="targetFrameWidth",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[35]={
["Type"]=2,
["Name"]="Frame Height",
["Value"]=20,
["Key"]="targetFrameHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=32,
["Desc"]="",
["Min"]=8,
["Fraction"]=false,
},
},
["NpcNames"]={
},
["PlaterCore"]=1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    Plater.StopDotAnimation(unitFrame.targetBox, envTable.dotAnimation)    \
    \
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame:StopFrameShake (envTable.FrameShake)    \
    \
    unitFrame.targetBox:Hide()\
end\
\
\
",
["Time"]=1625696653,
["Enabled"]=true,
["Revision"]=836,
["SpellIds"]={
[1]=354173,
},
["version"]=-1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --create a texture to use for a flash behind the cast bar\
    \
    if (not unitFrame.backGroundFlashTextureImpTarget) then\
        unitFrame.backGroundFlashTextureImpTarget =  Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\
    end\
    \
    local backGroundFlashTexture = unitFrame.backGroundFlashTextureImpTarget\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\
    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\
    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\
    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\
    \
    --create the target unit name box\
    if (not unitFrame.targetBox) then\
        unitFrame.targetBox = CreateFrame(\"frame\", unitFrame:GetName() .. \"ScriptImportantTarget\", unitFrame, \"BackdropTemplate\")\
        unitFrame.targetBox:SetSize(80, 20)\
        unitFrame.targetBox:SetFrameStrata(\"TOOLTIP\")\
        unitFrame.targetBox:Hide()\
        unitFrame.targetBox:SetPoint(\"left\", unitFrame, \"right\", 0, 0)\
        \
        unitFrame.targetBox:SetBackdrop({edgeFile = [[Interface\\Buttons\\WHITE8X8]], edgeSize = 1, bgFile = [[Interface\\AddOns\\Details\\images\\background]], tile = true, tileSize = 16})\
        unitFrame.targetBox:SetBackdropColor(.2, .2, .2, .8)\
        unitFrame.targetBox:SetBackdropBorderColor(0, 0, 0, 1)\
        \
        unitFrame.targetBoxName = unitFrame.targetBox:CreateFontString(nil, \"artwork\", \"GameFontNormal\")\
        unitFrame.targetBoxName:SetPoint(\"center\")\
    end\
    \
    function envTable.UpdateTargetBox(unitFrame, unitId)\
        local targetUnitId = unitId .. \"target\"\
        local unitName = UnitName(targetUnitId)\
        \
        if (unitName) then\
            if (scriptTable.config.colorByClass) then\
                Plater:SetFontColor(unitFrame.targetBoxName, \"white\")\
                unitName = Plater.SetTextColorByClass(targetUnitId, unitName)\
            else\
                Plater:SetFontColor(unitFrame.targetBoxName, scriptTable.config.textColor)\
            end\
            \
            unitFrame.targetBoxName:SetText(unitName)\
            Plater:SetFontSize(unitFrame.targetBoxName, scriptTable.config.targetNameSize)\
            unitFrame.targetBox:SetBackdropColor(Plater:ParseColors(scriptTable.config.targetBgColor))\
            unitFrame.targetBox:SetBackdropBorderColor(Plater:ParseColors(scriptTable.config.targetBgBorderColor))\
            unitFrame.targetBox:Show()\
            \
            unitFrame.targetBox:SetWidth(scriptTable.config.targetFrameWidth)\
            unitFrame.targetBox:SetHeight(scriptTable.config.targetFrameHeight)\
            \
            if (not Plater.HasDotAnimationPlaying(unitFrame.targetBox)) then\
                envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.targetBox, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
            end\
            \
            unitFrame.backGroundFlashTextureImpTarget:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\
            \
            return true\
            \
        end\
    end\
    \
end",
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Highlight the target name",
},
[12]={
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
["Author"]="Bombad�o-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
["SpellIds"]={
[1]=321247,
[2]=334522,
[3]=320232,
[4]=319962,
[5]=325879,
[6]=324427,
[7]=322999,
[8]=325360,
[9]=322903,
[10]=324103,
[11]=333294,
[12]=333540,
[13]=319521,
[14]=326021,
[15]=326450,
[16]=322711,
[17]=329104,
[18]=295000,
[19]=242391,
[20]=320197,
[21]=329608,
[22]=350687,
},
["Name"]="Cast - Very Important [Plater]",
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["NpcNames"]={
},
["PlaterCore"]=1,
["Revision"]=717,
["semver"]="",
["url"]="",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\
    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\
    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\
    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\
end",
["Time"]=1618996917,
["version"]=-1,
["Options"]={
[1]={
["Type"]=6,
["Name"]="Option 1",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Value"]="Plays a big animation when the cast start.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
},
[3]={
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[4]={
["Desc"]="",
["Type"]=6,
["Name"]="Option 4",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[5]={
["Type"]=5,
["Name"]="Flash",
["Value"]="Flash:",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[6]={
["Max"]=1.2,
["Desc"]="How long is the flash played when the cast starts.",
["Fraction"]=true,
["Value"]=0.8,
["Type"]=2,
["Min"]=0.1,
["Name"]="Flash Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="flashDuration",
},
[7]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the Flash",
["Type"]=1,
["Name"]="Flash Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="flashColor",
},
[8]={
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[9]={
["Type"]=5,
["Key"]="option2",
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[10]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
["Fraction"]=true,
["Name"]="Shake Duration",
["Type"]=2,
["Max"]=0.5,
["Value"]=0.2,
},
[11]={
["Value"]=5,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=10,
["Desc"]="How strong is the shake.",
["Fraction"]=false,
["Min"]=1,
["Key"]="shakeAmplitude",
},
[12]={
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Name"]="Shake Frequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=80,
["Fraction"]=false,
["Value"]=40,
["Key"]="shakeFrequency",
},
[13]={
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
},
[14]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Dot Animation",
["Value"]="Dot Animation:",
["Key"]="option14",
},
[15]={
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=0.56470588235294,
[2]=0.56470588235294,
[3]=0.56470588235294,
[4]=1,
},
["Key"]="dotColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dots around the nameplate",
},
[16]={
["Value"]=8,
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Min"]=-10,
["Name"]="Dot X Offset",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="xOffset",
["Type"]=2,
["Max"]=20,
},
[17]={
["Type"]=2,
["Max"]=10,
["Key"]="yOffset",
["Value"]=3,
["Name"]="Dot Y Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Min"]=-10,
["Fraction"]=false,
},
[18]={
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[19]={
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[20]={
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[21]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
},
[22]={
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
},
[23]={
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[24]={
["Desc"]="",
["Type"]=5,
["Name"]="Option 19",
["Value"]="Cast Bar",
["Key"]="option19",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[25]={
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Use cast bar color.",
["Type"]=4,
["Name"]="Use Cast Bar Color",
["Value"]=true,
},
[26]={
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=0.41176470588235,
[2]=1,
[3]=0,
[4]=1,
},
["Key"]="castBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Cast bar color.",
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
    \
    \
    envTable.BackgroundFlash:Play()\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\
        end\
    end\
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \
    \
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame:StopFrameShake (envTable.FrameShake)    \
    \
end\
\
\
",
["Enabled"]=true,
},
[13]={
["Enabled"]=false,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["NpcNames"]={
[1]="163520",
[2]="163618",
[3]="164506",
},
["Options"]={
[1]={
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option1",
["Value"]="Auto set a raid target Skull on the unit.",
},
[2]={
["Key"]="option2",
["Value"]=0,
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[3]={
["Desc"]="Set the mark only if the unit is in combat.",
["Type"]=4,
["Key"]="onlyInCombat",
["Value"]=false,
["Name"]="Only in Combat",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.CheckMark (unitId, unitFrame)\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    --check for marks\
    function  envTable.CheckMark (unitId, unitFrame)\
        if (not GetRaidTargetIndex(unitId)) then\
            if (scriptTable.config.onlyInCombat) then\
                if (not UnitAffectingCombat(unitId)) then\
                    return\
                end                \
            end\
            \
            SetRaidTarget(unitId, 8)\
        end       \
    end\
end\
\
\
--163520 - forsworn squad-leader\
--163618 - zolramus necromancer - The Necrotic Wake\
--164506 - anciet captain - theater of pain\
\
\
",
["url"]="",
["Desc"]="Auto set skull marker",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Revision"]=63,
["semver"]="",
["SpellIds"]={
},
["PlaterCore"]=1,
["Name"]="Auto Set Skull",
["version"]=-1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.CheckMark (unitId, unitFrame)\
end\
\
\
",
["Time"]=1604696441,
["Author"]="Aelerolor-Torghast",
["ScriptType"]=3,
["Icon"]="Interface\\Worldmap\\GlowSkull_64Grey",
},
[14]={
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["version"]=-1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \
    \
    --restore the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)    \
    \
    unitFrame.UnitImportantSkullTexture:Hide()\
end\
\
\
",
["Time"]=1604599472,
["Author"]="Izimode-Azralon",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)    \
    --change the nameplate color to this if allowed\
    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\
    envTable.NameplateColor = scriptTable.config.nameplateColor\
    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\
    \
    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\
    \
    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\
    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\
    \
    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\
    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\
    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\
    \
    unitFrame.UnitImportantSkullTexture:Hide()\
end\
\
--[=[\
\
154564 - debug\
\
Using spellIDs for multi-language support\
\
164362 - smily morsel - plaguefall\
168882 - fleeting manifestation - sanguine depths\
170234 - oppressive banner - theater of pain\
168988 - overgrowth - Mists of Tirna Scithe\
170452 - essesnce orb - torghast\
\
\
--]=]",
["Name"]="Unit - Important [Plater]",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    if (envTable.dotAnimation) then\
        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\
    end\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    unitFrame.UnitImportantSkullTexture:Show()\
end\
\
\
\
\
",
["PlaterCore"]=1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can change the nameplate color\
    if (envTable.CanChangeNameplateColor) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end\
    \
end\
\
\
\
\
",
["url"]="",
["Enabled"]=true,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["NpcNames"]={
[1]="164362",
[2]="168882",
[3]="168988",
[4]="170234",
[5]="165905",
[6]="170452",
},
["SpellIds"]={
},
["Options"]={
[1]={
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option6",
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Name"]="Option 6",
},
[3]={
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
},
[4]={
["Value"]=true,
["Name"]="Change Nameplate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="change to true to change the color",
["Type"]=4,
["Key"]="changeNameplateColor",
},
[5]={
["Name"]="Nameplate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="nameplateColor",
["Value"]={
[1]=1,
[2]=0,
[3]=0.52549019607843,
[4]=1,
},
},
[6]={
["Fraction"]=false,
["Value"]=3,
["Key"]="nameplateSizeOffset",
["Name"]="Nameplate Size Offset",
["Type"]=2,
["Desc"]="increase the nameplate height by this value",
["Min"]=0,
["Max"]=6,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[7]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[8]={
["Key"]="dotsColor",
["Value"]={
[1]=1,
[2]=0.71372549019608,
[3]=0,
[4]=1,
},
["Name"]="Dot Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
},
[9]={
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[10]={
["Type"]=5,
["Key"]="option10",
["Value"]="Skull Texture",
["Name"]="Skull Texture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[11]={
["Value"]={
[1]=1,
[2]=0.46274509803922,
[3]=0,
[4]=1,
},
["Name"]="Skull Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="skullColor",
},
[12]={
["Type"]=2,
["Max"]=1,
["Desc"]="",
["Min"]=0,
["Name"]="Alpha",
["Key"]="skullAlpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Value"]=0.2,
},
[13]={
["Desc"]="",
["Value"]=0.6,
["Min"]=0.4,
["Key"]="skullScale",
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Scale",
["Type"]=2,
["Max"]=2,
},
},
["ScriptType"]=3,
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
["Revision"]=355,
},
[15]={
["url"]="",
["Icon"]="Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    local npcInfo = envTable.npcInfo[envTable._NpcID]\
    \
    if (npcInfo and npcInfo.secondCastBar) then\
        if (npcInfo.timerId) then\
            local barObject = Plater.GetBossTimer(npcInfo.timerId)\
            if (barObject) then\
                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\
                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\
                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\
                end\
            end \
            \
        elseif (npcInfo.debuffTimer) then\
            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\
                \
                --get the debuff timeleft\
                local name = npcInfo.name\
                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\
                local startTime = expirationTime - duration\
                \
                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\
                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\
                end\
                \
            else \
                if (unitFrame.castBar2:IsShown()) then\
                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\
                    if (altCastId == npcInfo.altCastId) then\
                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\
                    end                   \
                end                              \
            end\
        end\
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Time"]=1604354364,
["semver"]="",
["Author"]="Aelerolor-Torghast",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["NpcNames"]={
[1]="164427",
[2]="164414",
[3]="164185",
[4]="164567",
[5]="165408",
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    envTable.npcInfo = {\
        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\
        \
        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\
        \
        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\
        \
        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\
        \
        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\
        \
        \
        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\
        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\
    }\
    \
    --set the castbar config\
    local config = {\
        iconTexture = \"\",\
        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\
        iconAlpha = 1,\
        iconSize = 14,\
        \
        text = \"Boom!\",\
        textSize = 9,\
        \
        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\
        color = \"silver\",\
        \
        isChanneling = false,\
        canInterrupt = false,\
        \
        height = 2,\
        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\
        \
        spellNameAnchor = {side = 3, x = 0, y = -2},\
        timerAnchor = {side = 5, x = 0, y = -2},\
    }    \
    \
    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\
        --show the cast bar\
        if (npcInfo.timerId) then\
            local barObject = Plater.GetBossTimer(npcInfo.timerId)\
            if (barObject) then\
                if (npcInfo.remaining) then\
                    local timeLeft = barObject.timer + barObject.start - GetTime()\
                    if (timeLeft > npcInfo.remaining) then\
                        return\
                    end\
                end\
                \
                config.text = npcInfo.name\
                \
                if (npcInfo.spellIcon) then\
                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\
                    config.iconTexture = iconTexture\
                else\
                    config.iconTexture = \"\"\
                end\
                \
                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\
            end\
        else\
            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \
        end\
        \
        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\
    end\
end",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    Plater.ClearAltCastBar(unitFrame.PlateFrame)\
end",
["PlaterCore"]=1,
["Name"]="Countdown",
["SpellIds"]={
},
["version"]=-1,
["Options"]={
},
["ScriptType"]=3,
["Enabled"]=true,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    local npcInfo = envTable.npcInfo[envTable._NpcID]\
    \
    if (npcInfo and npcInfo.secondCastBar) then\
        if (npcInfo.debuffTimer) then\
            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\
                \
                local name = npcInfo.name\
                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\
                \
                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\
            else\
                if (unitFrame.castBar2:IsShown()) then\
                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\
                    if (altCastId == npcInfo.altCastId) then\
                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\
                    end                   \
                end                              \
            end\
        else\
            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\
        end\
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Revision"]=206,
["Desc"]="Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
},
[16]={
["Name"]="Cast - Frontal Cone [Plater]",
["version"]=-1,
["Options"]={
[1]={
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Type"]=5,
["Key"]="option2",
["Value"]="Produces an effect to indicate the spell will hit players in front of the enemy.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Key"]="option4",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[4]={
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
},
[5]={
["Type"]=2,
["Max"]=1,
["Value"]=0.275,
["Fraction"]=true,
["Desc"]="Set the alpha of the moving arrow",
["Min"]=0,
["Name"]="Arrow Alpha",
["Key"]="arrowAlpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[6]={
["Name"]="Animation Speed",
["Value"]=0.2,
["Key"]="animSpeed",
["Fraction"]=true,
["Max"]=1,
["Desc"]="Time that takes for an arrow to travel from the to right.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Min"]=0,
},
[7]={
["Desc"]="If enabled, the arrow color will be desaturated.",
["Type"]=4,
["Key"]="desaturateArrow",
["Value"]=false,
["Name"]="Use White Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
["Time"]=1604599443,
["Desc"]="Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
["PlaterCore"]=1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\
    \
    --envTable.movingArrow.color = scriptTable.config.arrowColor\
    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\
    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\
    \
    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \
        function() \
            envTable.movingArrow:Show() \
            envTable.movingArrow:SetPoint(\"left\", 0, 0)\
        end, \
        function() envTable.movingArrow:Hide() end)\
    \
    envTable.movingAnimation:SetLooping (\"REPEAT\")\
    \
    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\
    \
    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\
end\
\
\
\
\
",
["NpcNames"]={
},
["SpellIds"]={
[1]=323489,
[2]=323496,
[3]=319941,
[4]=319592,
[5]=334266,
[6]=325258,
[7]=334913,
[8]=326221,
[9]=322936,
[10]=323236,
[11]=321834,
[12]=336752,
[13]=325418,
[14]=324667,
[15]=327233,
[16]=324368,
[17]=324205,
[18]=323943,
[19]=319713,
[20]=320596,
[21]=320729,
[22]=323608,
[23]=330614,
[24]=320063,
[25]=332708,
[26]=334023,
[27]=317231,
[28]=317943,
[29]=320966,
[30]=334053,
[31]=328458,
[32]=321968,
[33]=331718,
[34]=325793,
[35]=330453,
[36]=326997,
[37]=334051,
[38]=292903,
[39]=330843,
[40]=294173,
[41]=189200,
[42]=352833,
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["url"]="",
["Enabled"]=true,
["Revision"]=460,
["Author"]="Izimode-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
["semver"]="",
},
[17]={
["version"]=-1,
["Options"]={
},
["url"]="",
["Icon"]=1029718,
["Author"]="Celian-Sylvanas",
["Desc"]="Show above the nameplate who is the player fixated",
["SpellIds"]={
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \
    \
    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\
    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \
    \
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
--165560 = Gormling Larva - MTS\
\
\
\
\
\
\
",
["Time"]=1604239880,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
\
\
\
\
",
["NpcNames"]={
[1]="165560",
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["semver"]="",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["PlaterCore"]=1,
["Name"]="Fixate [Plater]",
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    local targetName = UnitName (unitId .. \"target\");\
    if (targetName) then\
        local _, class = UnitClass (unitId .. \"target\");\
        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\
        envTable.FixateTarget.text = targetName;\
        \
        envTable.FixateTarget:Show();\
        envTable.FixateIcon:Show();\
    end    \
end\
\
\
",
["Enabled"]=true,
["Revision"]=269,
},
[18]={
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["semver"]="",
["Author"]="Tercioo-Sylvanas",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\", 7)\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
\
\
",
["NpcNames"]={
},
["Revision"]=1060,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["SpellIds"]={
[1]=338353,
[2]=334748,
[3]=334749,
[4]=320784,
[5]=341352,
[6]=341520,
[7]=341522,
[8]=336005,
[9]=339777,
[10]=331933,
[11]=326617,
[12]=324914,
[13]=324776,
[14]=326046,
[15]=340634,
[16]=319070,
[17]=328295,
[18]=317936,
[19]=327413,
[20]=319654,
[21]=323821,
[22]=320772,
[23]=324293,
[24]=330562,
[25]=330868,
[26]=341902,
[27]=342139,
[28]=342675,
[29]=323190,
[30]=332836,
[31]=327648,
[32]=328217,
[33]=322938,
[34]=340544,
[35]=325876,
[36]=325700,
[37]=323552,
[38]=332666,
[39]=332612,
[40]=332706,
[41]=340026,
[42]=294171,
[43]=292910,
[44]=294165,
[45]=338871,
[46]=330813,
[47]=335694,
[48]=327461,
[49]=329787,
[50]=304946,
[51]=15245,
[52]=276754,
[53]=304831,
[54]=277036,
[55]=320657,
[56]=294362,
[57]=270248,
[58]=292926,
[59]=350421,
[60]=352158,
[61]=349985,
},
["PlaterCore"]=1,
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\
        return\
    end\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
\
\
",
["Time"]=1618996691,
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["url"]="",
["Enabled"]=true,
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
["Name"]="Cast - Big Alert [Plater]",
["Options"]={
[1]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Name"]="Option 2",
["Value"]="Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Desc"]="",
["Type"]=5,
["Name"]="Option 3",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[4]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
},
[6]={
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
},
[7]={
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
},
[8]={
["Name"]="Flash Duration",
["Fraction"]=true,
["Type"]=2,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Value"]=0.4,
["Max"]=1,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[9]={
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Value"]=5,
["Name"]="Cast Bar Height Mod",
["Fraction"]=false,
["Max"]=10,
["Min"]=0,
["Key"]="castBarHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Name"]="Shake Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Key"]="shakeDuration",
["Min"]=0.1,
["Value"]=0.2,
},
[11]={
["Max"]=100,
["Desc"]="How strong is the shake.",
["Min"]=2,
["Key"]="shakeAmplitude",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=8,
["Name"]="Shake Amplitude",
},
[12]={
["Desc"]="How fast the shake moves.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Frequency",
["Type"]=2,
["Max"]=80,
["Min"]=1,
["Key"]="shakeFrequency",
["Value"]=40,
["Fraction"]=false,
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\
        return\
    end    \
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
",
},
[19]={
["Name"]="M+ Spiteful",
["Options"]={
[1]={
["Desc"]="",
["Type"]=5,
["Key"]="option12",
["Value"]="Time to Die",
["Name"]="Time to Die",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[2]={
["Type"]=2,
["Max"]=50,
["Desc"]="",
["Min"]=10,
["Key"]="bgWidth",
["Value"]=27,
["Name"]="Width",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[3]={
["Key"]="bgColor",
["Value"]={
[1]=0.50588235294118,
[2]=0.070588235294118,
[3]=1,
[4]=1,
},
["Name"]="Background Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
},
[4]={
["Type"]=2,
["Max"]=24,
["Desc"]="",
["Value"]=8,
["Name"]="Text Size",
["Min"]=7,
["Key"]="textSize",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[5]={
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
["Name"]="Text Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="textColor",
},
[6]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
},
[7]={
["Name"]="Targeting",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option11",
["Value"]="Targeting",
},
[8]={
["Type"]=4,
["Name"]="Show Target instead of Name",
["Value"]=true,
["Key"]="switchTargetName",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[9]={
["Type"]=4,
["Name"]="Change Color if targeting You",
["Value"]=true,
["Key"]="useTargetingColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[10]={
["Type"]=1,
["Name"]="Color if targeting You",
["Value"]={
[1]=0.070588235294118,
[2]=0.61960784313725,
[3]=0,
[4]=1,
},
["Key"]="targetingColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[11]={
["Value"]=0,
["Name"]="Option 11",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option11",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    if (unitFrame.spitefulTexture) then\
        unitFrame.spitefulText:Hide()\
        unitFrame.spitefulTexture:Hide()    \
        unitFrame.roleIcon:Hide()\
        unitFrame.targetName:Hide()\
    end\
end\
\
\
\
\
\
",
["Icon"]=135945,
["Enabled"]=true,
["semver"]="",
["Desc"]="Time to die Spiteful affix",
["NpcNames"]={
[1]="174773",
},
["PlaterCore"]=1,
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
["Time"]=1611844883,
["url"]="",
["Author"]="Symantec-Azralon",
["SpellIds"]={
},
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    if (not unitFrame.spitefulTexture) then\
        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\
        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\
        unitFrame.spitefulTexture:SetSize(27, 14)\
        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\
        \
        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\
        DetailsFramework:SetFontFace (unitFrame.spitefulText, \"2002\")\
        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\
        unitFrame.spitefulText:SetJustifyH(\"right\")\
        \
        unitFrame.roleIcon = unitFrame:CreateTexture(nil, \"overlay\")\
        unitFrame.roleIcon:SetPoint(\"left\", unitFrame.healthBar, \"left\", 2, 0)\
        unitFrame.targetName = unitFrame:CreateFontString(nil, \"overlay\", \"GameFontNormal\")\
        unitFrame.targetName:SetPoint(\"left\", unitFrame.roleIcon, \"right\", 2, 0)\
        \
        unitFrame.spitefulTexture:Hide()\
        unitFrame.spitefulText:Hide()\
    end\
    \
    function envTable.UpdateSpitefulWidget(unitFrame)\
        \
        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\
        unitFrame.spitefulTexture:SetColorTexture(r, g, b, a)\
        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \
        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\
        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\
        \
        local currentHealth = unitFrame.healthBar.CurrentHealth\
        local maxHealth = unitFrame.healthBar.CurrentHealthMax\
        \
        local healthPercent = currentHealth / maxHealth * 100\
        local timeToDie = format(\"%.1fs\", healthPercent / 8)\
        unitFrame.spitefulText:SetText(timeToDie)\
        \
        unitFrame.spitefulText:Show()\
        unitFrame.spitefulTexture:Show()\
        \
        if scriptTable.config.switchTargetName then\
            local plateFrame = unitFrame.PlateFrame\
            \
            local target = UnitName(unitFrame.namePlateUnitToken .. \"target\") or UnitName(unitFrame.namePlateUnitToken)\
            \
            if (target and target ~= \"\") then\
                local _, class = UnitClass(unitFrame.namePlateUnitToken .. \"target\")\
                if (class) then\
                    target = DetailsFramework:AddClassColorToText(target, class)\
                end\
                \
                local role = UnitGroupRolesAssigned(unitFrame.namePlateUnitToken .. \"target\")\
                if (role and role ~= \"NONE\") then\
                    target = DetailsFramework:AddRoleIconToText(target, role)\
                end\
                \
                plateFrame.namePlateUnitName = target\
                Plater.UpdateUnitName(plateFrame)\
            end\
        end\
        \
        if scriptTable.config.useTargetingColor then\
            local targeted = UnitIsUnit(unitFrame.namePlateUnitToken .. \"target\", \"player\")\
            if targeted then\
                Plater.SetNameplateColor (unitFrame, scriptTable.config.targetingColor)\
            else\
                Plater.RefreshNameplateColor(unitFrame)\
            end\
        end\
    end\
end",
["Revision"]=186,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
},
[20]={
["PlaterCore"]=1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    local currentPower = UnitPower(unitId)\
    \
    if (currentPower and currentPower > 0) then\
        local maxPower = UnitPowerMax (unitId)\
        local percent = floor (currentPower / maxPower * 100)\
        \
        envTable.EnergyAmount.text = \"\" .. percent;\
        \
        if (scriptTable.config.showLater) then\
            local alpha = (percent -80) * 5\
            alpha = alpha / 100\
            alpha = max(0, alpha)\
            envTable.EnergyAmount:SetAlpha(alpha)\
            \
        else\
            envTable.EnergyAmount:SetAlpha(1.0)\
        end\
        \
        \
    else\
        envTable.EnergyAmount.text = \"\"\
    end\
end\
\
\
\
\
\
\
\
\
",
["Time"]=1604357453,
["semver"]="",
["Revision"]=233,
["SpellIds"]={
},
["Icon"]=136048,
["Enabled"]=true,
["Author"]="Celian-Sylvanas",
["Name"]="Unit - Show Energy [Plater]",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\
    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \
    \
    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\
    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\
    envTable.EnergyAmount.outline = scriptTable.config.outline\
    \
    \
end\
\
--[=[\
\
164406 = Shriekwing\
164407 = Sludgefist\
162100 = kryxis the voracious\
162099 = general kaal - sanguine depths\
162329 = Xav the Unfallen - threater of pain\
--]=]",
["ScriptType"]=3,
["url"]="",
["NpcNames"]={
[1]="164406",
[2]="164407",
[3]="162100",
[4]="162099",
[5]="162329",
[6]="164558",
},
["version"]=-1,
["Options"]={
[1]={
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Desc"]="",
["Type"]=5,
["Key"]="option3",
["Value"]="Show the power of the unit above the nameplate.",
["Name"]="script desc",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[3]={
["Value"]="Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="add trigger",
},
[4]={
["Type"]=6,
["Key"]="option2",
["Value"]=0,
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[5]={
["Type"]=4,
["Key"]="showLater",
["Value"]=true,
["Name"]="Show at 80% of Energy",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the energy won't start showing until the unit has 80% energy.",
},
[6]={
["Type"]=6,
["Name"]="Option 2",
["Value"]=0,
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Fraction"]=false,
["Type"]=2,
["Max"]=32,
["Min"]=8,
["Value"]=16,
["Key"]="fontSize",
["Desc"]="Text size.",
["Name"]="Text Size",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[8]={
["Type"]=1,
["Key"]="fontColor",
["Value"]={
[1]=0.80392156862745,
[2]=0.80392156862745,
[3]=0.80392156862745,
[4]=1,
},
["Name"]="Font Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the text.",
},
[9]={
["Type"]=4,
["Key"]="outline",
["Value"]=true,
["Name"]="Enable Text Outline",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the text uses outline.",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Hide()\
end\
\
\
",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Show the energy amount above the nameplate.",
},
[21]={
["ScriptType"]=3,
["PlaterCore"]=1,
["Options"]={
},
["Enabled"]=true,
["Revision"]=266,
["Time"]=1604087921,
["Author"]="Tecno-Azralon",
["Desc"]="When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
["NpcNames"]={
},
["SpellIds"]={
[1]="spawn of g'huun",
[2]="smuggled crawg",
[3]="sergeant bainbridge",
[4]="blacktooth scrapper",
[5]="irontide grenadier",
[6]="feral bloodswarmer",
[7]="earthrager",
[8]="crawler mine",
[9]="rezan",
},
["Name"]="Fixate On You [Plater]",
["version"]=-1,
["ConstructorCode"]="--todo: add npc ids for multilanguage support\
\
function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.TextAboveNameplate = \"** On You **\"\
    envTable.NameplateColor = \"green\"\
    \
    --label to show the text above the nameplate\
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\
    \
    --the spell casted by the npc in the trigger list needs to be in the list below as well\
    local spellList = {\
        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\
        \
    }\
    \
    --build the list with localized spell names\
    envTable.FixateDebuffs = {}\
    for spellID, enUSSpellName in pairs (spellList) do\
        local localizedSpellName = GetSpellInfo (spellID)\
        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\
    end\
    \
    --debug - smuggled crawg\
    envTable.FixateDebuffs [\"Jagged Maw\"] = true\
    \
end\
\
--[=[\
NpcIDs:\
136461: Spawn of G'huun (mythic uldir G'huun)\
\
--]=]\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:SetText (\"\")\
    envTable.FixateTarget:Hide()\
    \
    envTable.IsFixated = false\
    \
    Plater.RefreshNameplateColor (unitFrame)\
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --swap this to true when it is fixated\
    local isFixated = false\
    \
    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\
    for debuffId = 1, 40 do\
        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\
        \
        --cancel the loop if there's no more debuffs on the player\
        if (not name) then \
            break \
        end\
        \
        --check if the owner of the debuff is this unit\
        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\
            --the debuff the player has, has been placed by this unit, set the name above the unit name\
            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\
            envTable.FixateTarget:Show()\
            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\
            isFixated = true\
            \
            if (not envTable.IsFixated) then\
                envTable.IsFixated = true\
                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\
            end\
        end\
        \
    end\
    \
    --check if the nameplate color is changed but isn't fixated any more\
    if (not isFixated and envTable.IsFixated) then\
        --refresh the nameplate color\
        Plater.RefreshNameplateColor (unitFrame)\
        --reset the text\
        envTable.FixateTarget:SetText (\"\")\
        \
        envTable.IsFixated = false\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["url"]="",
["Icon"]=841383,
["semver"]="",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
},
},
["number_region_first_run"]=true,
["saved_cvars"]={
["nameplateShowFriendlyMinions"]="0",
["nameplateLargeTopInset"]="0.085",
["nameplateSelectedScale"]="1.15",
["nameplateTargetRadialPosition"]="1",
["clampTargetNameplateToScreen"]="1",
["nameplateShowFriendlyGuardians"]="0",
["NamePlateHorizontalScale"]="1",
["nameplateShowFriendlyPets"]="0",
["nameplateResourceOnTarget"]="0",
["nameplateMaxDistance"]="100",
["ShowNamePlateLoseAggroFlash"]="1",
["NamePlateVerticalScale"]="1",
["nameplatePersonalHideDelaySeconds"]="0.2",
["nameplateMinScale"]="1",
["nameplateSelectedAlpha"]="1",
["nameplateShowEnemyMinus"]="1",
["nameplateMotionSpeed"]="0.05",
["NamePlateClassificationScale"]="1",
["nameplateShowEnemyMinions"]="1",
["nameplateOtherTopInset"]="0.085",
["ShowClassColorInNameplate"]="1",
["nameplateShowFriendlyTotems"]="0",
["nameplateShowFriendlyNPCs"]="0",
["nameplateShowAll"]="1",
["nameplateTargetBehindMaxDistance"]="30",
},
["number_region"]="eastasia",
["login_counter"]=1,
["plate_config"]={
["global_health_width"]=112,
["global_health_height"]=12,
},
["aura_tracker"]={
["buff_tracked"]={
[209859]=true,
},
},
["ui_parent_scale_tune"]=1.2500000745058,
},
["MyNewProfile"]={
["extra_icon_width"]=22,
["target_highlight_height"]=18,
["aura_frame2_anchor"]={
["y"]=9,
["side"]=7,
},
["cast_statusbar_texture"]="Skyline",
["first_run3"]=true,
["minor_height_scale"]=0.99999994039536,
["hook_data"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
["Enabled"]=false,
["Revision"]=363,
["Name"]="Attacking Specific Unit [Plater]",
["version"]=-1,
["OptionsValues"]={
},
["LastHookEdited"]="",
["Hooks"]={
["Initialization"]="function (modTable)\
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    modTable.changeBarColor = modTable.config.changeBarColor\
    modTable.changeBorderColor = modTable.config.changeBorderColor\
    modTable.resetColors = modTable.config.resetColors\
    \
    modTable.ListOfNpcs = {\
        [61146] = modTable.config.color, --\"olive\", --monk statue npcID\
        [103822] = modTable.config.color, --\"olive\", --druid treant npcID\
        [15352] = modTable.config.color, --\"olive\", --shaman elemental\
        [95072] = modTable.config.color, --\"olive\", --shaman greater earth elemental npcID\
        [61056] = modTable.config.color, --\"olive\", --shaman primal earth elemental npcID\
        \
    }\
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable, modTable)\
    if not unitId then\
        return\
    end\
    --get the GUID of the target of the unit\
    local targetGUID = UnitGUID (unitId .. \"target\")\
    \
    if (targetGUID) then\
        \
        --get the npcID of the target\
        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\
        local unitName = UnitName (unitId .. \"target\")\
        local unitNameLower = string.lower (unitName)\
        \
        --check if the npcID of this unit is in the npc list \
        local color = modTable.ListOfNpcs [npcID] or modTable.ListOfNpcs [unitName] or modTable.ListOfNpcs [unitNameLower]\
        \
        if color then\
            if modTable.changeBarColor then\
                Plater.SetNameplateColor (unitFrame, color)\
            end\
            if modTable.changeBorderColor then\
                Plater.SetBorderColor (unitFrame, color)\
            end\
            unitFrame.attackingSpecificUnitFromMod = true\
        elseif unitFrame.attackingSpecificUnitFromMod and modTable.resetColors then\
            if modTable.changeBorderColor then\
                Plater.SetBorderColor (unitFrame)\
            end\
            if modTable.changeBarColor then\
                Plater.RefreshNameplateColor (unitFrame)\
            end\
            unitFrame.attackingSpecificUnitFromMod = false\
        end\
    end\
end",
},
["LoadConditions"]={
["group"]={
},
["pvptalent"]={
},
["race"]={
},
["encounter_ids"]={
},
["talent"]={
},
["map_ids"]={
},
["role"]={
},
["affix"]={
},
["spec"]={
},
["class"]={
},
},
["semver"]="",
["Author"]="Kastfall-Azralon",
["Time"]=1620377377,
["url"]="",
["PlaterCore"]=1,
["HooksTemp"]={
},
["Options"]={
[1]={
["Value"]={
[1]=0.50196078431373,
[2]=0.50196078431373,
[3]=0,
[4]=1,
},
["Name"]="Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="color",
},
[2]={
["Type"]=4,
["Key"]="changeBarColor",
["Value"]=true,
["Name"]="Change Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[3]={
["Value"]=false,
["Name"]="Change Border Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Key"]="changeBorderColor",
},
[4]={
["Type"]=4,
["Key"]="resetColors",
["Value"]=true,
["Name"]="Reset Colors",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
},
["Desc"]="Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
},
[2]={
["Desc"]="Hide neutral units, show when selected, see the constructor script for options.",
["Hooks"]={
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat) then\
            envTable.ShowNameplate (unitFrame)\
        end\
    end\
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.OnlyInOpenWorld = true;\
    envTable.ShowInCombat = true;\
    \
    --consts\
    envTable.REACTION_NEUTRAL = 4;\
    \
    --functions to hide and show the healthBar\
    function envTable.HideNameplate (unitFrame)\
        Plater.HideHealthBar (unitFrame)\
        Plater.DisableHighlight (unitFrame)\
        envTable.IsHidden = true\
    end\
    \
    function envTable.ShowNameplate (unitFrame)\
        Plater.ShowHealthBar (unitFrame)\
        Plater.EnableHighlight (unitFrame)\
        envTable.IsHidden = false\
    end\
    \
end\
\
\
\
\
",
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat) then\
            envTable.HideNameplate (unitFrame)\
        end\
    end\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end\
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat and InCombatLockdown()) then\
            return\
        end\
        \
        envTable.HideNameplate (unitFrame)\
    end\
    \
end\
\
\
\
\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat and InCombatLockdown()) then\
            return\
        end\
        \
        --check the unit reaction\
        if (unitFrame.namePlateIsTarget) then\
            envTable.ShowNameplate (unitFrame)\
            \
        else\
            envTable.HideNameplate (unitFrame)\
            \
        end    \
    end\
    \
end\
\
\
\
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        envTable.ShowNameplate (unitFrame)\
    end\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --when plater finishes an update on the nameplate\
    --check within the envTable if the healthBar of this nameplate should be hidden\
    if (envTable.IsHidden) then\
        if (unitFrame.healthBar:IsShown()) then\
            envTable.HideNameplate (unitFrame)\
        end\
    end\
    \
end\
\
\
\
\
",
},
["PlaterCore"]=1,
["Time"]=1553450458,
["Options"]={
},
["Name"]="Hide Neutral Units [Plater]",
["LastHookEdited"]="Constructor",
["Revision"]=95,
["OptionsValues"]={
},
["HooksTemp"]={
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat) then\
            envTable.HideNameplate (unitFrame)\
        end\
    end\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end\
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat and InCombatLockdown()) then\
            return\
        end\
        \
        envTable.HideNameplate (unitFrame)\
    end\
    \
end\
\
\
\
\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat and InCombatLockdown()) then\
            return\
        end\
        \
        --check the unit reaction\
        if (unitFrame.namePlateIsTarget) then\
            envTable.ShowNameplate (unitFrame)\
            \
        else\
            envTable.HideNameplate (unitFrame)\
            \
        end    \
    end\
    \
end\
\
\
\
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        envTable.ShowNameplate (unitFrame)\
    end\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --when plater finishes an update on the nameplate\
    --check within the envTable if the healthBar of this nameplate should be hidden\
    if (envTable.IsHidden) then\
        if (unitFrame.healthBar:IsShown()) then\
            envTable.HideNameplate (unitFrame)\
        end\
    end\
    \
end\
\
\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\
        \
        --plater already handle this\
        if (unitFrame.PlayerCannotAttack) then\
            return\
        end    \
        \
        --check if is only open world\
        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\
            return \
        end\
        \
        --check for only in combat\
        if (envTable.ShowInCombat) then\
            envTable.ShowNameplate (unitFrame)\
        end\
    end\
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.OnlyInOpenWorld = true;\
    envTable.ShowInCombat = true;\
    \
    --consts\
    envTable.REACTION_NEUTRAL = 4;\
    \
    --functions to hide and show the healthBar\
    function envTable.HideNameplate (unitFrame)\
        Plater.HideHealthBar (unitFrame)\
        Plater.DisableHighlight (unitFrame)\
        envTable.IsHidden = true\
    end\
    \
    function envTable.ShowNameplate (unitFrame)\
        Plater.ShowHealthBar (unitFrame)\
        Plater.EnableHighlight (unitFrame)\
        envTable.IsHidden = false\
    end\
    \
end\
\
\
\
\
",
},
["Author"]="Izimode-Azralon",
["Enabled"]=false,
["LoadConditions"]={
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["affix"]={
},
["talent"]={
},
["role"]={
},
["pvptalent"]={
},
},
["Icon"]=1990989,
},
[3]={
["HooksTemp"]={
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    envTable.CanShow = false;\
    envTable.TargetAmount:SetText (\"\")\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --when a nameplate is added to the screen check if the player is in combat\
    if (InCombatLockdown()) then\
        --player is in combat, check if can check amount of targets\
        envTable.CanShow = envTable.CanShowTargetAmount();\
        \
    else\
        envTable.CanShow = false; \
    end\
    \
    envTable.TargetAmount:SetText (\"\");\
    \
end",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.TargetAmount:SetText (\"\");\
    envTable.CanShow = false;\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --if the script is allowed to show the amount of targets\
    --also check if the unit is in combat\
    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\
        \
        --check if can update the amount of targets following the cooldown set in the constructor script\
        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\
        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\
        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\
            return\
        else\
            \
            --reset the cooldown interval to check the amount of target again\
            envTable.UpdateCooldown = 0\
            \
            --get the amount of targets\
            local amount;\
            if (envTable.InRaid) then\
                amount = envTable.NumTargetsInRaid (unitFrame)      \
                \
            elseif (envTable.InParty) then\
                amount = envTable.NumTargetsInParty (unitFrame)   \
                \
            else\
                envTable.TargetAmount:SetText (\"\")\
                return\
            end\
            \
            --update the amount text\
            if (amount == 0) then\
                envTable.TargetAmount:SetText (\"\")\
            else\
                envTable.TargetAmount:SetText (amount)\
            end\
            \
        end\
    end\
end\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can show the amount of targets\
    envTable.CanShow = envTable.CanShowTargetAmount();\
    \
    if (not envTable.CanShow) then\
        envTable.TargetAmount:SetText (\"\") \
    end\
end\
\
\
\
\
",
["Constructor"]="--all gray text like this are comments and do not run as code\
--build the settings and basic functions for the hook\
\
function (self, unitId, unitFrame, envTable)\
    \
    --declare setting variables:\
    local textColor = \"orange\";\
    local textSize = 12;\
    \
    local showInRaid = true;\
    local showInDungeon = true;\
    local showInArena = false;\
    local showInBattleground = false;\
    local showInOpenWorld = true;\
    \
    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\
    \
    local anchor = {\
        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\
        x = 4, --x offset\
        y = 0, --y offset\
    };\
    \
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------\
    \
    \
    --frames:\
    \
    --create the text that will show the amount of people targeting the unit\
    if (not  unitFrame.healthBar.TargetAmount) then\
        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\
        Plater.SetAnchor (envTable.TargetAmount, anchor);\
        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\
    end\
    \
    --in case Plater wipes the envTable\
    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------           \
    --private variables (they will be used in the other scripts within this hook)\
    envTable.CanShow = false;\
    envTable.UpdateCooldown = 0;\
    envTable.InRaid = false;\
    envTable.InParty = false;\
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------           \
    --functions\
    \
    --update the InRaid or InParty proprieties\
    function envTable.UpdateGroupType()\
        if (IsInRaid()) then\
            envTable.InRaid = true;\
            envTable.InParty = false;     \
            \
        elseif (IsInGroup()) then\
            envTable.InRaid = false;\
            envTable.InParty = true;   \
            \
        else\
            envTable.InRaid = false;            \
            envTable.InParty = false;\
        end\
    end\
    \
    --this function controls if the amount of targets can show following the settings in the top of this script\
    function envTable.CanShowTargetAmount()\
        \
        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\
        \
        if (showInRaid and instanceType == \"raid\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInDungeon and instanceType == \"party\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInArena and instanceType == \"arena\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInBattleground and instanceType == \"pvp\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInOpenWorld and instanceType == \"none\") then\
            envTable.UpdateGroupType()\
            if (envTable.InRaid or envTable.InParty) then\
                return true\
            end\
        end\
        \
        return false\
    end\
    \
    --get the amount of player targetting the unit in raid or party\
    function envTable.NumTargetsInRaid (unitFrame)\
        local amount = 0\
        for i = 1, GetNumGroupMembers() do\
            local unit = \"raid\" .. i .. \"target\"\
            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
                amount = amount + 1\
            end\
        end\
        \
        return amount\
    end\
    \
    function envTable.NumTargetsInParty()\
        local amount = 0\
        for i = 1, GetNumGroupMembers() - 1 do\
            local unit = \"party\" .. i .. \"target\"\
            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
                amount = amount + 1\
            end\
        end\
        \
        local unit = \"playertarget\"\
        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
            amount = amount + 1\
        end        \
        \
        return amount\
    end\
    \
end",
},
["Hooks"]={
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    envTable.CanShow = false;\
    envTable.TargetAmount:SetText (\"\")\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --when a nameplate is added to the screen check if the player is in combat\
    if (InCombatLockdown()) then\
        --player is in combat, check if can check amount of targets\
        envTable.CanShow = envTable.CanShowTargetAmount();\
        \
    else\
        envTable.CanShow = false; \
    end\
    \
    envTable.TargetAmount:SetText (\"\");\
    \
end",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.TargetAmount:SetText (\"\");\
    envTable.CanShow = false;\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --if the script is allowed to show the amount of targets\
    --also check if the unit is in combat\
    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\
        \
        --check if can update the amount of targets following the cooldown set in the constructor script\
        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\
        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\
        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\
            return\
        else\
            \
            --reset the cooldown interval to check the amount of target again\
            envTable.UpdateCooldown = 0\
            \
            --get the amount of targets\
            local amount;\
            if (envTable.InRaid) then\
                amount = envTable.NumTargetsInRaid (unitFrame)      \
                \
            elseif (envTable.InParty) then\
                amount = envTable.NumTargetsInParty (unitFrame)   \
                \
            else\
                envTable.TargetAmount:SetText (\"\")\
                return\
            end\
            \
            --update the amount text\
            if (amount == 0) then\
                envTable.TargetAmount:SetText (\"\")\
            else\
                envTable.TargetAmount:SetText (amount)\
            end\
            \
        end\
    end\
end\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can show the amount of targets\
    envTable.CanShow = envTable.CanShowTargetAmount();\
    \
    if (not envTable.CanShow) then\
        envTable.TargetAmount:SetText (\"\") \
    end\
end\
\
\
\
\
",
["Constructor"]="--all gray text like this are comments and do not run as code\
--build the settings and basic functions for the hook\
\
function (self, unitId, unitFrame, envTable)\
    \
    --declare setting variables:\
    local textColor = \"orange\";\
    local textSize = 12;\
    \
    local showInRaid = true;\
    local showInDungeon = true;\
    local showInArena = false;\
    local showInBattleground = false;\
    local showInOpenWorld = true;\
    \
    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\
    \
    local anchor = {\
        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\
        x = 4, --x offset\
        y = 0, --y offset\
    };\
    \
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------\
    \
    \
    --frames:\
    \
    --create the text that will show the amount of people targeting the unit\
    if (not  unitFrame.healthBar.TargetAmount) then\
        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\
        Plater.SetAnchor (envTable.TargetAmount, anchor);\
        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\
    end\
    \
    --in case Plater wipes the envTable\
    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------           \
    --private variables (they will be used in the other scripts within this hook)\
    envTable.CanShow = false;\
    envTable.UpdateCooldown = 0;\
    envTable.InRaid = false;\
    envTable.InParty = false;\
    \
    ---------------------------------------------------------------------------------------------------------------------------------------------           \
    --functions\
    \
    --update the InRaid or InParty proprieties\
    function envTable.UpdateGroupType()\
        if (IsInRaid()) then\
            envTable.InRaid = true;\
            envTable.InParty = false;     \
            \
        elseif (IsInGroup()) then\
            envTable.InRaid = false;\
            envTable.InParty = true;   \
            \
        else\
            envTable.InRaid = false;            \
            envTable.InParty = false;\
        end\
    end\
    \
    --this function controls if the amount of targets can show following the settings in the top of this script\
    function envTable.CanShowTargetAmount()\
        \
        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\
        \
        if (showInRaid and instanceType == \"raid\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInDungeon and instanceType == \"party\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInArena and instanceType == \"arena\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInBattleground and instanceType == \"pvp\") then\
            envTable.UpdateGroupType()\
            return true\
        end\
        \
        if (showInOpenWorld and instanceType == \"none\") then\
            envTable.UpdateGroupType()\
            if (envTable.InRaid or envTable.InParty) then\
                return true\
            end\
        end\
        \
        return false\
    end\
    \
    --get the amount of player targetting the unit in raid or party\
    function envTable.NumTargetsInRaid (unitFrame)\
        local amount = 0\
        for i = 1, GetNumGroupMembers() do\
            local unit = \"raid\" .. i .. \"target\"\
            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
                amount = amount + 1\
            end\
        end\
        \
        return amount\
    end\
    \
    function envTable.NumTargetsInParty()\
        local amount = 0\
        for i = 1, GetNumGroupMembers() - 1 do\
            local unit = \"party\" .. i .. \"target\"\
            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
                amount = amount + 1\
            end\
        end\
        \
        local unit = \"playertarget\"\
        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\
            amount = amount + 1\
        end        \
        \
        return amount\
    end\
    \
end",
},
["LoadConditions"]={
["talent"]={
},
["class"]={
},
["pvptalent"]={
},
["race"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["affix"]={
},
["encounter_ids"]={
},
},
["Time"]=1551825362,
["LastHookEdited"]="Constructor",
["Author"]="Izimode-Azralon",
["Desc"]="Show how many raid members are targeting the unit",
["Icon"]=1966587,
["OptionsValues"]={
},
["PlaterCore"]=1,
["Enabled"]=false,
["Revision"]=185,
["Options"]={
},
["Name"]="Players Targeting a Target [Plater]",
},
[4]={
["PlaterCore"]=1,
["LoadConditions"]={
["talent"]={
},
["pvptalent"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["role"]={
},
["affix"]={
},
},
["OptionsValues"]={
},
["Author"]="Izimode-Azralon",
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\
    \
    envTable.TargetColor = \"purple\"\
    --envTable.TargetColor = \"#FF00FF\"\
    --envTable.TargetColor = {252/255, 0/255, 254/255}\
    \
    function envTable.UpdateColor (unitFrame)\
        --do not change the color of the personal bar\
        if (not unitFrame.IsSelf) then\
            \
            --if this nameplate the current target of the player?\
            if (unitFrame.namePlateIsTarget) then\
                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\
            else\
                --refresh the nameplate color\
                Plater.RefreshNameplateColor (unitFrame)\
            end\
        end\
    end\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateColor (unitFrame)\
end",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateColor (unitFrame)\
end",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateColor (unitFrame)\
end\
\
\
\
\
\
\
\
\
\
\
",
},
["Enabled"]=false,
["Name"]="Current Target Color [Plater]",
["Icon"]=878211,
["Revision"]=93,
["HooksTemp"]={
},
["Desc"]="Changes the target color to the color set in the constructor script.",
["Options"]={
},
["Time"]=1552354619,
["LastHookEdited"]="",
},
[5]={
["LastHookEdited"]="",
["Time"]=1621935143,
["Icon"]=135426,
["version"]=-1,
["url"]="",
["Enabled"]=false,
["Options"]={
},
["semver"]="",
["Author"]="Izimode-Azralon",
["HooksTemp"]={
},
["OptionsValues"]={
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --settings\
    local anchors = {\
        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\
    }\
    \
    local sizes = {\
        width = 12,\
        height = 12,\
        scale = 1,\
    }\
    \
    local textures = {\
        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\
        \
        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\
    }\
    if WOW_PROJECT_ID ~= WOW_PROJECT_MAINLINE then\
        textures = {\
            backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
            backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\
            \
            comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
            comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\
        }\
    end\
    \
    local frameLevel = 1000\
    local frameStrata = \"high\"    \
    \
    --private\
    do\
        --store combo points frames on this table\
        envTable.ComboPoints = {}\
        --save when the player changed talents or spec\
        envTable.LastPlayerTalentUpdate = GetTime()\
        --save when this nameplate got a combo point amount and alignment update        \
        \
        --build combo points frame anchor (combo point are anchored to this)\
        if (not unitFrame.PlaterComboPointFrame) then\
            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\
            hostFrame.ComboPointFramesPool = {}\
            unitFrame.PlaterComboPointFrame = hostFrame\
            envTable.ComboPointFrame = hostFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            \
            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\
            \
            --animations\
            local onPlayShowAnimation = function (animation)\
                --stop the hide animation if it's playing\
                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().HideAnimation:Stop()\
                end\
                \
                animation:GetParent():Show()\
            end\
            \
            local onPlayHideAnimation = function (animation)\
                --stop the show animation if it's playing\
                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().ShowAnimation:Stop()\
                end\
            end        \
            local onStopHideAnimation = function (animation)\
                animation:GetParent():Hide()       \
            end\
            \
            local createAnimations = function (comboPoint)\
                --on show\
                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\
                \
                --on hide\
                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\
            end\
            \
            --build combo point frame        \
            for i =1, 10 do \
                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\
                f:SetSize (sizes.width, sizes.height)\
                tinsert (envTable.ComboPoints, f)\
                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\
                \
                local backgroundTexture = f:CreateTexture (nil, \"background\")\
                backgroundTexture:SetTexture (textures.backgroundTexture)\
                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\
                backgroundTexture:SetSize (sizes.width, sizes.height)\
                backgroundTexture:SetPoint (\"center\")\
                \
                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\
                comboPointTexture:SetTexture (textures.comboPointTexture)\
                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\
                \
                comboPointTexture:SetSize (sizes.width, sizes.height)\
                comboPointTexture:SetPoint (\"center\")\
                comboPointTexture:Hide()            \
                \
                f.IsActive = false\
                \
                f.backgroundTexture = backgroundTexture\
                f.comboPointTexture = comboPointTexture\
                \
                createAnimations (f)\
            end\
            \
        else\
            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\
            \
        end            \
        \
        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\
        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\
        \
        function envTable.UpdateComboPoints()\
            local comboPoints = GetComboPoints(\"player\", \"target\")\
            --UnitPower (\"player\", Enum.PowerType.ComboPoints)\
            \
            for i = 1, envTable.TotalComboPoints do\
                local thisComboPoint = envTable.ComboPoints [i]\
                \
                if (i <= comboPoints ) then\
                    --combo point enabled\
                    if (not thisComboPoint.IsActive) then\
                        thisComboPoint.ShowAnimation:Play()\
                        thisComboPoint.IsActive = true\
                        \
                    end\
                    \
                else\
                    --combo point disabled\
                    if (thisComboPoint.IsActive) then\
                        thisComboPoint.HideAnimation:Play()\
                        thisComboPoint.IsActive = false\
                        \
                    end\
                end\
            end\
            \
            \
        end\
        \
        function envTable.UpdateComboPointAmount()\
            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\
            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\
            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \
            \
            --store the total amount of combo points\
            envTable.TotalComboPoints = comboPoints\
            \
            --update anchor frame\
            envTable.ComboPointFrame:SetWidth (namePlateWidth)\
            envTable.ComboPointFrame:SetHeight (20)\
            envTable.ComboPointFrame:ClearAllPoints()\
            for i = 1, #anchors do\
                local anchor = anchors[i]\
                envTable.ComboPointFrame:SetPoint (unpack (anchor))\
            end        \
            \
            --\
            for i = 1, #envTable.ComboPoints do\
                envTable.ComboPoints[i]:Hide()\
                envTable.ComboPoints[i]:ClearAllPoints()\
            end\
            \
            for i = 1, comboPoints do\
                local comboPoint = envTable.ComboPoints[i]\
                if i == 1 then\
                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\
                else\
                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\
                end\
                \
                comboPoint:Show()\
            end\
            \
            envTable.LastUpdate = GetTime()\
            \
            envTable.UpdateComboPoints()\
        end\
        \
        --initialize\
        envTable.UpdateComboPointAmount()\
        envTable.ComboPointFrame:Hide()\
    end\
    \
    \
end",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    --constructor is executed only once when any script of the hook runs.\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if need update the amount of combo points shown\
    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\
        envTable.UpdateComboPointAmount()\
    end    \
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end    \
    \
end\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if this nameplate is the current target\
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
    else\
        envTable.ComboPointFrame:Hide()\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Player Power Update"]="function (self, unitId, unitFrame, envTable, modTable, ...)\
    local powerType = ...\
    \
    if (powerType and powerType == \"COMBO_POINTS\" and unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.UpdateComboPoints()\
    end\
    \
    \
end",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
\
\
",
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the amount of comboo points shown when the player changes talents or specialization\
    envTable.UpdateComboPointAmount()\
    \
    --save the time of the last talent change\
    envTable.LastPlayerTalentUpdate = GetTime()\
    \
    \
end\
\
\
",
},
["LoadConditions"]={
["pvptalent"]={
},
["spec"]={
["103"]=true,
["Enabled"]=true,
},
["race"]={
},
["talent"]={
},
["group"]={
},
["class"]={
["Enabled"]=true,
["DRUID"]=true,
["ROGUE"]=true,
},
["map_ids"]={
},
["role"]={
},
["encounter_ids"]={
},
["affix"]={
},
},
["Revision"]=284,
["Desc"]="Show combo points above the nameplate for Druid Feral and Rogues.",
["Name"]="Combo Points [Plater]",
["PlaterCore"]=1,
},
[6]={
["Options"]={
},
["PlaterCore"]=1,
["Revision"]=192,
["HooksTemp"]={
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.IsEnabled and unitFrame.ActorType == \"enemyplayer\") then\
        \
        if (unitFrame.IsSelf) then\
            if (envTable.ShowOnPersonalBar) then\
                envTable.BorderFrame:Show()\
            else\
                envTable.BorderFrame:Hide() \
            end\
        else\
            envTable.BorderFrame:Show()\
        end   \
        \
    else\
        envTable.BorderFrame:Hide() \
    end\
    \
end   \
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BorderFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BorderFrame:Hide()\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --border color\
    local borderColor = \"yellow\"\
    \
    --size of the border\
    local borderSize = 1\
    \
    --transparency\
    local borderAlpha = 1\
    \
    --enabled (set to false it you only want to use the extra border in other scripts)\
    local isEnabled = true\
    \
    --export border (allow the border to be used by other scripts)\
    --other scripts can use:\
    --unitFrame.healthBar.extraBorder:Show()\
    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\
    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\
    local canExportBorder = true\
    \
    --do not add the border to personal bar\
    local noPersonalBar = true\
    \
    --private\
    do\
        \
        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\
        envTable.BorderFrame = newBorder\
        \
        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\
        newBorder:UpdateSizes()\
        \
        local r, g, b = DetailsFramework:ParseColors (borderColor)\
        newBorder:SetVertexColor (r, g, b, borderAlpha)\
        \
        envTable.ShowOnPersonalBar = not noPersonalBar\
        \
        if (canExportBorder) then\
            unitFrame.healthBar.extraBorder = newBorder\
        end\
        \
        if (not isEnabled) then\
            envTable.IsEnabled = false\
        else\
            envTable.IsEnabled = true\
        end\
    end\
    \
end\
\
\
",
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --border color\
    local borderColor = \"yellow\"\
    \
    --size of the border\
    local borderSize = 1\
    \
    --transparency\
    local borderAlpha = 1\
    \
    --enabled (set to false it you only want to use the extra border in other scripts)\
    local isEnabled = true\
    \
    --export border (allow the border to be used by other scripts)\
    --other scripts can use:\
    --unitFrame.healthBar.extraBorder:Show()\
    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\
    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\
    local canExportBorder = true\
    \
    --do not add the border to personal bar\
    local noPersonalBar = true\
    \
    --private\
    do\
        \
        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\
        envTable.BorderFrame = newBorder\
        \
        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\
        newBorder:UpdateSizes()\
        \
        local r, g, b = DetailsFramework:ParseColors (borderColor)\
        newBorder:SetVertexColor (r, g, b, borderAlpha)\
        \
        envTable.ShowOnPersonalBar = not noPersonalBar\
        \
        if (canExportBorder) then\
            unitFrame.healthBar.extraBorder = newBorder\
        end\
        \
        if (not isEnabled) then\
            envTable.IsEnabled = false\
        else\
            envTable.IsEnabled = true\
        end\
    end\
    \
end\
\
\
",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.IsEnabled and unitFrame.ActorType == \"enemyplayer\") then\
        \
        if (unitFrame.IsSelf) then\
            if (envTable.ShowOnPersonalBar) then\
                envTable.BorderFrame:Show()\
            else\
                envTable.BorderFrame:Hide() \
            end\
        else\
            envTable.BorderFrame:Show()\
        end   \
        \
    else\
        envTable.BorderFrame:Hide() \
    end\
    \
end   \
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BorderFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BorderFrame:Hide()\
    \
end\
\
\
",
},
["LoadConditions"]={
["spec"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["role"]={
},
["encounter_ids"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
["race"]={
},
},
["Enabled"]=false,
["Desc"]="Add another border with more customizations. This border can also be manipulated by other scripts.",
["Time"]=1551825335,
["LastHookEdited"]="Constructor",
["Author"]="Tecno-Azralon",
["Name"]="Extra Border [Plater]",
["Icon"]=133689,
["OptionsValues"]={
},
},
[7]={
["Author"]="Kastfall-Azralon",
["Name"]="Reorder Nameplate [Plater]",
["Options"]={
},
["LoadConditions"]={
["map_ids"]={
},
["race"]={
},
["class"]={
},
["group"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
},
["url"]="",
["Enabled"]=false,
["HooksTemp"]={
},
["OptionsValues"]={
},
["LastHookEdited"]="",
["Desc"]="Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
["semver"]="",
["PlaterCore"]=1,
["version"]=-1,
["Time"]=1596791840,
["Icon"]=574574,
["Revision"]=93,
["Hooks"]={
["Nameplate Added"]="\
\
-- exported function Plater.UpdatePlateSize() from Plater.lua\
--this is for advanced users which wants to reorder the nameplate frame at their desire\
\
\
\
function (self, unitId, unitFrame, envTable)\
    \
    --check if there's a type of unit on this nameplate\
    local plateFrame = unitFrame:GetParent()\
    if (not plateFrame.actorType) then\
        return\
    end\
    \
    --get all the frames and cache some variables\
    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\
    local profile = Plater.db.profile\
    local DB_PLATE_CONFIG = profile.plate_config\
    local isInCombat = Plater.IsInCombat()\
    local actorType = plateFrame.actorType\
    \
    local unitFrame = plateFrame.unitFrame\
    local healthBar = unitFrame.healthBar\
    local castBar = unitFrame.castBar\
    local powerBar = unitFrame.powerBar\
    local buffFrame1 = unitFrame.BuffFrame\
    local buffFrame2 = unitFrame.BuffFrame2\
    \
    --use in combat bars when in pvp\
    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\
        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\
            isInCombat = true\
        end\
    end\
    \
    --get the config for this actor type\
    local plateConfigs = DB_PLATE_CONFIG [actorType]\
    --get the config key based if the player is in combat\
    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\
    \
    --get the width and height from what the user set in the options panel\
    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\
    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\
    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\
    \
    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\
    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\
    local castBarOffSetY = plateConfigs.castbar_offset\
    \
    --calculate offsets for the power bar\
    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\
    local powerBarOffSetY = 0\
    \
    --calculate the size deviation for pets\
    local unitType = Plater.GetUnitType (plateFrame)\
    if (unitType == \"pet\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\
        \
    elseif (unitType == \"minus\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\
    end\
    \
    --unit frame - is set to be the same size as the plateFrame\
    unitFrame:ClearAllPoints()\
    unitFrame:SetAllPoints()\
    \
    --calculates the health bar anchor points\
    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \
    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\
    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\
    \
    --set the health bar point\
    healthBar:ClearAllPoints()\
    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\
    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\
    \
    --set the cast bar point and size\
    castBar:ClearAllPoints()\
    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetHeight (castBar, castBarHeight)\
    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\
    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\
    \
    --set the power bar point and size\
    powerBar:ClearAllPoints()\
    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetHeight (powerBar, powerBarHeight)\
    \
    --power bar are hidden by default, show it if there's a custom size for it\
    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\
        powerBar:SetUnit (unitFrame.unit)\
    end\
    \
    --aura frames\
    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\
    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\
    \
    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\
    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\
    \
end\
\
\
",
},
},
[8]={
["Enabled"]=false,
["OptionsValues"]={
},
["Options"]={
},
["Author"]="Kastfall-Azralon",
["LoadConditions"]={
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["class"]={
},
["group"]={
},
["affix"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
},
["Time"]=1551825317,
["LastHookEdited"]="Constructor",
["Icon"]="Interface\\AddOns\\Plater\\images\\color_bar",
["Revision"]=107,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --attempt to get the color from the unit color list\
    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\
    \
    --if the color exists, set the health bar color\
    if (color) then\
        Plater.SetNameplateColor (unitFrame, color)\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    envTable.NpcColors = {\
        \
        --examples, using the unit name in lower case, regular unit name and the unitID:\
        \
        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\
        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\
        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\
        \
        --insert the new mobs here:\
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
    } --close custom color bracket\
    \
end\
\
\
\
\
",
},
["Desc"]="Easy way to change the color of an unit. Open the constructor script and follow the examples.",
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    envTable.NpcColors = {\
        \
        --examples, using the unit name in lower case, regular unit name and the unitID:\
        \
        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\
        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\
        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\
        \
        --insert the new mobs here:\
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
        \
    } --close custom color bracket\
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --attempt to get the color from the unit color list\
    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\
    \
    --if the color exists, set the health bar color\
    if (color) then\
        Plater.SetNameplateColor (unitFrame, color)\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Name"]="Color Automation [Plater]",
["PlaterCore"]=1,
},
[9]={
["Author"]="Ahwa-Azralon",
["LoadConditions"]={
["encounter_ids"]={
},
["talent"]={
},
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["group"]={
},
["class"]={
},
["race"]={
},
["spec"]={
},
},
["Icon"]=135358,
["Revision"]=139,
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --execute detection, if true the script will handle the execute percent\
    --while false Plater will automatically trigger the execute range\
    --you only want to set this to true in case of Plater not detecting the execute range correctly\
    envTable.UseCustomExecutePercent = true\
    --execute percent, if not detecting automatic, this is the percent to active the execute range\
    --use from zero to one, 0.20 is equal to 20% of the unit life\
    envTable.ExecutePercent = 0.20\
    \
    --second execute range (UseCustomExecutePercent must be enabled)\
    envTable.SecondRangeStart = 0.999\
    envTable.SecondRangeEnd = 0.8\
    \
    --allow this script to change the nameplate color when the unit is in execute range\
    envTable.CanChangeColor = true\
    --change the health bar color to this color when the unit is in execute range\
    --color can be set as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}\
    envTable.ExecuteColor = \"green\"\
    \
    --border color\
    envTable.CanChangeBorderColor = false\
    envTable.BorderColor = \"red\"\
    \
    --hide the default health divisor and the health execute indicator\
    envTable.HideHealthDivisor = false\
    --if not hidden, adjust the health divisor settings and the health execute indicator\
    envTable.HealthDivisorAlpha = 0.5\
    envTable.HealthDivisorColor = \"white\"\
    envTable.HealthExecuteIndicatorAlpha = 0.15\
    envTable.HealthExecuteIndicatorColor = \"darkred\"\
    \
    \
    --private (internal functions)\
    do\
        function envTable.UnitInExecuteRange (unitFrame, divisorPercent)\
            --check if can change the execute color\
            if (envTable.CanChangeColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\
            end\
            \
            if (envTable.CanChangeBorderColor) then\
                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\
            end\
            \
            if (envTable.HideHealthDivisor) then\
                unitFrame.healthBar.healthCutOff:Hide() \
                unitFrame.healthBar.executeRange:Hide()\
                \
            else\
                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\
                \
            end\
        end\
        \
        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\
            local healthBar = unitFrame.healthBar\
            \
            healthBar.healthCutOff:Show()\
            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\
            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\
            \
            healthBar.executeRange:Show()\
            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\
            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\
            \
            if (envTable.UseCustomExecutePercent) then\
                healthBar.healthCutOff:ClearAllPoints()\
                healthBar.executeRange:ClearAllPoints()\
                \
                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\
                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\
                \
                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\
                healthBar.executeRange:SetHeight (healthBar:GetHeight())\
                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\
                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\
            end\
            \
        end\
    end\
    \
end",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    if (envTable.UseCustomExecutePercent) then\
        \
        --manual detection\
        local healthBar = unitFrame.healthBar\
        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\
        \
        if (percent <= envTable.ExecutePercent) then\
            envTable.UnitInExecuteRange (unitFrame, envTable.ExecutePercent)\
            envTable.InExecuteRange = true\
            \
        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\
            envTable.UnitInExecuteRange (unitFrame, envTable.SecondRangeEnd)\
            envTable.InExecuteRange = true\
            \
        else\
            if (envTable.InExecuteRange) then\
                unitFrame.healthBar.healthCutOff:Hide() \
                unitFrame.healthBar.executeRange:Hide()\
                Plater.RefreshNameplateColor (unitFrame)\
                Plater.SetBorderColor (unitFrame)\
                envTable.InExecuteRange = false\
            end\
        end\
        \
    else\
        \
        --auto detection\
        if (unitFrame.InExecuteRange) then\
            envTable.UnitInExecuteRange (unitFrame, 0)\
        end\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Desc"]="Adds extra effects to execute range and allow to setup two execute ranges for classes with execute when the unit has almost full healh. See the constructor script for options.",
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --execute detection, if true the script will handle the execute percent\
    --while false Plater will automatically trigger the execute range\
    --you only want to set this to true in case of Plater not detecting the execute range correctly\
    envTable.UseCustomExecutePercent = true\
    --execute percent, if not detecting automatic, this is the percent to active the execute range\
    --use from zero to one, 0.20 is equal to 20% of the unit life\
    envTable.ExecutePercent = 0.20\
    \
    --second execute range (UseCustomExecutePercent must be enabled)\
    envTable.SecondRangeStart = 0.999\
    envTable.SecondRangeEnd = 0.8\
    \
    --allow this script to change the nameplate color when the unit is in execute range\
    envTable.CanChangeColor = true\
    --change the health bar color to this color when the unit is in execute range\
    --color can be set as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}\
    envTable.ExecuteColor = \"green\"\
    \
    --border color\
    envTable.CanChangeBorderColor = false\
    envTable.BorderColor = \"red\"\
    \
    --hide the default health divisor and the health execute indicator\
    envTable.HideHealthDivisor = false\
    --if not hidden, adjust the health divisor settings and the health execute indicator\
    envTable.HealthDivisorAlpha = 0.5\
    envTable.HealthDivisorColor = \"white\"\
    envTable.HealthExecuteIndicatorAlpha = 0.15\
    envTable.HealthExecuteIndicatorColor = \"darkred\"\
    \
    \
    --private (internal functions)\
    do\
        function envTable.UnitInExecuteRange (unitFrame, divisorPercent)\
            --check if can change the execute color\
            if (envTable.CanChangeColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\
            end\
            \
            if (envTable.CanChangeBorderColor) then\
                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\
            end\
            \
            if (envTable.HideHealthDivisor) then\
                unitFrame.healthBar.healthCutOff:Hide() \
                unitFrame.healthBar.executeRange:Hide()\
                \
            else\
                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\
                \
            end\
        end\
        \
        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\
            local healthBar = unitFrame.healthBar\
            \
            healthBar.healthCutOff:Show()\
            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\
            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\
            \
            healthBar.executeRange:Show()\
            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\
            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\
            \
            if (envTable.UseCustomExecutePercent) then\
                healthBar.healthCutOff:ClearAllPoints()\
                healthBar.executeRange:ClearAllPoints()\
                \
                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\
                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\
                \
                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\
                healthBar.executeRange:SetHeight (healthBar:GetHeight())\
                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\
                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\
            end\
            \
        end\
    end\
    \
end",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    if (envTable.UseCustomExecutePercent) then\
        \
        --manual detection\
        local healthBar = unitFrame.healthBar\
        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\
        \
        if (percent <= envTable.ExecutePercent) then\
            envTable.UnitInExecuteRange (unitFrame, envTable.ExecutePercent)\
            envTable.InExecuteRange = true\
            \
        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\
            envTable.UnitInExecuteRange (unitFrame, envTable.SecondRangeEnd)\
            envTable.InExecuteRange = true\
            \
        else\
            if (envTable.InExecuteRange) then\
                unitFrame.healthBar.healthCutOff:Hide() \
                unitFrame.healthBar.executeRange:Hide()\
                Plater.RefreshNameplateColor (unitFrame)\
                Plater.SetBorderColor (unitFrame)\
                envTable.InExecuteRange = false\
            end\
        end\
        \
    else\
        \
        --auto detection\
        if (unitFrame.InExecuteRange) then\
            envTable.UnitInExecuteRange (unitFrame, 0)\
        end\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Options"]={
},
["Name"]="Advanced Execute Range",
["PlaterCore"]=1,
["Time"]=1551825289,
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["OptionsValues"]={
},
},
[10]={
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
["Revision"]=356,
["PlaterCore"]=1,
["HooksTemp"]={
},
["Options"]={
},
["url"]="",
["Enabled"]=false,
["Author"]="Ditador-Azralon",
["LastHookEdited"]="",
["semver"]="",
["version"]=-1,
["Desc"]="Reorder buffs and debuffs following the settings set in the constructor.",
["Name"]="Aura Reorder [Plater]",
["Hooks"]={
["Initialization"]="function (modTable)\
    \
    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\
    \
    local sortByTime = false\
    local invertSort = false\
    \
    --which auras goes first, assign a value (any number), bigger value goes first\
    local priority = {\
        [\"Vampiric Touch\"] = 50,\
        [\"Shadow Word: Pain\"] = 22,\
        [\"Mind Flay\"] = 5,\
        [\"Pistol Shot\"] = 50,\
        [\"Marked for Death\"] = 99,\
    }\
    \
    -- Sort function - do not touch\
    Plater.db.profile.aura_sort = true\
    \
    \
    function Plater.AuraIconsSortFunction (aura1, aura2)\
        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\
        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\
        \
        if sortByTime and p1 == p2 then\
            if invertSort then\
                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\
            else\
                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\
            end\
        else\
            if invertSort then\
                 return p1 < p2\
            else\
                return p1 > p2\
            end\
        end\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Time"]=1608663128,
["LoadConditions"]={
["race"]={
},
["class"]={
},
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["spec"]={
},
["encounter_ids"]={
},
["affix"]={
},
["talent"]={
},
["group"]={
},
},
},
[11]={
["Icon"]="Interface\\AddOns\\Plater\\images\\encounter_jaina",
["Hooks"]={
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --Unexploded Ordinance\
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\
        \
        --make the life percent be bigger than the regular size\
        --so it's better to see the health percent of the barrel\
        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\
        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\
    end\
    \
    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\
        local currentHeight = unitFrame.healthBar:GetHeight()\
        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\
    end\
    \
end\
\
\
\
\
\
\
",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\
        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\
        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\
    end\
end\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    --reset the health percent text size\
    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\
    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --Override the color\
    if (envTable.Colors [unitFrame.namePlateNpcId]) then\
        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\
    end    \
    \
    --Show the name of the unit in the Ice Block nameplate\
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\
        --find which player this block are holding\
        for i = 1, GetNumGroupMembers() do\
            local unit = \"raid\" .. i\
            if (UnitExists (unit)) then\
                for debuffId = 1, 40 do\
                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\
                    \
                    --cancel the loop if there's no more debuffs on the player\
                    if (not name) then \
                        break \
                    end                    \
                    \
                    --check if who casted this debuff is the unit shown on this nameplate\
                    if (UnitIsUnit (caster or \"\", unitId)) then\
                        local unitName = UnitName (unit)\
                        \
                        --color the text by the class\
                        unitName = Plater.SetTextColorByClass (unit, unitName)\
                        \
                        --add the role icon\
                        if (Details) then\
                            local role = UnitGroupRolesAssigned (unit)\
                            unitName = Details:AddRoleIcon (unitName, role, 12)\
                        end\
                        \
                        unitFrame.unitName:SetText (unitName)\
                        unitFrame.castBar.Text:SetText (unitName)\
                        break\
                    end\
                    \
                end\
            else\
                break\
            end\
        end\
    end\
end",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --nameplate colors for unit\
    envTable.Colors = {}\
    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\
    envTable.Colors [148522] = \"white\" --Ice Block\
    \
    --increase the nameplate height for these units\
    envTable.IncreaseSize = {}\
    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\
    \
    --increase the size of the life percent for the nameplate of the barrel\
    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\
    \
    --increase the castbar size for the unexploded ordinance explosion cast\
    envTable.UnexplodedOrdinanceCast = true\
    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\
    envTable.UnexplodedOrdinanceCastBarHeight = 18\
    envTable.UnexplodedOrdinanceTimerSize = 18\
    \
    --npcIDs\
    envTable.NpcIDs = {}\
    envTable.NpcIDs.UnexplodedOrdinance = 148631\
    envTable.NpcIDs.IceBlock = 148522\
end\
\
--tests 126023 --harbor saurid - dazar'alor harbor\
--tests 3127 venomtail scorpid - durotar\
--tests 12058 dustwind storm witch - durotar\
--Load Condition: EncounterID 2281\
\
\
",
["Cast Stop"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\
        Plater.SetCastBarSize (unitFrame)\
        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\
    end\
end\
\
\
",
},
["LoadConditions"]={
["affix"]={
},
["spec"]={
},
["map_ids"]={
},
["role"]={
},
["class"]={
},
["pvptalent"]={
},
["race"]={
},
["encounter_ids"]={
["1"]=2281,
["Enabled"]=true,
},
["talent"]={
},
["group"]={
},
},
["Author"]="Kastfall-Azralon",
["Desc"]="Script for the Jaina encounter on Battle for Dazzar'alor",
["Revision"]=236,
["OptionsValues"]={
},
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --nameplate colors for unit\
    envTable.Colors = {}\
    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\
    envTable.Colors [148522] = \"white\" --Ice Block\
    \
    --increase the nameplate height for these units\
    envTable.IncreaseSize = {}\
    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\
    \
    --increase the size of the life percent for the nameplate of the barrel\
    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\
    \
    --increase the castbar size for the unexploded ordinance explosion cast\
    envTable.UnexplodedOrdinanceCast = true\
    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\
    envTable.UnexplodedOrdinanceCastBarHeight = 18\
    envTable.UnexplodedOrdinanceTimerSize = 18\
    \
    --npcIDs\
    envTable.NpcIDs = {}\
    envTable.NpcIDs.UnexplodedOrdinance = 148631\
    envTable.NpcIDs.IceBlock = 148522\
end\
\
--tests 126023 --harbor saurid - dazar'alor harbor\
--tests 3127 venomtail scorpid - durotar\
--tests 12058 dustwind storm witch - durotar\
--Load Condition: EncounterID 2281\
\
\
",
["Cast Stop"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\
        Plater.SetCastBarSize (unitFrame)\
        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\
    end\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --Unexploded Ordinance\
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\
        \
        --make the life percent be bigger than the regular size\
        --so it's better to see the health percent of the barrel\
        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\
        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\
    end\
    \
    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\
        local currentHeight = unitFrame.healthBar:GetHeight()\
        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\
    end\
    \
end\
\
\
\
\
\
\
",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\
        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\
        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\
    end\
end\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    --reset the health percent text size\
    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\
    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --Override the color\
    if (envTable.Colors [unitFrame.namePlateNpcId]) then\
        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\
    end    \
    \
    --Show the name of the unit in the Ice Block nameplate\
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\
        --find which player this block are holding\
        for i = 1, GetNumGroupMembers() do\
            local unit = \"raid\" .. i\
            if (UnitExists (unit)) then\
                for debuffId = 1, 40 do\
                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\
                    \
                    --cancel the loop if there's no more debuffs on the player\
                    if (not name) then \
                        break \
                    end                    \
                    \
                    --check if who casted this debuff is the unit shown on this nameplate\
                    if (UnitIsUnit (caster or \"\", unitId)) then\
                        local unitName = UnitName (unit)\
                        \
                        --color the text by the class\
                        unitName = Plater.SetTextColorByClass (unit, unitName)\
                        \
                        --add the role icon\
                        if (Details) then\
                            local role = UnitGroupRolesAssigned (unit)\
                            unitName = Details:AddRoleIcon (unitName, role, 12)\
                        end\
                        \
                        unitFrame.unitName:SetText (unitName)\
                        unitFrame.castBar.Text:SetText (unitName)\
                        break\
                    end\
                    \
                end\
            else\
                break\
            end\
        end\
    end\
end",
},
["Options"]={
},
["PlaterCore"]=1,
["Time"]=1551894760,
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["Name"]="Jaina Encounter [Plater]",
},
[12]={
["PlaterCore"]=1,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\
        \
        if (envTable.Colors.TemptingSiren) then\
            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\
        end\
        \
    end\
    \
    \
end\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\
        \
        if (envTable.NameplateHeight.TemptingSiren) then\
            \
            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\
            \
        end\
        \
    end    \
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --nameplate colors for unit\
    envTable.Colors = {}\
    envTable.Colors.TemptingSiren = \"orange\"\
    \
    --npcID\
    envTable.NpcIDs = {}\
    envTable.NpcIDs.TemptingSiren = 146436\
    \
    --nameplate height for each unit\
    envTable.NameplateHeight = {}\
    envTable.NameplateHeight.TemptingSiren = 18\
    \
    \
    \
end\
\
\
",
},
["Author"]="Kastfall-Azralon",
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\
        \
        if (envTable.Colors.TemptingSiren) then\
            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\
        end\
        \
    end\
    \
    \
end\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\
        \
        if (envTable.NameplateHeight.TemptingSiren) then\
            \
            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\
            \
        end\
        \
    end    \
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --nameplate colors for unit\
    envTable.Colors = {}\
    envTable.Colors.TemptingSiren = \"orange\"\
    \
    --npcID\
    envTable.NpcIDs = {}\
    envTable.NpcIDs.TemptingSiren = 146436\
    \
    --nameplate height for each unit\
    envTable.NameplateHeight = {}\
    envTable.NameplateHeight.TemptingSiren = 18\
    \
    \
    \
end\
\
\
",
},
["Name"]="Stormwall Encounter [Plater]",
["Options"]={
},
["Time"]=1551887545,
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["OptionsValues"]={
},
["Desc"]="Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
["Icon"]="Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
["Revision"]=81,
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["affix"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
["encounter_ids"]={
["1"]=2280,
["Enabled"]=true,
},
["spec"]={
},
},
},
[13]={
["Author"]="Herith�gue-Proudmoore",
["Desc"]="Change the border of the focus target.",
["Time"]=1552962607,
["Revision"]=58,
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["class"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["map_ids"]={
},
["role"]={
},
["race"]={
},
},
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.BorderThickness = 3\
    envTable.BorderColor = \"black\"\
    \
    --private\
    function envTable.UpdateBorder (unitFrame, unit)\
        local plateFrame = unitFrame:GetParent()\
        \
        if (UnitIsUnit (\"focus\", unit)) then\
            Plater.SetBorderColor (unitFrame, envTable.BorderColor)\
            local borderSize = envTable.BorderThickness\
            unitFrame.healthBar.border:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\
            unitFrame.healthBar.border:UpdateSizes()        \
            \
        else\
            Plater.SetBorderColor (unitFrame)\
            Plater.UpdatePlateBorderThickness (unitFrame.PlateFrame)\
            unitFrame.healthBar.border:UpdateSizes()\
        end\
    end\
end\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateBorder (unitFrame, unitId)\
end\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateBorder (unitFrame, unitId)\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Name"]="Focus Target Border",
["PlaterCore"]=1,
["Options"]={
},
["HooksTemp"]={
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateBorder (unitFrame, unitId)\
end\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    envTable.UpdateBorder (unitFrame, unitId)\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.BorderThickness = 3\
    envTable.BorderColor = \"black\"\
    \
    --private\
    function envTable.UpdateBorder (unitFrame, unit)\
        local plateFrame = unitFrame:GetParent()\
        \
        if (UnitIsUnit (\"focus\", unit)) then\
            Plater.SetBorderColor (unitFrame, envTable.BorderColor)\
            local borderSize = envTable.BorderThickness\
            unitFrame.healthBar.border:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\
            unitFrame.healthBar.border:UpdateSizes()        \
            \
        else\
            Plater.SetBorderColor (unitFrame)\
            Plater.UpdatePlateBorderThickness (unitFrame.PlateFrame)\
            unitFrame.healthBar.border:UpdateSizes()\
        end\
    end\
end\
\
\
\
",
},
["Icon"]=133006,
["OptionsValues"]={
},
},
[14]={
["Enabled"]=false,
["Options"]={
},
["LoadConditions"]={
["class"]={
},
["pvptalent"]={
},
["spec"]={
},
["race"]={
},
["encounter_ids"]={
},
["talent"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["affix"]={
},
},
["Revision"]=47,
["Desc"]="Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
["Time"]=1551825334,
["Name"]="Don't Have Aura [Plater]",
["PlaterCore"]=1,
["Icon"]=136207,
["LastHookEdited"]="Constructor",
["OptionsValues"]={
},
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --Important: lines starting with double dashes are comments and are not part of the script\
    \
    --if the unit does not have any of the following auras, it will be painted with the color listed below\
    --list of spells to track, can be the spell name (case-sensitive) or the spellID\
    envTable.TrackingAuras = {\
        --[\"Nightblade\"] = true, --this is an example using the spell name\
        --[195452] = true, --this is an example using the spellID\
        \
    }\
    \
    --which color the nameplate wil be changed\
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    --you may also use /plater colors\
    envTable.NameplateColor = \"pink\"\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --do nothing if the player isn't in combat\
    if (not Plater.IsInCombat()) then\
        return \
    end\
    \
    --do nothing if the unit isn't in combat\
    if (not unitFrame.InCombat) then\
        return\
    end\
    \
    --check the auras\
    local hasAura = false\
    \
    for auraName, _ in pairs (envTable.TrackingAuras) do\
        if (Plater.NameplateHasAura (unitFrame, auraName)) then\
            hasAura = true\
            break\
        end\
    end\
    \
    if (not hasAura) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end    \
    \
end\
\
\
\
\
\
\
\
\
\
\
",
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    --Important: lines starting with double dashes are comments and are not part of the script\
    \
    --if the unit does not have any of the following auras, it will be painted with the color listed below\
    --list of spells to track, can be the spell name (case-sensitive) or the spellID\
    envTable.TrackingAuras = {\
        --[\"Nightblade\"] = true, --this is an example using the spell name\
        --[195452] = true, --this is an example using the spellID\
        \
    }\
    \
    --which color the nameplate wil be changed\
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    --you may also use /plater colors\
    envTable.NameplateColor = \"pink\"\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --do nothing if the player isn't in combat\
    if (not Plater.IsInCombat()) then\
        return \
    end\
    \
    --do nothing if the unit isn't in combat\
    if (not unitFrame.InCombat) then\
        return\
    end\
    \
    --check the auras\
    local hasAura = false\
    \
    for auraName, _ in pairs (envTable.TrackingAuras) do\
        if (Plater.NameplateHasAura (unitFrame, auraName)) then\
            hasAura = true\
            break\
        end\
    end\
    \
    if (not hasAura) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end    \
    \
end\
\
\
\
\
\
\
\
\
\
\
",
},
["Author"]="Izimode-Azralon",
},
[15]={
["PlaterCore"]=1,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --can detect the reaping souls aggro?\
    if (envTable.detectAggro and Plater.IsInCombat()) then\
        \
        --is this npc a reaping soul?\
        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\
            \
            --check if the mob is attacking the player\
            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\
                \
            else\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\
            end\
            \
        end\
        \
    end\
    \
end",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --when the nameplate is added and the npcID matches, cache the color for the nameplate\
    if (envTable.detectAggro) then\
        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\
            local profile = Plater.db.profile\
            local role = Plater:GetPlayerRole()\
            \
            if (role == \"TANK\") then\
                envTable.NameplateAggroColor = profile.tank.colors.aggro\
                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\
            else\
                envTable.NameplateAggroColor = profile.dps.colors.aggro\
                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\
            end\
            \
        end\
    end\
    \
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --npcs affected by this script\
    \
    envTable.npcIDs = {\
        [148716] = true, --risen soul\
        [148893] = true, --tormented soul\
        [148894] = true, --lost soul\
        \
        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\
    }\
    \
    --detect aggro, if true it will see which group member the soul is attacking and override the color\
    envTable.detectAggro = true\
    \
    \
end\
\
\
",
},
["Options"]={
},
["Prio"]=99,
["Time"]=1579030189,
["Icon"]=2446016,
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --can detect the reaping souls aggro?\
    if (envTable.detectAggro and Plater.IsInCombat()) then\
        \
        --is this npc a reaping soul?\
        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\
            \
            --check if the mob is attacking the player\
            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\
                \
            else\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\
            end\
            \
        end\
        \
    end\
    \
end",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --when the nameplate is added and the npcID matches, cache the color for the nameplate\
    if (envTable.detectAggro) then\
        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\
            local profile = Plater.db.profile\
            local role = Plater:GetPlayerRole()\
            \
            if (role == \"TANK\") then\
                envTable.NameplateAggroColor = profile.tank.colors.aggro\
                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\
            else\
                envTable.NameplateAggroColor = profile.dps.colors.aggro\
                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\
            end\
            \
        end\
    end\
    \
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --npcs affected by this script\
    \
    envTable.npcIDs = {\
        [148716] = true, --risen soul\
        [148893] = true, --tormented soul\
        [148894] = true, --lost soul\
        \
        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\
    }\
    \
    --detect aggro, if true it will see which group member the soul is attacking and override the color\
    envTable.detectAggro = true\
    \
    \
end\
\
\
",
},
["Name"]="M+ Bwonsamdi Reaping",
["LoadConditions"]={
["group"]={
["Enabled"]=true,
["party"]=true,
},
["map_ids"]={
},
["pvptalent"]={
},
["spec"]={
},
["encounter_ids"]={
},
["talent"]={
},
["class"]={
},
["role"]={
},
["affix"]={
["Enabled"]=true,
["117"]=true,
},
["race"]={
},
},
["LastHookEdited"]="Constructor",
["Desc"]="Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
["Enabled"]=false,
["Revision"]=55,
["OptionsValues"]={
},
["Author"]="Izimode-Azralon",
},
[16]={
["Enabled"]=false,
["Hooks"]={
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateSpellNameText (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --max length of the text\
    envTable.TextMaxLength = 100\
    \
    --update the spell name text\
    function envTable.UpdateSpellNameText (unitFrame)\
        \
        local castBar = unitFrame.castBar\
        local textString = castBar.Text\
        local spellName = castBar.SpellName\
        \
        if (unitFrame.targetUnitID) then\
            local targetName = UnitName (unitFrame.targetUnitID)\
            \
            if (targetName) then\
                textString:SetText (spellName .. \" > \" .. targetName) \
                \
                if (envTable.TextMaxLength) then\
                    Plater.LimitTextSize (textString, envTable.TextMaxLength)\
                end\
                \
            else\
                textString:SetText (spellName)\
            end\
        else\
            textString:SetText (spellName)\
        end\
    end\
end",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateSpellNameText (unitFrame)\
    \
end\
\
\
",
},
["PlaterCore"]=1,
["Time"]=1553450703,
["Icon"]=413580,
["LastHookEdited"]="Constructor",
["OptionsValues"]={
},
["Desc"]="Show the name of the unit current target ",
["HooksTemp"]={
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateSpellNameText (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --max length of the text\
    envTable.TextMaxLength = 100\
    \
    --update the spell name text\
    function envTable.UpdateSpellNameText (unitFrame)\
        \
        local castBar = unitFrame.castBar\
        local textString = castBar.Text\
        local spellName = castBar.SpellName\
        \
        if (unitFrame.targetUnitID) then\
            local targetName = UnitName (unitFrame.targetUnitID)\
            \
            if (targetName) then\
                textString:SetText (spellName .. \" > \" .. targetName) \
                \
                if (envTable.TextMaxLength) then\
                    Plater.LimitTextSize (textString, envTable.TextMaxLength)\
                end\
                \
            else\
                textString:SetText (spellName)\
            end\
        else\
            textString:SetText (spellName)\
        end\
    end\
end",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateSpellNameText (unitFrame)\
    \
end\
\
\
",
},
["Revision"]=35,
["Author"]="Kastfall-Azralon",
["Options"]={
},
["Name"]="Cast Target",
["LoadConditions"]={
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["affix"]={
},
["race"]={
},
["talent"]={
},
["class"]={
},
["pvptalent"]={
},
},
},
[17]={
["Author"]="Kastfall-Azralon",
["LoadConditions"]={
["group"]={
},
["map_ids"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
},
["Icon"]=135473,
["Enabled"]=false,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    function envTable.CheckIfCanShowNameplate (unitFrame)\
        if (Plater.IsInCombat()) then\
            \
            if (not unitFrame.healthBar:IsShown()) then\
                Plater.ShowHealthBar (unitFrame)\
                Plater.EnableHighlight (unitFrame)\
            end\
            \
        else\
            \
            if (unitFrame.healthBar:IsShown()) then\
                Plater.HideHealthBar (unitFrame)\
                Plater.DisableHighlight (unitFrame)\
            end\
            \
        end        \
    end\
    \
end\
\
\
\
\
\
\
\
\
",
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Zone Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
},
["Desc"]="Only show nameplates while in combat, see the constructor for more options.",
["Name"]="Only in Combat",
["LastHookEdited"]="Constructor",
["Revision"]=43,
["OptionsValues"]={
},
["Options"]={
},
["PlaterCore"]=1,
["Time"]=1551825361,
["Hooks"]={
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Zone Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CheckIfCanShowNameplate (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    function envTable.CheckIfCanShowNameplate (unitFrame)\
        if (Plater.IsInCombat()) then\
            \
            if (not unitFrame.healthBar:IsShown()) then\
                Plater.ShowHealthBar (unitFrame)\
                Plater.EnableHighlight (unitFrame)\
            end\
            \
        else\
            \
            if (unitFrame.healthBar:IsShown()) then\
                Plater.HideHealthBar (unitFrame)\
                Plater.DisableHighlight (unitFrame)\
            end\
            \
        end        \
    end\
    \
end\
\
\
\
\
\
\
\
\
",
},
},
[18]={
["Desc"]="Add an exclamation icon on units with color set in the Npc Colors tab with the \"Only Script\" box selected.",
["Author"]="Izimode-Azralon",
["Name"]="Npc Colors Icon",
["PlaterCore"]=1,
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["OptionsValues"]={
},
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    local npcColor = Plater.GetNpcColor (unitFrame)\
    if (npcColor) then\
        unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\
        unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)        \
        unitFrame.NpcColorCodeTexture:Show()\
        \
    else\
        unitFrame.NpcColorCodeTexture:Hide()\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.IconTexture = [[Interface\\AddOns\\Plater\\media\\exclamation_64]]\
    envTable.Alpha = 0.8\
    \
    --private\
    if (not unitFrame.NpcColorCodeTexture) then\
        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\
        unitFrame.NpcColorCodeTexture:SetTexture (envTable.IconTexture)\
        \
        --texture side | anchor to which frame | frame side | x offset | y offset\
        unitFrame.NpcColorCodeTexture:SetPoint (\"right\", unitFrame.healthBar, \"right\", -2, 0)\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Time"]=1553450716,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    local npcColor = Plater.GetNpcColor (unitFrame)\
    if (npcColor) then\
        unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\
        unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)        \
        unitFrame.NpcColorCodeTexture:Show()\
        \
    else\
        unitFrame.NpcColorCodeTexture:Hide()\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.IconTexture = [[Interface\\AddOns\\Plater\\media\\exclamation_64]]\
    envTable.Alpha = 0.8\
    \
    --private\
    if (not unitFrame.NpcColorCodeTexture) then\
        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\
        unitFrame.NpcColorCodeTexture:SetTexture (envTable.IconTexture)\
        \
        --texture side | anchor to which frame | frame side | x offset | y offset\
        unitFrame.NpcColorCodeTexture:SetPoint (\"right\", unitFrame.healthBar, \"right\", -2, 0)\
        \
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Options"]={
},
["Icon"]="Interface\\AddOns\\Plater\\media\\exclamation_64",
["Revision"]=35,
["LoadConditions"]={
["affix"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["pvptalent"]={
},
["class"]={
},
["map_ids"]={
},
["role"]={
},
},
},
[19]={
["Options"]={
},
["LoadConditions"]={
["race"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
["class"]={
},
["map_ids"]={
},
["role"]={
},
},
["Author"]="Izimode-Azralon",
["OptionsValues"]={
},
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateColorTag (unitFrame)   \
    \
end\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateTexture (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.Alpha = 0.75\
    \
    envTable.Anchor = {\
        side = 11, --right side inside the nameplate\
        x = -3,\
        y = 0\
    }\
    \
    --private\
    if (not unitFrame.NpcColorCodeTexture) then\
        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\
        unitFrame.NpcColorCodeTexture:SetColorTexture (1, 1, 1, 1)\
        \
    end\
    \
    function  envTable.UpdateColorTag (unitFrame)\
        local npcColor = Plater.GetNpcColor (unitFrame)\
        if (npcColor) then\
            unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\
            unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)           \
            unitFrame.NpcColorCodeTexture:Show()        \
        end\
    end\
    \
    function  envTable.UpdateTexture (unitFrame)\
        Plater.SetAnchor (unitFrame.NpcColorCodeTexture, envTable.Anchor)\
        unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight() - 4, unitFrame.healthBar:GetHeight() - 4)\
        unitFrame.NpcColorCodeTexture:Hide()\
        \
        envTable.UpdateColorTag (unitFrame)\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["Desc"]="Add a color tag on units with color set in the Npc Colors tab with the \"Only Script\" box selected.",
["Name"]="Npc Colors Tag",
["PlaterCore"]=1,
["Time"]=1553450705,
["Icon"]="Interface\\AddOns\\Plater\\media\\radio_64",
["Revision"]=68,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateColorTag (unitFrame)   \
    \
end\
\
\
\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateTexture (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.Alpha = 0.75\
    \
    envTable.Anchor = {\
        side = 11, --right side inside the nameplate\
        x = -3,\
        y = 0\
    }\
    \
    --private\
    if (not unitFrame.NpcColorCodeTexture) then\
        unitFrame.NpcColorCodeTexture = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\
        unitFrame.NpcColorCodeTexture:SetColorTexture (1, 1, 1, 1)\
        \
    end\
    \
    function  envTable.UpdateColorTag (unitFrame)\
        local npcColor = Plater.GetNpcColor (unitFrame)\
        if (npcColor) then\
            unitFrame.NpcColorCodeTexture:SetVertexColor (DetailsFramework:ParseColors (npcColor))\
            unitFrame.NpcColorCodeTexture:SetAlpha (envTable.Alpha)           \
            unitFrame.NpcColorCodeTexture:Show()        \
        end\
    end\
    \
    function  envTable.UpdateTexture (unitFrame)\
        Plater.SetAnchor (unitFrame.NpcColorCodeTexture, envTable.Anchor)\
        unitFrame.NpcColorCodeTexture:SetSize (unitFrame.healthBar:GetHeight() - 4, unitFrame.healthBar:GetHeight() - 4)\
        unitFrame.NpcColorCodeTexture:Hide()\
        \
        envTable.UpdateColorTag (unitFrame)\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
},
[20]={
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --colors for each time bracket\
    envTable.Colors = {\
        critical = \"red\",\
        warning = \"yellow\",\
        okay = \"white\",\
    }\
    \
    --time amount to enter in warning or critical state\
    envTable.Timers = {\
        critical = 4.9,\
        warning = 8,\
    }\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    local auras = unitFrame.BuffFrame.PlaterBuffList\
    \
    for _, auraIcon in ipairs (auras) do\
        if (auraIcon:IsVisible()) then\
            if (auraIcon.RemainingTime < envTable.Timers.critical) then\
                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\
                \
            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\
                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\
                \
            else\
                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\
            end \
        end\
        \
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Author"]="Ditador-Azralon",
["Options"]={
},
["PlaterCore"]=1,
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --colors for each time bracket\
    envTable.Colors = {\
        critical = \"red\",\
        warning = \"yellow\",\
        okay = \"white\",\
    }\
    \
    --time amount to enter in warning or critical state\
    envTable.Timers = {\
        critical = 4.9,\
        warning = 8,\
    }\
    \
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    local auras = unitFrame.BuffFrame.PlaterBuffList\
    \
    for _, auraIcon in ipairs (auras) do\
        if (auraIcon:IsVisible()) then\
            if (auraIcon.RemainingTime < envTable.Timers.critical) then\
                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.critical)\
                \
            elseif (auraIcon.RemainingTime < envTable.Timers.warning) then\
                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.warning)\
                \
            else\
                Plater:SetFontColor (auraIcon.TimerText, envTable.Colors.okay)\
            end \
        end\
        \
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Prio"]=99,
["LoadConditions"]={
["pvptalent"]={
},
["affix"]={
},
["race"]={
},
["role"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
},
["Icon"]="Interface\\Timer\\Challenges-Logo",
["Revision"]=42,
["OptionsValues"]={
},
["LastHookEdited"]="Constructor",
["Time"]=1579030177,
["Enabled"]=true,
["Desc"]="Change the color of the aura timer by it's time left",
["Name"]="Paint Aura Timers",
},
[21]={
["Enabled"]=true,
["Revision"]=125,
["Desc"]="Config aura borders",
["Icon"]=133006,
["OptionsValues"]={
},
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --border thickness\
    local size = 1 \
    \
    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            \
            if (not auraIcon.PixelPerfectBorder) then\
                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\
            end\
            \
            local r, g, b = auraIcon:GetBackdropBorderColor()\
            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\
            \
            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\
            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\
            auraIcon.PixelPerfectBorder:UpdateSizes()\
            \
            auraIcon.Icon:ClearAllPoints()\
            auraIcon.Icon:SetAllPoints()\
            \
            auraIcon.Border:Hide() --hide plater default border\
        end\
    end\
    \
    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            \
            if (not auraIcon.PixelPerfectBorder) then\
                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\
            end\
            \
            local r, g, b = auraIcon:GetBackdropBorderColor()\
            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\
            \
            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\
            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\
            auraIcon.PixelPerfectBorder:UpdateSizes()            \
            \
            auraIcon.Icon:ClearAllPoints()\
            auraIcon.Icon:SetAllPoints()\
            \
            auraIcon.Border:Hide() --hide plater default border\
        end\
    end    \
end",
},
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --border thickness\
    local size = 1 \
    \
    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            \
            if (not auraIcon.PixelPerfectBorder) then\
                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\
            end\
            \
            local r, g, b = auraIcon:GetBackdropBorderColor()\
            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\
            \
            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\
            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\
            auraIcon.PixelPerfectBorder:UpdateSizes()\
            \
            auraIcon.Icon:ClearAllPoints()\
            auraIcon.Icon:SetAllPoints()\
            \
            auraIcon.Border:Hide() --hide plater default border\
        end\
    end\
    \
    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            \
            if (not auraIcon.PixelPerfectBorder) then\
                auraIcon.PixelPerfectBorder = CreateFrame (\"frame\", nil, auraIcon, \"NamePlateFullBorderTemplate\")\
            end\
            \
            local r, g, b = auraIcon:GetBackdropBorderColor()\
            auraIcon:SetBackdropBorderColor (0, 0, 0, 0)\
            \
            auraIcon.PixelPerfectBorder:SetVertexColor (r, g, b)\
            auraIcon.PixelPerfectBorder:SetBorderSizes (size, size, size, size)\
            auraIcon.PixelPerfectBorder:UpdateSizes()            \
            \
            auraIcon.Icon:ClearAllPoints()\
            auraIcon.Icon:SetAllPoints()\
            \
            auraIcon.Border:Hide() --hide plater default border\
        end\
    end    \
end",
},
["Name"]="Advanced Debuff Border",
["PlaterCore"]=1,
["LastHookEdited"]="Nameplate Updated",
["Author"]="????????-Illidan",
["Options"]={
},
["LoadConditions"]={
["role"]={
},
["pvptalent"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["affix"]={
},
["race"]={
},
["class"]={
},
["map_ids"]={
},
},
["Time"]=1553450719,
},
[22]={
["Enabled"]=false,
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIndicator (unitFrame, unitId)\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIndicator (unitFrame, unitId)\
    \
end\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    function envTable.UpdateIndicator (unitFrame, unitId)\
        local unitClassification = UnitClassification (unitId)\
        local unitName = UnitName (unitId)\
        unitName = unitName or UNKNOWN\
        \
        if (unitClassification == \"rareelite\") then\
            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\
            \
        elseif (unitClassification == \"rare\") then\
            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\
            \
        elseif (unitClassification == \"elite\") then\
            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\
            \
        end\
    end\
    \
end\
\
\
\
\
",
},
["Name"]="Rarity in the Name",
["Revision"]=35,
["OptionsValues"]={
},
["Author"]="�r��ne-Kel'thuzad",
["Desc"]="Show yellow star for elite; Silver star for rares",
["LoadConditions"]={
["encounter_ids"]={
},
["talent"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["race"]={
},
["group"]={
},
["map_ids"]={
},
["spec"]={
},
},
["Icon"]="Interface\\AddOns\\Plater\\media\\star_full_64",
["Options"]={
},
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIndicator (unitFrame, unitId)\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIndicator (unitFrame, unitId)\
    \
end\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    function envTable.UpdateIndicator (unitFrame, unitId)\
        local unitClassification = UnitClassification (unitId)\
        local unitName = UnitName (unitId)\
        unitName = unitName or UNKNOWN\
        \
        if (unitClassification == \"rareelite\") then\
            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. \"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t \" .. unitName)\
            \
        elseif (unitClassification == \"rare\") then\
            unitFrame.unitName:SetText (\"|TInterface\\\\AddOns\\\\Plater\\\\media\\\\star_full_64:12:12:0:0:64:64:0:64:0:64|t\" .. unitName)\
            \
        elseif (unitClassification == \"elite\") then\
            unitFrame.unitName:SetText (\"|TInterface\\\\GLUES\\\\CharacterSelect\\\\Glues-AddOn-Icons:12:12:0:0:64:16:48:64:0:16|t\" .. unitName)\
            \
        end\
    end\
    \
end\
\
\
\
\
",
},
["PlaterCore"]=1,
["Time"]=1551825364,
["LastHookEdited"]="Constructor",
},
[23]={
["Enabled"]=true,
["OptionsValues"]={
},
["Options"]={
},
["Time"]=1579030500,
["PlaterCore"]=1,
["Prio"]=99,
["Name"]="Aggro Indicator",
["LastHookEdited"]="Constructor",
["Icon"]=132344,
["Revision"]=65,
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.Anchor = {side = 11, x = -2, y = 0}\
    envTable.Texture = \"Interface\\\\AddOns\\\\Plater\\\\media\\\\exclamation2_64\"\
    \
    --it'll only use the icon if the nameplate has a color from the Npc Colors tab and \"Only Scripts\" disabled.\
    envTable.OnlyWhenUsingNpcColor = true --if false, it'll always use the icon\
    \
    --private\
    envTable.PlayerRole = \"NONE\" --automatically changed by the script\
    \
    function envTable.CreateIndicator (unitFrame)\
        if (not unitFrame.ThreatIcon) then\
            unitFrame.ThreatIcon = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\
        end\
    end\
    \
    function envTable.UpdateIndicator (unitFrame)\
        envTable.CreateIndicator (unitFrame)\
        \
        unitFrame.ThreatIcon:SetTexture (envTable.Texture)\
        Plater.SetAnchor (unitFrame.ThreatIcon, envTable.Anchor)\
        unitFrame.ThreatIcon:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\
    end\
    \
    function envTable.UpdateThreatState (unitFrame, unitId)\
        if (not unitFrame.ThreatIcon) then --if there's no icon created yet\
            return\
            \
        elseif (not Plater.IsInCombat()) then --not in combat\
            unitFrame.ThreatIcon:Hide()\
            return\
            \
        elseif (unitFrame.IsSelf) then --personal bar\
            unitFrame.ThreatIcon:Hide()\
            return\
            \
        elseif (envTable.OnlyWhenUsingNpcColor) then --must be using a npc color?\
            if (not unitFrame.UsingCustomColor) then\
                unitFrame.ThreatIcon:Hide()\
                return\
            end\
        end\
        \
        local isTanking, threatStatus, threatpct = UnitDetailedThreatSituation (\"player\", unitId)\
        \
        if (isTanking) then\
            if (envTable.PlayerRole == \"TANK\") then\
                unitFrame.ThreatIcon:Hide()\
            else\
                unitFrame.ThreatIcon:Show()\
                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateAggroColor))\
            end\
        else\
            if (envTable.PlayerRole == \"TANK\") then\
                unitFrame.ThreatIcon:Show()\
                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateNoAggroColor))                \
            else\
                unitFrame.ThreatIcon:Hide()                \
            end\
        end\
    end\
    \
    function envTable.UpdatePlayerRole (unitFrame)\
        local profile = Plater.db.profile\
        local role = Plater:GetPlayerRole()\
        \
        if (role == \"TANK\") then\
            envTable.PlayerRole = \"TANK\"\
            envTable.NameplateAggroColor = profile.tank.colors.aggro\
            envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\
            \
        else\
            envTable.PlayerRole = \"DAMAGER\"\
            envTable.NameplateAggroColor = profile.dps.colors.aggro\
            envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\
            \
        end        \
    end\
    \
    envTable.UpdatePlayerRole (unitFrame)\
    \
end",
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIndicator (unitFrame)\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end    \
end\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end\
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateThreatState (unitFrame, unitId)\
    \
end\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdatePlayerRole (unitFrame)\
    \
end\
\
\
",
},
["Author"]="Cyclopes-Turalyon",
["Hooks"]={
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end\
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIndicator (unitFrame)\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end    \
end\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end\
end\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateThreatState (unitFrame, unitId)\
    \
end\
\
\
",
["Enter Combat"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdatePlayerRole (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.Anchor = {side = 11, x = -2, y = 0}\
    envTable.Texture = \"Interface\\\\AddOns\\\\Plater\\\\media\\\\exclamation2_64\"\
    \
    --it'll only use the icon if the nameplate has a color from the Npc Colors tab and \"Only Scripts\" disabled.\
    envTable.OnlyWhenUsingNpcColor = true --if false, it'll always use the icon\
    \
    --private\
    envTable.PlayerRole = \"NONE\" --automatically changed by the script\
    \
    function envTable.CreateIndicator (unitFrame)\
        if (not unitFrame.ThreatIcon) then\
            unitFrame.ThreatIcon = unitFrame.healthBar:CreateTexture (nil, \"overlay\")\
        end\
    end\
    \
    function envTable.UpdateIndicator (unitFrame)\
        envTable.CreateIndicator (unitFrame)\
        \
        unitFrame.ThreatIcon:SetTexture (envTable.Texture)\
        Plater.SetAnchor (unitFrame.ThreatIcon, envTable.Anchor)\
        unitFrame.ThreatIcon:SetSize (unitFrame.healthBar:GetHeight(), unitFrame.healthBar:GetHeight())\
    end\
    \
    function envTable.UpdateThreatState (unitFrame, unitId)\
        if (not unitFrame.ThreatIcon) then --if there's no icon created yet\
            return\
            \
        elseif (not Plater.IsInCombat()) then --not in combat\
            unitFrame.ThreatIcon:Hide()\
            return\
            \
        elseif (unitFrame.IsSelf) then --personal bar\
            unitFrame.ThreatIcon:Hide()\
            return\
            \
        elseif (envTable.OnlyWhenUsingNpcColor) then --must be using a npc color?\
            if (not unitFrame.UsingCustomColor) then\
                unitFrame.ThreatIcon:Hide()\
                return\
            end\
        end\
        \
        local isTanking, threatStatus, threatpct = UnitDetailedThreatSituation (\"player\", unitId)\
        \
        if (isTanking) then\
            if (envTable.PlayerRole == \"TANK\") then\
                unitFrame.ThreatIcon:Hide()\
            else\
                unitFrame.ThreatIcon:Show()\
                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateAggroColor))\
            end\
        else\
            if (envTable.PlayerRole == \"TANK\") then\
                unitFrame.ThreatIcon:Show()\
                unitFrame.ThreatIcon:SetVertexColor (unpack (envTable.NameplateNoAggroColor))                \
            else\
                unitFrame.ThreatIcon:Hide()                \
            end\
        end\
    end\
    \
    function envTable.UpdatePlayerRole (unitFrame)\
        local profile = Plater.db.profile\
        local role = Plater:GetPlayerRole()\
        \
        if (role == \"TANK\") then\
            envTable.PlayerRole = \"TANK\"\
            envTable.NameplateAggroColor = profile.tank.colors.aggro\
            envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\
            \
        else\
            envTable.PlayerRole = \"DAMAGER\"\
            envTable.NameplateAggroColor = profile.dps.colors.aggro\
            envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\
            \
        end        \
    end\
    \
    envTable.UpdatePlayerRole (unitFrame)\
    \
end",
},
["Desc"]="Add an icon to indicate an unit has Aggro on you. By default only show for units using a custom color from Npc Colors.",
["LoadConditions"]={
["talent"]={
},
["class"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
},
},
[24]={
["Name"]="Change All Fonts",
["LoadConditions"]={
["class"]={
},
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["race"]={
},
["talent"]={
},
["group"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["OptionsValues"]={
},
["Author"]="Izimode-Azralon",
["Options"]={
},
["Desc"]="Edit the Constructor script setting the font you want in the FONT = \"\", then /reload.",
["Icon"]=134331,
["Enabled"]=false,
["HooksTemp"]={
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --added this event just to run the constructor script\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --insert here the font you want to change then /reeload\
    --after the reload, check if the font has changed and disable this script\
    \
    local FONT = \"Accidental Presidency\"\
    \
    local profile = Plater.db.profile\
    local actorTables = profile.plate_config\
    \
    for plateType, plateTable in pairs (actorTables) do\
        \
        plateTable.actorname_text_font = FONT\
        plateTable.spellname_text_font = FONT\
        plateTable.spellpercent_text_font = FONT\
        plateTable.level_text_font = FONT\
        plateTable.percent_text_font = FONT\
        plateTable.big_actortitle_text_font = FONT\
        plateTable.big_actorname_text_font = FONT\
        plateTable.power_percent_text_font = FONT\
        \
    end\
    \
    profile.castbar_target_font = FONT\
    profile.aura_timer_text_font = FONT    \
    profile.aura_stack_font = FONT    \
    \
end\
\
\
",
},
["Time"]=1551825316,
["Revision"]=20,
["Hooks"]={
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --added this event just to run the constructor script\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --insert here the font you want to change then /reeload\
    --after the reload, check if the font has changed and disable this script\
    \
    local FONT = \"Accidental Presidency\"\
    \
    local profile = Plater.db.profile\
    local actorTables = profile.plate_config\
    \
    for plateType, plateTable in pairs (actorTables) do\
        \
        plateTable.actorname_text_font = FONT\
        plateTable.spellname_text_font = FONT\
        plateTable.spellpercent_text_font = FONT\
        plateTable.level_text_font = FONT\
        plateTable.percent_text_font = FONT\
        plateTable.big_actortitle_text_font = FONT\
        plateTable.big_actorname_text_font = FONT\
        plateTable.power_percent_text_font = FONT\
        \
    end\
    \
    profile.castbar_target_font = FONT\
    profile.aura_timer_text_font = FONT    \
    profile.aura_stack_font = FONT    \
    \
end\
\
\
",
},
["PlaterCore"]=1,
["LastHookEdited"]="Constructor",
},
[25]={
["Icon"]=1375677,
["Revision"]=50,
["OptionsValues"]={
},
["Options"]={
},
["Desc"]="Show the power bar for specific units",
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.PowerBarAnchor = {side = 4, x = 0, y = -10}\
    \
    function envTable.UpdatePowerBar (unitFrame)\
        unitFrame.powerBar:SetUnit (unitFrame.unit)\
        Plater.SetAnchor (unitFrame.powerBar, envTable.PowerBarAnchor)\
        \
    end\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (Plater.ZoneInstanceType == \"arena\") then\
        \
        local arenaEnemies = GetNumArenaOpponentSpecs()\
        local found = false\
        for i = 1, arenaEnemies do\
            local guid = UnitGUID (\"arena\" .. i)\
            print (guid)\
            if (guid == unitFrame.namePlateUnitGUID) then\
                \
                local spec = GetArenaOpponentSpec (i)\
                print (spec)\
                if (spec) then\
                    local id, name, description, icon, role, class = GetSpecializationInfoByID (spec)\
                    print (name)\
                    if (role == \"HEALER\") then\
                        envTable.UpdatePowerBar (unitFrame)\
                    end\
                    print (role)\
                end\
                \
                break\
            end\
        end\
        \
        return\
    end\
    \
    --show for enemy players\
    if (unitFrame.ActorType == \"enemyplayer\") then\
        envTable.UpdatePowerBar (unitFrame)\
        return\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["Name"]="Power Bar",
["Enabled"]=false,
["Author"]="Izimode-Azralon",
["Time"]=1553450521,
["LastHookEdited"]="Constructor",
["HooksTemp"]={
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    if (Plater.ZoneInstanceType == \"arena\") then\
        \
        local arenaEnemies = GetNumArenaOpponentSpecs()\
        local found = false\
        for i = 1, arenaEnemies do\
            local guid = UnitGUID (\"arena\" .. i)\
            print (guid)\
            if (guid == unitFrame.namePlateUnitGUID) then\
                \
                local spec = GetArenaOpponentSpec (i)\
                print (spec)\
                if (spec) then\
                    local id, name, description, icon, role, class = GetSpecializationInfoByID (spec)\
                    print (name)\
                    if (role == \"HEALER\") then\
                        envTable.UpdatePowerBar (unitFrame)\
                    end\
                    print (role)\
                end\
                \
                break\
            end\
        end\
        \
        return\
    end\
    \
    --show for enemy players\
    if (unitFrame.ActorType == \"enemyplayer\") then\
        envTable.UpdatePowerBar (unitFrame)\
        return\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.PowerBarAnchor = {side = 4, x = 0, y = -10}\
    \
    function envTable.UpdatePowerBar (unitFrame)\
        unitFrame.powerBar:SetUnit (unitFrame.unit)\
        Plater.SetAnchor (unitFrame.powerBar, envTable.PowerBarAnchor)\
        \
    end\
    \
end\
\
\
",
},
["PlaterCore"]=1,
["LoadConditions"]={
["role"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
["talent"]={
},
["class"]={
},
},
},
[26]={
["Hooks"]={
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIconPosition (unitFrame)\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIconPosition (unitFrame)\
    self.ThrottleUpdate = -1\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings:\
    --show cast icon\
    envTable.ShowIcon = true\
    --anchor icon on what side\
    envTable.IconAnchor = \"left\" --accep 'left' 'right'\
    --fine tune the size of the icon\
    envTable.IconSizeOffset = 1\
    \
    --shield for non interruptible casts\
    envTable.ShowShield = false\
    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\
    envTable.ShieldDesaturated = true\
    envTable.ShieldColor = {1, 1, 1 ,1}\
    envTable.ShieldSize = {10, 12}\
    \
    --private:\
    function envTable.UpdateIconPosition (unitFrame)\
        local castBar = unitFrame.castBar\
        local icon = castBar.Icon\
        local shield = castBar.BorderShield\
        \
        if (envTable.ShowIcon) then\
            icon:ClearAllPoints()\
            \
            if (envTable.IconAnchor == \"left\") then\
                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\
                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \
                \
            elseif (envTable.IconAnchor == \"right\") then\
                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\
                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\
                \
            end\
            \
            icon:SetWidth (icon:GetHeight())\
            icon:Show()\
            \
        else\
            icon:Hide()\
            \
        end\
        \
        if (envTable.ShowShield and not castBar.canInterrupt) then\
            shield:Show()\
            shield:SetAlpha (1)\
            shield:SetTexCoord (0, 1, 0, 1)\
            shield:SetVertexColor (1, 1, 1, 1)\
            \
            shield:SetTexture (envTable.ShieldTexture)\
            shield:SetDesaturated (envTable.ShieldDesaturated)\
            \
            if (not envTable.ShieldDesaturated) then\
                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\
            end\
            \
            shield:SetSize (unpack (envTable.ShieldSize))\
            \
            shield:ClearAllPoints()\
            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\
            \
        else\
            shield:Hide()\
            \
        end\
        \
    end\
end",
},
["LastHookEdited"]="Constructor",
["Icon"]="Interface\\Buttons\\UI-Quickslot2",
["Revision"]=131,
["OptionsValues"]={
},
["LoadConditions"]={
["spec"]={
},
["group"]={
},
["affix"]={
},
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
["encounter_ids"]={
},
["talent"]={
},
["class"]={
},
},
["Time"]=1579035896,
["Options"]={
},
["Prio"]=99,
["PlaterCore"]=1,
["Enabled"]=true,
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings:\
    --show cast icon\
    envTable.ShowIcon = true\
    --anchor icon on what side\
    envTable.IconAnchor = \"left\" --accep 'left' 'right'\
    --fine tune the size of the icon\
    envTable.IconSizeOffset = 1\
    \
    --shield for non interruptible casts\
    envTable.ShowShield = false\
    envTable.ShieldTexture = [[Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON]]\
    envTable.ShieldDesaturated = true\
    envTable.ShieldColor = {1, 1, 1 ,1}\
    envTable.ShieldSize = {10, 12}\
    \
    --private:\
    function envTable.UpdateIconPosition (unitFrame)\
        local castBar = unitFrame.castBar\
        local icon = castBar.Icon\
        local shield = castBar.BorderShield\
        \
        if (envTable.ShowIcon) then\
            icon:ClearAllPoints()\
            \
            if (envTable.IconAnchor == \"left\") then\
                icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, envTable.IconSizeOffset)\
                icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", -1, 0)    \
                \
            elseif (envTable.IconAnchor == \"right\") then\
                icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, envTable.IconSizeOffset)\
                icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", 1, 0)\
                \
            end\
            \
            icon:SetWidth (icon:GetHeight())\
            icon:Show()\
            \
        else\
            icon:Hide()\
            \
        end\
        \
        if (envTable.ShowShield and not castBar.canInterrupt) then\
            shield:Show()\
            shield:SetAlpha (1)\
            shield:SetTexCoord (0, 1, 0, 1)\
            shield:SetVertexColor (1, 1, 1, 1)\
            \
            shield:SetTexture (envTable.ShieldTexture)\
            shield:SetDesaturated (envTable.ShieldDesaturated)\
            \
            if (not envTable.ShieldDesaturated) then\
                shield:SetVertexColor (DetailsFramework:ParseColors (envTable.ShieldColor))\
            end\
            \
            shield:SetSize (unpack (envTable.ShieldSize))\
            \
            shield:ClearAllPoints()\
            shield:SetPoint (\"center\", castBar, \"left\", 0, 0)\
            \
        else\
            shield:Hide()\
            \
        end\
        \
    end\
end",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIconPosition (unitFrame)\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIconPosition (unitFrame)\
    self.ThrottleUpdate = -1\
    \
end\
\
\
",
},
["Author"]="Ditador-Azralon",
["Desc"]="Move the icon of the spell cast to the left or right side of the nameplate.",
["Name"]="Cast Icon Anchor",
},
[27]={
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.AnchorSide = \"left\"\
    envTable.BorderThickness = 1\
    envTable.BorderColor = \"black\"\
    \
    --private\
    function envTable.BuildFrames (unitFrame)\
        local castBar = unitFrame.castBar\
        \
        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\
        castBar.IconBorder:SetVertexColor (r, g, b, a)\
        \
        local size = envTable.BorderThickness\
        castBar.IconBorder:SetBorderSizes (size, size, size, size)\
        castBar.IconBorder:UpdateSizes()\
        \
        local icon = castBar.Icon\
        if (envTable.AnchorSide == \"left\") then\
            icon:ClearAllPoints()\
            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\
            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\
            icon:SetWidth (icon:GetHeight())\
            \
        elseif (envTable.AnchorSide == \"right\") then\
            icon:ClearAllPoints()\
            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\
            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\
            icon:SetWidth (icon:GetHeight())\
            \
        end\
        \
        icon:Show()\
        castBar.IconOverlayFrame:Show()\
    end\
    \
    if (not unitFrame.castBar.IconOverlayFrame) then\
        --icon support frame\
        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\
        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\
        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\
        \
        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\
    end    \
    \
end\
\
\
\
\
",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BuildFrames (unitFrame)\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.castBar.IconOverlayFrame) then\
        unitFrame.castBar.IconOverlayFrame:Hide()\
    end\
    \
end\
\
\
\
\
",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BuildFrames (unitFrame)\
    \
end\
\
\
",
},
["Prio"]=99,
["LastHookEdited"]="Constructor",
["Time"]=1579031533,
["Icon"]=133004,
["Enabled"]=true,
["Options"]={
},
["PlaterCore"]=1,
["Revision"]=62,
["Hooks"]={
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BuildFrames (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.AnchorSide = \"left\"\
    envTable.BorderThickness = 1\
    envTable.BorderColor = \"black\"\
    \
    --private\
    function envTable.BuildFrames (unitFrame)\
        local castBar = unitFrame.castBar\
        \
        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\
        castBar.IconBorder:SetVertexColor (r, g, b, a)\
        \
        local size = envTable.BorderThickness\
        castBar.IconBorder:SetBorderSizes (size, size, size, size)\
        castBar.IconBorder:UpdateSizes()\
        \
        local icon = castBar.Icon\
        if (envTable.AnchorSide == \"left\") then\
            icon:ClearAllPoints()\
            icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", -1, 0)\
            icon:SetPoint (\"bottomright\", castBar, \"bottomleft\", -1, 0)\
            icon:SetWidth (icon:GetHeight())\
            \
        elseif (envTable.AnchorSide == \"right\") then\
            icon:ClearAllPoints()\
            icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", 1, 0)\
            icon:SetPoint (\"bottomleft\", castBar, \"bottomright\", 1, 0)\
            icon:SetWidth (icon:GetHeight())\
            \
        end\
        \
        icon:Show()\
        castBar.IconOverlayFrame:Show()\
    end\
    \
    if (not unitFrame.castBar.IconOverlayFrame) then\
        --icon support frame\
        unitFrame.castBar.IconOverlayFrame = CreateFrame (\"frame\", nil, unitFrame.castBar)\
        unitFrame.castBar.IconOverlayFrame:SetPoint (\"topleft\", unitFrame.castBar.Icon, \"topleft\")\
        unitFrame.castBar.IconOverlayFrame:SetPoint (\"bottomright\", unitFrame.castBar.Icon, \"bottomright\")\
        \
        unitFrame.castBar.IconBorder = CreateFrame (\"frame\", nil,  unitFrame.castBar.IconOverlayFrame, \"NamePlateFullBorderTemplate\")\
    end    \
    \
end\
\
\
\
\
",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.BuildFrames (unitFrame)\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.castBar.IconOverlayFrame) then\
        unitFrame.castBar.IconOverlayFrame:Hide()\
    end\
    \
end\
\
\
\
\
",
},
["Name"]="Cast Icon Border",
["LoadConditions"]={
["talent"]={
},
["role"]={
},
["encounter_ids"]={
},
["spec"]={
},
["race"]={
},
["group"]={
},
["class"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
},
["Author"]="Izimode-Azralon",
["Desc"]="Adds a pixels perfect border around the cast bar spell icon.",
["OptionsValues"]={
},
},
[28]={
["OptionsValues"]={
},
["Desc"]="Adds a pixels perfect border around the cast bar.",
["Name"]="Cast Bar Border",
["Prio"]=99,
["LastHookEdited"]="Constructor",
["Icon"]=133004,
["Enabled"]=true,
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    \
    --hide the icon of the spell, may require /reload after changing\
    envTable.HideIcon = false\
    \
    --border settings\
    envTable.BorderThickness = 1\
    envTable.BorderColor = \"black\"\
    \
    --private\
    --create the border\
    if (not unitFrame.castBar.CastBarBorder) then\
        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\
    end    \
    \
    --update the border\
    function envTable.UpdateBorder (unitFrame)\
        local castBar = unitFrame.castBar\
        \
        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\
        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\
        \
        local size = envTable.BorderThickness\
        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\
        castBar.CastBarBorder:UpdateSizes()        \
        \
        if (envTable.HideIcon) then\
            castBar.Icon:Hide()\
        end\
        \
        castBar.CastBarBorder:Show()\
    end\
    \
end\
\
\
\
\
",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateBorder (unitFrame)\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.castBar.CastBarBorder) then\
        unitFrame.castBar.CastBarBorder:Hide()\
    end    \
end",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateBorder (unitFrame)\
    \
end\
\
\
",
},
["LoadConditions"]={
["group"]={
},
["map_ids"]={
},
["role"]={
},
["affix"]={
},
["race"]={
},
["talent"]={
},
["pvptalent"]={
},
["encounter_ids"]={
},
["spec"]={
},
["class"]={
},
},
["PlaterCore"]=1,
["Revision"]=85,
["HooksTemp"]={
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateBorder (unitFrame)\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.castBar.CastBarBorder) then\
        unitFrame.castBar.CastBarBorder:Hide()\
    end    \
end",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateBorder (unitFrame)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    \
    --hide the icon of the spell, may require /reload after changing\
    envTable.HideIcon = false\
    \
    --border settings\
    envTable.BorderThickness = 1\
    envTable.BorderColor = \"black\"\
    \
    --private\
    --create the border\
    if (not unitFrame.castBar.CastBarBorder) then\
        unitFrame.castBar.CastBarBorder = CreateFrame (\"frame\", nil, unitFrame.castBar, \"NamePlateFullBorderTemplate\")\
    end    \
    \
    --update the border\
    function envTable.UpdateBorder (unitFrame)\
        local castBar = unitFrame.castBar\
        \
        local r, g, b, a = DetailsFramework:ParseColors (envTable.BorderColor)\
        castBar.CastBarBorder:SetVertexColor (r, g, b, a)\
        \
        local size = envTable.BorderThickness\
        castBar.CastBarBorder:SetBorderSizes (size, size, size, size)\
        castBar.CastBarBorder:UpdateSizes()        \
        \
        if (envTable.HideIcon) then\
            castBar.Icon:Hide()\
        end\
        \
        castBar.CastBarBorder:Show()\
    end\
    \
end\
\
\
\
\
",
},
["Author"]="Izimode-Azralon",
["Options"]={
},
["Time"]=1579035954,
},
[29]={
["Time"]=1551894761,
["Icon"]=609811,
["LastHookEdited"]="Constructor",
["Enabled"]=true,
["Options"]={
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --minimum time left to take effect\
    envTable.MinTime = 9.999\
    \
end",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            if (auraIcon.RemainingTime < envTable.MinTime) then\
                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\
            end\
        end\
    end\
    \
    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            if (auraIcon.RemainingTime < envTable.MinTime) then            \
                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\
            end\
        end        \
    end    \
end",
},
["LoadConditions"]={
["pvptalent"]={
},
["race"]={
},
["talent"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["class"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["Revision"]=42,
["Author"]="????????-Illidan",
["PlaterCore"]=1,
["OptionsValues"]={
},
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --minimum time left to take effect\
    envTable.MinTime = 9.999\
    \
end",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    for index, auraIcon in ipairs (unitFrame.BuffFrame.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            if (auraIcon.RemainingTime < envTable.MinTime) then\
                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\
            end\
        end\
    end\
    \
    for index, auraIcon in ipairs (unitFrame.BuffFrame2.PlaterBuffList) do\
        if (auraIcon:IsShown()) then\
            if (auraIcon.RemainingTime < envTable.MinTime) then            \
                auraIcon.TimerText:SetText (format (\"%.1f\", auraIcon.RemainingTime))\
            end\
        end        \
    end    \
end",
},
["Desc"]="Debuff timer show decimal values",
["Name"]="Decimal Debuff Timer",
},
[30]={
["Enabled"]=true,
["Options"]={
},
["Hooks"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --    if false then return end\
    \
    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\
        \
        unitFrame.ExtraIconFrame.options.show_text = true\
        \
        local profile = Plater.db.profile\
        \
        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\
        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\
        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\
        \
        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\
        \
        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\
        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\
        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \
        \
    end\
    \
end",
},
["PlaterCore"]=1,
["LoadConditions"]={
["talent"]={
},
["map_ids"]={
},
["affix"]={
},
["race"]={
},
["spec"]={
},
["group"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["encounter_ids"]={
},
},
["Time"]=1552962644,
["Revision"]=81,
["OptionsValues"]={
},
["Author"]="?????-Illidan",
["Desc"]="Format Buff Special icons like the regular aura icons.",
["Name"]="Buff Special Mod",
["Icon"]=136139,
["LastHookEdited"]="Nameplate Updated",
["HooksTemp"]={
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --    if false then return end\
    \
    for _, iconFrame in ipairs (unitFrame.ExtraIconFrame.IconPool) do\
        \
        unitFrame.ExtraIconFrame.options.show_text = true\
        \
        local profile = Plater.db.profile\
        \
        Plater.SetAnchor (iconFrame.CountdownText, profile.aura_timer_text_anchor)\
        Plater:SetFontSize (iconFrame.CountdownText, profile.aura_timer_text_size)\
        Plater:SetFontFace (iconFrame.CountdownText, profile.aura_timer_text_font)\
        \
        Plater.SetFontOutlineAndShadow (iconFrame.CountdownText, profile.aura_timer_text_outline, profile.aura_timer_text_shadow_color, profile.aura_timer_text_shadow_color_offset[1], profile.aura_timer_text_shadow_color_offset[2])\
        \
        iconFrame.Cooldown:SetEdgeTexture (profile.aura_cooldown_edge_texture)\
        iconFrame.Cooldown:SetReverse (profile.aura_cooldown_reverse)\
        iconFrame.Cooldown:SetDrawSwipe (profile.aura_cooldown_show_swipe)        \
        \
    end\
    \
end",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    \
end\
\
\
",
},
},
[31]={
["Hooks"]={
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --after editing this script, save it and /reload\
    \
    --adds two target indicators in arrow format\
    --to change the texture you may replace the path with another texture path\
    --or you can copy and paste more options here\
    \
    Plater.TargetIndicators    [\"SmallArrow\"] = {\
        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\
        coords = {\
            {0, 1, 0, 1}, \
            {1, 0, 0, 1}\
        },\
        desaturated = false,\
        width = 12,\
        height = 12,\
        x = 8,\
        y = 0,\
        blend = \"ADD\",\
    }\
    \
    Plater.TargetIndicators    [\"BigArrow\"] = {\
        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\
        coords = {\
            {0, 1, 0, 1}, \
            {1, 0, 0, 1}\
        },\
        desaturated = false,\
        width = 18,\
        height = 16,\
        x = 24,\
        y = 0,\
        blend = \"ADD\",\
        color = \"yellow\",\
    }\
    \
    \
    \
end\
\
\
",
},
["PlaterCore"]=1,
["LoadConditions"]={
["class"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
},
["Time"]=1551887544,
["Icon"]="Interface\\AddOns\\Plater\\media\\arrow_right_64",
["Enabled"]=false,
["Revision"]=29,
["HooksTemp"]={
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --after editing this script, save it and /reload\
    \
    --adds two target indicators in arrow format\
    --to change the texture you may replace the path with another texture path\
    --or you can copy and paste more options here\
    \
    Plater.TargetIndicators    [\"SmallArrow\"] = {\
        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\
        coords = {\
            {0, 1, 0, 1}, \
            {1, 0, 0, 1}\
        },\
        desaturated = false,\
        width = 12,\
        height = 12,\
        x = 8,\
        y = 0,\
        blend = \"ADD\",\
    }\
    \
    Plater.TargetIndicators    [\"BigArrow\"] = {\
        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\
        coords = {\
            {0, 1, 0, 1}, \
            {1, 0, 0, 1}\
        },\
        desaturated = false,\
        width = 18,\
        height = 16,\
        x = 24,\
        y = 0,\
        blend = \"ADD\",\
        color = \"yellow\",\
    }\
    \
    \
    \
end\
\
\
",
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --after editing this script, save it and /reload\
    \
    --adds two target indicators in arrow format\
    --to change the texture you may replace the path with another texture path\
    --or you can copy and paste more options here\
    \
    Plater.TargetIndicators    [\"SmallArrow\"] = {\
        path = [[Interface\\MONEYFRAME\\Arrow-Right-Up]],\
        coords = {\
            {0, 1, 0, 1}, \
            {1, 0, 0, 1}\
        },\
        desaturated = false,\
        width = 12,\
        height = 12,\
        x = 8,\
        y = 0,\
        blend = \"ADD\",\
    }\
    \
    Plater.TargetIndicators    [\"BigArrow\"] = {\
        path = [[Interface\\AddOns\\Plater\\media\\arrow_right_64]],\
        coords = {\
            {0, 1, 0, 1}, \
            {1, 0, 0, 1}\
        },\
        desaturated = false,\
        width = 18,\
        height = 16,\
        x = 24,\
        y = 0,\
        blend = \"ADD\",\
        color = \"yellow\",\
    }\
    \
    \
    \
end\
\
\
",
},
["Author"]="Izimode-Azralon",
["Desc"]="Adds two arrows into the target indicators options.",
["Name"]="Arrow Target Indicators",
["LastHookEdited"]="Player Talent Update",
},
[32]={
["Hooks"]={
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.unitName:SetDrawLayer (\"overlay\", 7)\
end\
\
\
\
\
\
\
\
\
",
},
["Name"]="Unit Name Over Target Shading",
["LoadConditions"]={
["spec"]={
},
["talent"]={
},
["class"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["race"]={
},
},
["Revision"]=11,
["OptionsValues"]={
},
["Author"]="Ditador-Azralon",
["Options"]={
},
["Icon"]=237377,
["LastHookEdited"]="Target Changed",
["PlaterCore"]=1,
["Time"]=1551894756,
["Enabled"]=true,
["HooksTemp"]={
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.unitName:SetDrawLayer (\"overlay\", 7)\
end\
\
\
\
\
\
\
\
\
",
},
["Desc"]="Set the unit name to be above the target shading texture.",
},
[33]={
["Enabled"]=true,
["Options"]={
},
["Desc"]="Set the spark height to the same size of the cast bar.",
["Time"]=1579035959,
["HooksTemp"]={
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    self.Spark:SetHeight (self:GetHeight())\
    \
end\
\
\
",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    self.Spark:SetHeight (self:GetHeight())\
    \
end\
\
\
",
},
["Hooks"]={
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    self.Spark:SetHeight (self:GetHeight())\
    \
end\
\
\
",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    self.Spark:SetHeight (self:GetHeight())\
    \
end\
\
\
",
},
["Name"]="Adjust Spark Size",
["LastHookEdited"]="Cast Update",
["Icon"]="Interface\\AddOns\\Plater\\images\\spark6",
["PlaterCore"]=1,
["Revision"]=22,
["OptionsValues"]={
},
["Prio"]=99,
["Author"]="Ditador-Azralon",
["LoadConditions"]={
["spec"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
["map_ids"]={
},
["race"]={
},
},
},
[34]={
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --power bar options:\
    \
    --for which units it should\
    envTable.ShowForEnemyPlayers = true\
    envTable.ShowForEnemyNpcs = false\
    \
    --specific npcs, can be the npc name or npcId\
    --this list work even if the ShowForEnemyNpcs is false\
    envTable.SpecificNpcs = {\
        [\"the rock\"] = true, --npc name\
        [225] = true, --npcId\
    }\
    \
    --anchor the power bar to\
    envTable.Anchor = {\
        side = 13, --inside the healthbar, bottom side\
        x = 0, \
        y = 0,\
    }\
    \
    --power bar height\
    envTable.Height = 1\
    \
    --power bar percent text\
    envTable.PercentTextEnabled = false\
    envTable.PercentTextAnchor = {\
        side = 7, --top right\
        x = 2, \
        y = 0,\
    }\
    \
    \
    --private\
    function envTable.ShowPowerbar (unitFrame)\
        unitFrame.powerBar:SetUnit (unitFrame.unit)\
        envTable.UpdatePowerbar (unitFrame)\
    end\
    \
    function envTable.UpdatePowerbar (unitFrame)\
        local powerBar = unitFrame.powerBar\
        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\
        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\
        \
        envTable.SavePowerBarSize (unitFrame, envTable.Height)\
        \
        if (envTable.PercentTextEnabled) then\
            powerBar.percentText:Show()\
            --copy the font from the health percent\
            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\
            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\
            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\
        else\
            powerBar.percentText:Hide()\
        end\
    end\
    \
    function envTable.CanShowPowerBarForUnit (unitFrame)\
        --check if the is in the special list to force show\
        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\
        if (forceShowPowerBar) then\
            envTable.ShowPowerbar (unitFrame)\
            \
            --check if the unit is a enemy player\
        elseif (unitFrame.ActorType == \"enemyplayer\") then\
            if (envTable.ShowForEnemyPlayers) then\
                envTable.ShowPowerbar (unitFrame)\
            end\
            \
            --check if the unit is a enemy npc\
        elseif (unitFrame.ActorType == \"enemynpc\") then\
            if (envTable.ShowForEnemyNpcs) then\
                envTable.ShowPowerbar (unitFrame)\
            end\
        end\
    end\
    \
    function envTable.SavePowerBarSize (unitFrame, height)\
        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\
        plateConfigs.mana[1] = plateConfigs.health[1]\
        plateConfigs.mana[2] = height\
        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\
        plateConfigs.mana_incombat[2] = height\
    end\
end\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    envTable.CanShowPowerBarForUnit (unitFrame)    \
end",
},
["Author"]="Izimode-Azralon",
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --power bar options:\
    \
    --for which units it should\
    envTable.ShowForEnemyPlayers = true\
    envTable.ShowForEnemyNpcs = false\
    \
    --specific npcs, can be the npc name or npcId\
    --this list work even if the ShowForEnemyNpcs is false\
    envTable.SpecificNpcs = {\
        [\"the rock\"] = true, --npc name\
        [225] = true, --npcId\
    }\
    \
    --anchor the power bar to\
    envTable.Anchor = {\
        side = 13, --inside the healthbar, bottom side\
        x = 0, \
        y = 0,\
    }\
    \
    --power bar height\
    envTable.Height = 1\
    \
    --power bar percent text\
    envTable.PercentTextEnabled = false\
    envTable.PercentTextAnchor = {\
        side = 7, --top right\
        x = 2, \
        y = 0,\
    }\
    \
    \
    --private\
    function envTable.ShowPowerbar (unitFrame)\
        unitFrame.powerBar:SetUnit (unitFrame.unit)\
        envTable.UpdatePowerbar (unitFrame)\
    end\
    \
    function envTable.UpdatePowerbar (unitFrame)\
        local powerBar = unitFrame.powerBar\
        Plater.SetAnchor (powerBar, envTable.Anchor, unitFrame.healthBar)\
        powerBar:SetSize (unitFrame.healthBar:GetWidth(), envTable.Height)\
        \
        envTable.SavePowerBarSize (unitFrame, envTable.Height)\
        \
        if (envTable.PercentTextEnabled) then\
            powerBar.percentText:Show()\
            --copy the font from the health percent\
            Plater:SetFontFace (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_font)\
            Plater:SetFontSize (powerBar.percentText, Plater.GetConfig (unitFrame).percent_text_size)\
            Plater.SetAnchor (powerBar.percentText, envTable.PercentTextAnchor)\
        else\
            powerBar.percentText:Hide()\
        end\
    end\
    \
    function envTable.CanShowPowerBarForUnit (unitFrame)\
        --check if the is in the special list to force show\
        local forceShowPowerBar = envTable.SpecificNpcs [unitFrame.namePlateNpcId] or envTable.SpecificNpcs [unitFrame.namePlateUnitName] or envTable.SpecificNpcs [unitFrame.namePlateUnitNameLower]\
        if (forceShowPowerBar) then\
            envTable.ShowPowerbar (unitFrame)\
            \
            --check if the unit is a enemy player\
        elseif (unitFrame.ActorType == \"enemyplayer\") then\
            if (envTable.ShowForEnemyPlayers) then\
                envTable.ShowPowerbar (unitFrame)\
            end\
            \
            --check if the unit is a enemy npc\
        elseif (unitFrame.ActorType == \"enemynpc\") then\
            if (envTable.ShowForEnemyNpcs) then\
                envTable.ShowPowerbar (unitFrame)\
            end\
        end\
    end\
    \
    function envTable.SavePowerBarSize (unitFrame, height)\
        local plateConfigs = Plater.db.profile.plate_config [unitFrame.ActorType]\
        plateConfigs.mana[1] = plateConfigs.health[1]\
        plateConfigs.mana[2] = height\
        plateConfigs.mana_incombat[1] = plateConfigs.health_incombat[1]\
        plateConfigs.mana_incombat[2] = height\
    end\
end\
\
\
\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    envTable.CanShowPowerBarForUnit (unitFrame)    \
end",
},
["Name"]="Power Bar",
["PlaterCore"]=1,
["LastHookEdited"]="Constructor",
["Icon"]="Interface/Addons/Plater/Media/fire_64",
["Revision"]=69,
["Desc"]="Show power bar for some units.",
["Prio"]=99,
["Time"]=1579030177,
["LoadConditions"]={
["group"]={
},
["role"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["class"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
},
["Enabled"]=true,
},
[35]={
["Icon"]="Interface\\AddOns\\Plater\\images\\castbar_icon",
["Author"]="Ditador-Azralon",
["version"]=-1,
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable, modTable)\
    \
    --private:\
    function envTable.UpdateIconPosition (unitFrame)\
        local castBar = unitFrame.castBar\
        local icon = castBar.Icon\
        local noInterruptTexture = castBar.BorderShield\
        \
        if (modTable.config.showIcon) then\
            icon:ClearAllPoints()\
            \
            if (modTable.config.iconOnLeftSide) then\
                if (modTable.config.useFullSize) then\
                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                    \
                else\
                    \
                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                end\
                \
            else\
                if (modTable.config.useFullSize) then\
                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                    \
                else\
                    \
                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\
                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\
                end\
            end\
            \
            icon:SetWidth (icon:GetHeight())\
            icon:Show()\
        else\
            icon:Hide()\
        end\
        \
        if (modTable.config.showTexture and not castBar.canInterrupt) then\
            noInterruptTexture:Show()\
            \
            local texturePath = modTable.config.iconTexturePath\
            texturePath = texturePath:gsub(\"//\", \"/\")\
            texturePath = texturePath:gsub(\"\\\\\", \"/\")\
            \
            noInterruptTexture:SetTexture (texturePath)\
            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\
            \
            if (modTable.config.desaturatedTexture) then\
                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\
            else\
                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\
            end\
            \
            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\
            noInterruptTexture:ClearAllPoints()\
            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\
            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\
        else\
            noInterruptTexture:Hide()\
        end\
    end\
end",
["Cast Start"]="function (self, unitId, unitFrame, envTable)\
    \
    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\
    envTable.UpdateIconPosition (unitFrame)\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateIconPosition (unitFrame)\
    self.ThrottleUpdate = -1\
    \
end\
\
\
",
},
["LoadConditions"]={
["race"]={
},
["affix"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["role"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["encounter_ids"]={
},
},
["url"]="",
["Name"]="Cast Bar Icon Settings [P]",
["semver"]="",
["Options"]={
[1]={
["Value"]="Icon Settings:",
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Icon Settings",
},
[2]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show the castbar icon when enabled",
["Type"]=4,
["Name"]="Show Icon",
["Value"]=true,
["Key"]="showIcon",
},
[3]={
["Desc"]="If enabled it anchor the icon on the left side, right otherwise",
["Type"]=4,
["Name"]="Icon on Left Side",
["Value"]=true,
["Key"]="iconOnLeftSide",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[4]={
["Desc"]="If enabled the icon has the size of the cast bar plus the healthbar",
["Type"]=4,
["Key"]="useFullSize",
["Value"]=false,
["Name"]="Use Big Icon",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[5]={
["Value"]=0,
["Name"]="Icon Size Offset",
["Key"]="iconSizeOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=5,
["Desc"]="Fine tune the icon size",
["Min"]=0,
["Fraction"]=true,
},
[6]={
["Fraction"]=false,
["Type"]=2,
["Min"]=-5,
["Name"]="Icon Padding",
["Value"]=0,
["Key"]="iconPadding",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=5,
["Desc"]="Space between the icon and the cast bar",
},
[7]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[8]={
["Desc"]="",
["Type"]=5,
["Name"]="Interrupt Texture",
["Value"]="Can't Interrupt Texture:",
["Key"]="option5",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[9]={
["Type"]=4,
["Name"]="Show Texture",
["Value"]=true,
["Key"]="showTexture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled show a texture to tell the cast can't be interrupted",
},
[10]={
["Type"]=3,
["Name"]="Texture Path",
["Value"]="Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
["Key"]="iconTexturePath",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_text",
["Desc"]="Insert the path for the texture",
},
[11]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enbaled, texture is shown in black & white",
["Type"]=4,
["Name"]="Texture Desaturated",
["Value"]=true,
["Key"]="desaturatedTexture",
},
[12]={
["Type"]=1,
["Name"]="Texture Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=0.30567157268524,
},
["Key"]="textureColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Select the color of the texture",
},
[13]={
["Type"]=2,
["Desc"]="Adjust the texture width",
["Value"]=10,
["Name"]="Texture Width",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="textureWidth",
["Max"]=32,
["Min"]=1,
["Fraction"]=false,
},
[14]={
["Desc"]="The texture is set to be the same size as the cast bar, fine tune the height as wanted",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=16,
["Min"]=-16,
["Name"]="Texture Height Mod",
["Value"]=0,
["Key"]="textureHeightMod",
["Fraction"]=true,
["Type"]=2,
},
[15]={
["Desc"]="Adjust the texture position",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=32,
["Name"]="Texture Position",
["Key"]="texturePosition",
["Min"]=-32,
["Value"]=0,
},
[16]={
["Name"]="Texture Alpha",
["Max"]=1,
["Desc"]="Adjust the texture transparency",
["Min"]=0,
["Value"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Key"]="textureAlpha",
["Fraction"]=true,
},
},
["Desc"]="Move the icon of the spell cast to the left or right side of the nameplate.",
["Revision"]=348,
["PlaterCore"]=1,
["LastHookEdited"]="",
["HooksTemp"]={
},
["Time"]=1597097268,
["Enabled"]=false,
},
},
["ui_parent_cast_level"]=10,
["news_frame"]={
["PlaterNewsFrame"]={
["scale"]=1,
},
},
["extra_icon_anchor"]={
["x"]=4,
},
["aura_consolidate"]=true,
["indicator_rare"]=false,
["cast_statusbar_bgcolor"]={
[1]=0,
[2]=0,
[3]=0,
[4]=0.79781,
},
["health_selection_overlay"]="Smooth",
["cast_statusbar_color_nointerrupt"]={
[1]=0.49411764705882,
[2]=0.49803921568628,
[3]=0.50196078431373,
[4]=0.96000000089407,
},
["ui_parent_cast_strata"]="DIALOG",
["castbar_target_font"]="Accidental Presidency",
["cast_statusbar_spark_alpha"]=0.71999996900559,
["patch_version"]=17,
["aura_timer"]=false,
["aura_grow_direction"]=3,
["saved_cvars"]={
["nameplateShowFriends"]="0",
["nameplateMotion"]="1",
["nameplatePersonalShowWithTarget"]="0",
["nameplateMaxDistance"]="55",
["nameplateSelectedAlpha"]="1",
["nameplateGlobalScale"]="1",
["nameplateShowFriendlyTotems"]="0",
["nameplatePersonalShowAlways"]="1",
["nameplateOccludedAlphaMult"]="1",
["NamePlateHorizontalScale"]="1",
["nameplateResourceOnTarget"]="0",
["nameplateShowFriendlyMinions"]="0",
["nameplateShowSelf"]="1",
["nameplateSelfBottomInset"]="0.32596862792969",
["nameplateSelfTopInset"]="0.57687740325928",
["nameplateShowFriendlyNPCs"]="0",
["nameplatePersonalHideDelaySeconds"]="0.2",
["nameplateShowEnemies"]="1",
["nameplateSelectedScale"]="1.15",
["nameplateOtherTopInset"]="0.085",
["nameplateSelfAlpha"]="1",
["ShowClassColorInNameplate"]="1",
["nameplateOverlapV"]="1.1",
["ShowNamePlateLoseAggroFlash"]="1",
["nameplateMotionSpeed"]="0.05",
["nameplateMinScale"]="1",
["nameplateShowEnemyMinus"]="1",
["nameplateShowFriendlyPets"]="0",
["nameplateShowAll"]="1",
["NamePlateVerticalScale"]="1",
["nameplatePersonalShowInCombat"]="1",
["nameplateSelfScale"]="1",
["nameplateShowEnemyMinions"]="1",
["nameplateShowFriendlyGuardians"]="0",
},
["quick_hide"]=true,
["last_news_time"]=1551553489,
["extra_icon_height"]=16,
["buffs_on_aura2"]=true,
["login_counter"]=6,
["health_statusbar_bgcolor"]={
[1]=0.0431372,
[2]=0.0431372,
[3]=0.0431372,
[4]=1,
},
["pet_height_scale"]=0.99999994039536,
["aura2_y_offset"]=9,
["castbar_framelevel"]=0,
["aura_padding"]=2,
["aura_cooldown_show_swipe"]=false,
["castbar_target_anchor"]={
["side"]=11,
},
["cast_statusbar_spark_width"]=25,
["hook_auto_imported"]={
["Color Automation"]=1,
["Cast Bar Icon Config"]=2,
["Monk Statue"]=2,
["Combo Points"]=6,
["Target Color"]=3,
["Reorder Nameplate"]=4,
["Attacking Specific Unit"]=2,
["Targetting Alpha"]=3,
["Execute Range"]=1,
["Blockade Encounter"]=1,
["Hide Neutral Units"]=1,
["Aura Reorder"]=3,
["Dont Have Aura"]=1,
["Bwonsamdi Reaping"]=1,
["Jaina Encounter"]=6,
["Extra Border"]=2,
["Players Targetting Amount"]=4,
},
["aura_show_buff_by_the_unit"]=false,
["cast_statusbar_spark_offset"]=-13,
["number_region_first_run"]=true,
["aura_frame1_anchor"]={
["y"]=9,
["side"]=1,
},
["ui_parent_buff2_level"]=10,
["ui_parent_buff_strata"]="LOW",
["script_data_trash"]={
[1]={
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Hide()\
    \
end",
["Revision"]=432,
["Enabled"]=true,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\
    \
end",
["Name"]="Aura - Buff Alert [Plater]",
["SpellIds"]={
[1]=275826,
[2]=272888,
[3]=272659,
[4]=267901,
[5]=267830,
[6]=265393,
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Show()\
    \
end",
["Time"]=1551467254,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\
    \
end",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Author"]="Tercioo-Sylvanas",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Show()\
    \
end",
["PlaterCore"]=1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Hide()\
    \
end",
["Desc"]="Add the buff name in the trigger box.",
["ScriptType"]=1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
["Options"]={
},
["NpcNames"]={
},
["__TrashAt"]=1627309681,
["OptionsValues"]={
},
},
[2]={
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\
    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\
    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\
    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\
    envTable.HealthBarColor = \"orange\" --color of the healthBar\
    \
    --custom frames\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \
    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\
    \
    --creates the spark to show the cast progress inside the health bar\
    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\
    envTable.overlaySpark:SetBlendMode (\"ADD\")\
    envTable.overlaySpark.width = 32\
    envTable.overlaySpark.height = 36\
    envTable.overlaySpark.alpha = .9\
    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\
    \
    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\
    envTable.topArrow:SetBlendMode (\"ADD\")\
    envTable.topArrow.width = 8\
    envTable.topArrow.height = 8\
    envTable.topArrow.alpha = envTable.ArrowAlpha\
    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\
    \
    --scale animation\
    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \
    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\
    \
end\
\
\
\
\
\
\
\
",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Show()\
    envTable.overlaySpark:Show()\
    \
    if (envTable.ShowArrow) then\
        envTable.topArrow:Show()\
    end\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    envTable.smallScaleAnimation:Play()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    envTable.overlaySpark.height = nameplateHeight + 32\
    \
    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\
    \
    \
end\
\
\
\
\
\
\
",
["Time"]=1550589212,
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Show()\
    envTable.overlaySpark:Show()\
    \
    if (envTable.ShowArrow) then\
        envTable.topArrow:Show()\
    end\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    envTable.smallScaleAnimation:Play()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    envTable.overlaySpark.height = nameplateHeight + 32\
    \
    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\
    \
    \
end\
\
\
\
\
\
\
",
["ScriptType"]=2,
["Icon"]=2175503,
["Options"]={
},
["Author"]="Bombad�o-Azralon",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the percent\
    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\
    \
    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\
    \
    --forces the script to update on a 60Hz base\
    self.ThrottleUpdate = 0.016\
    \
    --update the health bar color coloring from yellow to red\
    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\
    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\
    \
end\
\
\
",
["OptionsValues"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the percent\
    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\
    \
    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\
    \
    --forces the script to update on a 60Hz base\
    self.ThrottleUpdate = 0.016\
    \
    --update the health bar color coloring from yellow to red\
    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\
    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\
    \
end\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.glowEffect:Hide()\
    \
    envTable.overlaySpark:Hide()\
    envTable.topArrow:Hide()\
    \
    Plater.RefreshNameplateColor (unitFrame)\
    \
    envTable.smallScaleAnimation:Stop()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)\
end\
\
\
",
["Revision"]=335,
["Name"]="Explosion Affix M+ [Plater]",
["SpellIds"]={
[1]=240446,
[2]=273577,
},
["__TrashAt"]=1627309681,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.glowEffect:Hide()\
    \
    envTable.overlaySpark:Hide()\
    envTable.topArrow:Hide()\
    \
    Plater.RefreshNameplateColor (unitFrame)\
    \
    envTable.smallScaleAnimation:Stop()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)\
end\
\
\
",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.NameplateSizeOffset = 3 --increases the size of the healthBar\
    envTable.GlowAlpha = 0.45 --from zero to one, is the percent of transparency of the glowing border\
    envTable.ShowArrow = true --or 'false' to hide the arrow above the healthBar\
    envTable.ArrowAlpha = 0.45 --transparent of the arrow above the healthBar\
    envTable.HealthBarColor = \"orange\" --color of the healthBar\
    \
    --custom frames\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \
    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\
    \
    --creates the spark to show the cast progress inside the health bar\
    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\
    envTable.overlaySpark:SetBlendMode (\"ADD\")\
    envTable.overlaySpark.width = 32\
    envTable.overlaySpark.height = 36\
    envTable.overlaySpark.alpha = .9\
    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\
    \
    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\
    envTable.topArrow:SetBlendMode (\"ADD\")\
    envTable.topArrow.width = 8\
    envTable.topArrow.height = 8\
    envTable.topArrow.alpha = envTable.ArrowAlpha\
    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\
    \
    --scale animation\
    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \
    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\
    \
end\
\
\
\
\
\
\
\
",
["NpcNames"]={
},
["PlaterCore"]=1,
["Desc"]="Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
["Enabled"]=true,
},
[3]={
["NpcNames"]={
},
["Name"]="Aura - Debuff Alert [Plater]",
["__TrashAt"]=1627309681,
["OptionsValues"]={
},
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.debuffIconGlow:Hide()\
    \
end\
\
\
",
["Revision"]=247,
["Options"]={
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.debuffIconGlow:Hide()\
    \
end\
\
\
",
["Time"]=1551466091,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\
    \
end\
\
\
",
["PlaterCore"]=1,
["Desc"]="Add the debuff name in the trigger box.",
["SpellIds"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.debuffIconGlow:Show()\
    \
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Author"]="Tercioo-Sylvanas",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.debuffIconGlow:Show()\
    \
end\
\
\
",
["Enabled"]=true,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\
    \
end\
\
\
",
["ScriptType"]=1,
},
[4]={
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
["Revision"]=387,
["Name"]="Cast - Small Alert [Plater]",
["Desc"]="Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
["PlaterCore"]=1,
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
end\
\
\
",
["Time"]=1548349245,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["Author"]="Tercioo-Sylvanas",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.SmallFlashAnimationHub:Play()\
    \
end\
\
\
",
["NpcNames"]={
},
["SpellIds"]={
[1]=275192,
[2]=265912,
[3]=274438,
[4]=268317,
[5]=268375,
[6]=276767,
[7]=264105,
[8]=265876,
[9]=270464,
[10]=266106,
[11]=272180,
[12]=278961,
[13]=278755,
[14]=265468,
[15]=256405,
[16]=256897,
[17]=264101,
[18]=280604,
[19]=268702,
[20]=281621,
[21]=262515,
[22]=255824,
[23]=253583,
[24]=250096,
},
["OptionsValues"]={
},
["Options"]={
},
["Enabled"]=true,
["__TrashAt"]=1627309681,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    \
    --flash duration\
    local CONFIG_FLASH_DURATION = 0.6\
    \
    --manually create a new texture for the flash animation\
    if (not envTable.SmallFlashTexture) then\
        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\
        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\
        envTable.SmallFlashTexture:SetAllPoints()\
    end\
    \
    --manually create a flash animation using the framework\
    if (not envTable.SmallFlashAnimationHub) then \
        \
        local onPlay = function()\
            envTable.SmallFlashTexture:Show()\
        end\
        \
        local onFinished = function()\
            envTable.SmallFlashTexture:Hide()\
        end\
        \
        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\
        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\
        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\
        \
        envTable.SmallFlashAnimationHub = animationHub\
    end\
    \
    \
    \
end\
\
\
\
\
\
\
\
",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.SmallFlashAnimationHub:Play()\
    \
end\
\
\
",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    \
    --flash duration\
    local CONFIG_FLASH_DURATION = 0.6\
    \
    --manually create a new texture for the flash animation\
    if (not envTable.SmallFlashTexture) then\
        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\
        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\
        envTable.SmallFlashTexture:SetAllPoints()\
    end\
    \
    --manually create a flash animation using the framework\
    if (not envTable.SmallFlashAnimationHub) then \
        \
        local onPlay = function()\
            envTable.SmallFlashTexture:Show()\
        end\
        \
        local onFinished = function()\
            envTable.SmallFlashTexture:Hide()\
        end\
        \
        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\
        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\
        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\
        \
        envTable.SmallFlashAnimationHub = animationHub\
    end\
    \
    \
    \
end\
\
\
\
\
\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
end\
\
\
",
},
[5]={
["NpcNames"]={
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    local timeLeft = envTable._RemainingTime\
    \
    --check if the spellID isn't being ignored\
    if (envTable.IgnoredSpellID [envTable._SpellID]) then\
        return\
    end\
    \
    --check the time left and start or stop the blink animation and also check if the time left is > zero\
    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftToBlink) then\
            --blink effect\
            if (envTable.BlinkEnabled) then\
                if (not envTable.blinkAnimation:IsPlaying()) then\
                    envTable.blinkAnimation:Play()\
                end\
            end\
            --glow effect\
            if (envTable.GlowEnabled) then\
                envTable.glowEffect:Show()\
            end\
            --nameplate color\
            if (envTable.ChangeNameplateColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
            end\
        else\
            --blink effect\
            if (envTable.blinkAnimation:IsPlaying()) then\
                envTable.blinkAnimation:Stop()\
            end\
            --glow effect\
            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\
                envTable.glowEffect:Hide()\
            end\
        end\
    end\
    \
    --timer color\
    if (envTable.TimerColorEnabled and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftCritical) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\
        elseif (timeLeft < envTable.TimeLeftWarning) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \
        else\
            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
        end\
    end\
    \
end",
["Enabled"]=true,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.blinkAnimation:Stop()\
    envTable.blinkTexture:Hide()\
    envTable.blinkAnimation:Stop()\
    envTable.glowEffect:Stop()\
    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
end\
\
\
",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.blinkTexture:SetSize (self:GetSize())\
    \
end\
\
\
",
["Author"]="Izimode-Azralon",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (require a /reload after editing any setting)\
    do\
        --blink and glow\
        envTable.BlinkEnabled = true --set to 'false' to disable blinks\
        envTable.GlowEnabled = true --set to 'false' to disable glows\
        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\
        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\
        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\
        envTable.BlinkColor = \"white\"; --color of the blink\
        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\
        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\
        \
        --text color\
        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\
        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\
        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \
        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\
        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\
        \
        --list of spellIDs to ignore\
        envTable.IgnoredSpellID = {\
            [12] = true, --use a simple comma here\
            [13] = true,\
        }\
    end\
    \
    \
    --private\
    do\
        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\
        envTable.blinkTexture:SetPoint ('center', 0, 0)\
        envTable.blinkTexture:Hide()\
        \
        local onPlay = function()\
            envTable.blinkTexture:Show() \
            envTable.blinkTexture.color = envTable.BlinkColor\
        end\
        local onStop = function()\
            envTable.blinkTexture:Hide()  \
        end\
        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\
        \
        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\
        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\
        \
    end\
    \
end\
\
\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.blinkAnimation:Stop()\
    envTable.blinkTexture:Hide()\
    envTable.blinkAnimation:Stop()\
    envTable.glowEffect:Stop()\
    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
end\
\
\
",
["Name"]="Aura - Blink by Time Left [Plater]",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.blinkTexture:SetSize (self:GetSize())\
    \
end\
\
\
",
["SpellIds"]={
},
["OptionsValues"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    local timeLeft = envTable._RemainingTime\
    \
    --check if the spellID isn't being ignored\
    if (envTable.IgnoredSpellID [envTable._SpellID]) then\
        return\
    end\
    \
    --check the time left and start or stop the blink animation and also check if the time left is > zero\
    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftToBlink) then\
            --blink effect\
            if (envTable.BlinkEnabled) then\
                if (not envTable.blinkAnimation:IsPlaying()) then\
                    envTable.blinkAnimation:Play()\
                end\
            end\
            --glow effect\
            if (envTable.GlowEnabled) then\
                envTable.glowEffect:Show()\
            end\
            --nameplate color\
            if (envTable.ChangeNameplateColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
            end\
        else\
            --blink effect\
            if (envTable.blinkAnimation:IsPlaying()) then\
                envTable.blinkAnimation:Stop()\
            end\
            --glow effect\
            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\
                envTable.glowEffect:Hide()\
            end\
        end\
    end\
    \
    --timer color\
    if (envTable.TimerColorEnabled and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftCritical) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\
        elseif (timeLeft < envTable.TimeLeftWarning) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \
        else\
            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
        end\
    end\
    \
end",
["Revision"]=164,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_blink",
["Options"]={
},
["PlaterCore"]=1,
["Desc"]="Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
["__TrashAt"]=1627309681,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (require a /reload after editing any setting)\
    do\
        --blink and glow\
        envTable.BlinkEnabled = true --set to 'false' to disable blinks\
        envTable.GlowEnabled = true --set to 'false' to disable glows\
        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\
        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\
        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\
        envTable.BlinkColor = \"white\"; --color of the blink\
        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\
        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\
        \
        --text color\
        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\
        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\
        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \
        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\
        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\
        \
        --list of spellIDs to ignore\
        envTable.IgnoredSpellID = {\
            [12] = true, --use a simple comma here\
            [13] = true,\
        }\
    end\
    \
    \
    --private\
    do\
        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\
        envTable.blinkTexture:SetPoint ('center', 0, 0)\
        envTable.blinkTexture:Hide()\
        \
        local onPlay = function()\
            envTable.blinkTexture:Show() \
            envTable.blinkTexture.color = envTable.BlinkColor\
        end\
        local onStop = function()\
            envTable.blinkTexture:Hide()  \
        end\
        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\
        \
        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\
        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\
        \
    end\
    \
end\
\
\
\
\
",
["ScriptType"]=1,
["Time"]=1549120808,
},
[6]={
["__TrashAt"]=1627309681,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Show()\
    \
    envTable.BackgroundFlash:Play()\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
end\
\
\
",
["Name"]="Cast - Very Important [Plater]",
["Enabled"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Hide()\
    \
    envTable.BackgroundFlash:Stop()\
    \
    self:StopFrameShake (envTable.FrameShake)    \
    \
end\
\
\
",
["NpcNames"]={
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Hide()\
    \
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame:StopFrameShake (envTable.FrameShake)    \
    \
end\
\
\
",
["OptionsValues"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Show()\
    \
    envTable.BackgroundFlash:Play()\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    self:PlayFrameShake (envTable.FrameShake)\
    \
end\
\
\
",
["Time"]=1548349245,
["Author"]="Bombad�o-Azralon",
["PlaterCore"]=1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\
    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\
    local CONFIG_SHAKE_DURATION = 0.2 --0.2\
    local CONFIG_SHAKE_AMPLITUDE = 5 --5\
    \
    --create a glow effect in the border of the cast bar\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\
    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\
    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \
    \
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\
    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\
    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \
    \
end",
["ScriptType"]=2,
["Revision"]=399,
["Options"]={
},
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\
    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\
    local CONFIG_SHAKE_DURATION = 0.2 --0.2\
    local CONFIG_SHAKE_AMPLITUDE = 5 --5\
    \
    --create a glow effect in the border of the cast bar\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\
    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\
    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \
    \
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\
    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\
    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \
    \
end",
["Desc"]="Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
["SpellIds"]={
[1]=257785,
[2]=267237,
[3]=266951,
[4]=267273,
[5]=267433,
[6]=263066,
[7]=255577,
[8]=255371,
},
},
[7]={
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Time"]=1625793282,
["url"]="",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
\
\
",
["__TrashAt"]=1627309681,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["NpcNames"]={
},
["SpellIds"]={
[1]=350421,
[2]=355787,
[3]=348513,
},
["Name"]="Cast - Alert + Timer [P]",
["PlaterCore"]=1,
["version"]=-1,
["OptionsValues"]={
},
["Author"]="Tercioo-Sylvanas",
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\", 7)\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
    --check if there's a timer for this spell\
    local timer = scriptTable.config.timerList[tostring(envTable._SpellID)]\
    \
    if (timer) then\
        --insert code here\
        \
        --set the castbar config\
        local config = {\
            iconTexture = \"\",\
            iconTexcoord = {0.1, 0.9, 0.1, 0.9},\
            iconAlpha = 1,\
            iconSize = 14,\
            \
            text = \"Spikes Incoming!\",\
            textSize = 8,\
            \
            texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\
            color = {.6, .6, .6, 0.8},\
            \
            isChanneling = false,\
            canInterrupt = false,\
            \
            height = 5,\
            width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\
            \
            spellNameAnchor = {side = 3, x = 0, y = -2},\
            timerAnchor = {side = 5, x = 0, y = -2},\
        }\
        \
        Plater.SetAltCastBar(unitFrame.PlateFrame, config, timer, nil, nil)\
        local castBar2 = unitFrame.castBar2\
        castBar2.Text:ClearAllPoints()\
        castBar2.Text:SetPoint (\"topleft\", castBar2, \"bottomleft\", 0, 0)\
        castBar2.percentText:ClearAllPoints()\
        castBar2.percentText:SetPoint (\"topright\", castBar2, \"bottomright\", 0, 0)\
        Plater:SetFontSize(castBar2.percentText, 8)\
    end\
    \
end\
\
\
\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["Enabled"]=true,
["Revision"]=1154,
["Options"]={
[1]={
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Blank Line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Cast start animation settings",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[3]={
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[4]={
["Type"]=4,
["Key"]="useCastbarColor",
["Value"]=true,
["Name"]="Cast Bar Color Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
},
[5]={
["Desc"]="Color of the cast bar.",
["Type"]=1,
["Key"]="castbarColor",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Name"]="Cast Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[6]={
["Type"]=6,
["Key"]="option7",
["Value"]=0,
["Name"]="Blank Line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Min"]=0.05,
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Key"]="flashDuration",
["Value"]=0.4,
["Name"]="Flash Duration",
},
[8]={
["Fraction"]=false,
["Name"]="Cast Bar Height Mod",
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Key"]="castBarHeight",
["Value"]=5,
},
[9]={
["Type"]=2,
["Max"]=1,
["Key"]="shakeDuration",
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
["Value"]=0.2,
["Name"]="Shake Duration",
},
[10]={
["Min"]=2,
["Key"]="shakeAmplitude",
["Name"]="Shake Amplitude",
["Fraction"]=false,
["Desc"]="How strong is the shake.",
["Max"]=100,
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
},
[11]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Key"]="shakeFrequency",
["Name"]="Shake Frequency",
["Fraction"]=false,
["Max"]=80,
["Min"]=1,
["Value"]=40,
},
[12]={
["Name"]="Timer (Key is SpellId and Value is Time)",
["Value"]={
[1]={
[1]="350421",
[2]="5",
},
[2]={
[1]="355787",
[2]="15",
},
[3]={
[1]="348513",
[2]="14",
},
[4]={
[1]="348513",
[2]="14",
},
},
["Key"]="timerList",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_list",
["Desc"]="Key is the spellId and value is the amount of time of the Timer",
["Type"]=7,
},
},
},
[8]={
["OptionsValues"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can change the nameplate color\
    if (envTable.CanChangeNameplateColor) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end\
    \
end\
\
\
\
\
",
["Revision"]=162,
["PlaterCore"]=1,
["Enabled"]=true,
["ScriptType"]=3,
["Time"]=1548957216,
["Options"]={
},
["Name"]="Unit - Important [Plater]",
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Hide()\
    \
    --restore the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)    \
    \
end\
\
\
",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Show()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
end\
\
\
",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)    \
    --change the nameplate color to this if allowed\
    envTable.CanChangeNameplateColor = false --change to true to change the color\
    envTable.NameplateColor = \"pink\"\
    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\
    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\
    \
    --create a glow effect around the nameplate\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\
    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\
    \
    --set the glow effect alpha\
    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\
    \
end\
\
--[=[\
Using spellIDs for multi-language support\
\
135029 - A Knot of Snakes (Temple of Sethraliss)\
135388 - A Knot of Snakes (Temple of Sethraliss)\
134612 - Grasping Tentacles (Shrine of the Storm)\
133361 - Wasting Servant (Waycrest Manor)\
136330 - Soul Thorns (Waycrest Manor)\
130896 - Blackout Barrel (Freehold)\
129758 - Irontide Grenadier (Freehold)\
131009 - Spirit of Gold (Atal`Dazar)\
--]=]",
["Author"]="Izimode-Azralon",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can change the nameplate color\
    if (envTable.CanChangeNameplateColor) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end\
    \
end\
\
\
\
\
",
["SpellIds"]={
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)    \
    --change the nameplate color to this if allowed\
    envTable.CanChangeNameplateColor = false --change to true to change the color\
    envTable.NameplateColor = \"pink\"\
    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\
    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\
    \
    --create a glow effect around the nameplate\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\
    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\
    \
    --set the glow effect alpha\
    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\
    \
end\
\
--[=[\
Using spellIDs for multi-language support\
\
135029 - A Knot of Snakes (Temple of Sethraliss)\
135388 - A Knot of Snakes (Temple of Sethraliss)\
134612 - Grasping Tentacles (Shrine of the Storm)\
133361 - Wasting Servant (Waycrest Manor)\
136330 - Soul Thorns (Waycrest Manor)\
130896 - Blackout Barrel (Freehold)\
129758 - Irontide Grenadier (Freehold)\
131009 - Spirit of Gold (Atal`Dazar)\
--]=]",
["Icon"]=135996,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Hide()\
    \
    --restore the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)    \
    \
end\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.glowEffect:Show()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
end\
\
\
",
["NpcNames"]={
[1]="135029",
[2]="134388",
[3]="134612",
[4]="133361",
[5]="136330",
[6]="130896",
[7]="129758",
[8]="Healing Tide Totem",
[9]="131009",
},
["__TrashAt"]=1627309681,
},
[9]={
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["PlaterCore"]=1,
["Desc"]="Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
["__TrashAt"]=1627309681,
["Name"]="Cast - Frontal Cone [Plater]",
["SpellIds"]={
[1]=255952,
[2]=257426,
[3]=274400,
[4]=272609,
[5]=269843,
[6]=269029,
[7]=272827,
[8]=269266,
[9]=263912,
[10]=264923,
[11]=258864,
[12]=256955,
[13]=265540,
[14]=260793,
[15]=270003,
[16]=270507,
[17]=257337,
[18]=268415,
[19]=275907,
[20]=268865,
[21]=260669,
[22]=260280,
[23]=253239,
[24]=265541,
[25]=250258,
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["ScriptType"]=2,
["UpdateCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\
    \
    envTable.movingArrow:SetAlpha (0.275)\
    --envTable.movingArrow:SetDesaturated (true)\
    \
    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \
        function() \
            envTable.movingArrow:Show() \
            envTable.movingArrow:SetPoint(\"left\", 0, 0)\
        end, \
        function() envTable.movingArrow:Hide() end)\
    \
    envTable.movingAnimation:SetLooping (\"REPEAT\")\
    \
    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\
    \
    \
    \
end\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
["Revision"]=192,
["Enabled"]=true,
["Options"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["Temp_UpdateCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\
    \
    envTable.movingArrow:SetAlpha (0.275)\
    --envTable.movingArrow:SetDesaturated (true)\
    \
    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \
        function() \
            envTable.movingArrow:Show() \
            envTable.movingArrow:SetPoint(\"left\", 0, 0)\
        end, \
        function() envTable.movingArrow:Hide() end)\
    \
    envTable.movingAnimation:SetLooping (\"REPEAT\")\
    \
    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\
    \
    \
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
["Time"]=1548349245,
["Author"]="Izimode-Azralon",
["NpcNames"]={
},
},
[10]={
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    local targetName = UnitName (unitId .. \"target\");\
    if (targetName) then\
        local _, class = UnitClass (unitId .. \"target\");\
        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\
        envTable.FixateTarget.text = targetName;\
    end    \
end\
\
\
",
["PlaterCore"]=1,
["SpellIds"]={
[1]=272584,
[2]=244653,
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["ScriptType"]=1,
["Revision"]=197,
["Options"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Show();\
    envTable.FixateIcon:Show();\
    \
end\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \
    \
    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\
    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \
    \
end\
\
\
\
\
\
\
\
\
",
["OptionsValues"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    local targetName = UnitName (unitId .. \"target\");\
    if (targetName) then\
        local _, class = UnitClass (unitId .. \"target\");\
        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\
        envTable.FixateTarget.text = targetName;\
    end    \
end\
\
\
",
["Icon"]=1029718,
["Author"]="Celian-Sylvanas",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Show();\
    envTable.FixateIcon:Show();\
    \
end\
\
\
",
["Time"]=1550595071,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \
    \
    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\
    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \
    \
end\
\
\
\
\
\
\
\
\
",
["NpcNames"]={
},
["Name"]="Fixate [Plater]",
["Desc"]="Show above the nameplate who is the player fixated",
["Enabled"]=true,
["__TrashAt"]=1627309681,
},
[11]={
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end    \
    \
    --restore the cast bar to its original height\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
        envTable.OriginalHeight = nil\
    end\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
end\
\
\
\
\
\
",
["Time"]=1551892410,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --https://www.wowhead.com/spell=253583/fiery-enchant\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    \
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = \"darkorange\"\
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = 5\
    \
    \
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["Options"]={
},
["NpcNames"]={
},
["PlaterCore"]=1,
["SpellIds"]={
[1]=258153,
[2]=258313,
[3]=257069,
[4]=274569,
[5]=278020,
[6]=261635,
[7]=272700,
[8]=280404,
[9]=268030,
[10]=265368,
[11]=263891,
[12]=264520,
[13]=265407,
[14]=278567,
[15]=278602,
[16]=258128,
[17]=257791,
[18]=258938,
[19]=265089,
[20]=272183,
[21]=256060,
[22]=257397,
[23]=257899,
[24]=269972,
[25]=270901,
[26]=270492,
[27]=268129,
[28]=268709,
[29]=263215,
[30]=268797,
[31]=262540,
[32]=262554,
[33]=253517,
[34]=255041,
[35]=252781,
[36]=250368,
[37]=258777,
[38]=72286,
},
["__TrashAt"]=1627309681,
["OptionsValues"]={
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --https://www.wowhead.com/spell=253583/fiery-enchant\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    \
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = \"darkorange\"\
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = 5\
    \
    \
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \
    \
end\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end    \
    \
    --restore the cast bar to its original height\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
        envTable.OriginalHeight = nil\
    end\
    \
    --stop the camera shake\
    self:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
end\
\
\
\
\
\
",
["Revision"]=581,
["Author"]="Tercioo-Sylvanas",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    self:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
end\
\
\
\
\
\
\
\
\
",
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
end\
\
\
\
\
\
\
\
\
",
["Name"]="Cast - Big Alert [Plater]",
["Enabled"]=true,
},
[12]={
["Options"]={
},
["Name"]="Fixate On You [Plater]",
["Enabled"]=true,
["OptionsValues"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --swap this to true when it is fixated\
    local isFixated = false\
    \
    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\
    for debuffId = 1, 40 do\
        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\
        \
        --cancel the loop if there's no more debuffs on the player\
        if (not name) then \
            break \
        end\
        \
        --check if the owner of the debuff is this unit\
        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\
            --the debuff the player has, has been placed by this unit, set the name above the unit name\
            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\
            envTable.FixateTarget:Show()\
            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\
            isFixated = true\
            \
            if (not envTable.IsFixated) then\
                envTable.IsFixated = true\
                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\
            end\
        end\
        \
    end\
    \
    --check if the nameplate color is changed but isn't fixated any more\
    if (not isFixated and envTable.IsFixated) then\
        --refresh the nameplate color\
        Plater.RefreshNameplateColor (unitFrame)\
        --reset the text\
        envTable.FixateTarget:SetText (\"\")\
        \
        envTable.IsFixated = false\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Temp_ConstructorCode"]="--todo: add npc ids for multilanguage support\
\
function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.TextAboveNameplate = \"** On You **\"\
    envTable.NameplateColor = \"green\"\
    \
    --label to show the text above the nameplate\
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\
    \
    --the spell casted by the npc in the trigger list needs to be in the list below as well\
    local spellList = {\
        [268074] = \"Dark Purpose\", --G'huun Mythic Add\
        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\
        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\
        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\
        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\
        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\
        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\
        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\
        \
        [288038] = \"Marked Target\", --marine jaina encounter\
        --[] = \"\" --       \
        \
    }\
    \
    --build the list with localized spell names\
    envTable.FixateDebuffs = {}\
    for spellID, enUSSpellName in pairs (spellList) do\
        local localizedSpellName = GetSpellInfo (spellID)\
        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\
    end\
    \
    --debug - smuggled crawg\
    envTable.FixateDebuffs [\"Jagged Maw\"] = true\
    \
end\
\
--[=[\
NpcIDs:\
136461: Spawn of G'huun (mythic uldir G'huun)\
146753: kul tiran marine from jaina encounter\
--]=]\
\
\
\
\
",
["Icon"]=841383,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:SetText (\"\")\
    envTable.FixateTarget:Hide()\
    \
    envTable.IsFixated = false\
    \
    Plater.RefreshNameplateColor (unitFrame)\
end\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["NpcNames"]={
[1]="smuggled crawg",
[2]="sergeant bainbridge",
[3]="blacktooth scrapper",
[4]="irontide grenadier",
[5]="feral bloodswarmer",
[6]="earthrager",
[7]="crawler mine",
[8]="rezan",
[9]="136461",
[10]="146753",
[11]="144807",
},
["PlaterCore"]=1,
["ConstructorCode"]="--todo: add npc ids for multilanguage support\
\
function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.TextAboveNameplate = \"** On You **\"\
    envTable.NameplateColor = \"green\"\
    \
    --label to show the text above the nameplate\
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\
    \
    --the spell casted by the npc in the trigger list needs to be in the list below as well\
    local spellList = {\
        [268074] = \"Dark Purpose\", --G'huun Mythic Add\
        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\
        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\
        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\
        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\
        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\
        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\
        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\
        \
        [288038] = \"Marked Target\", --marine jaina encounter on battle of dazar'alor\
        [282209] = \"Mark of Prey\", --ravenous stalker conclave encounter on battle of dazar'alor\
        --[] = \"\" --       \
        \
    }\
    \
    --build the list with localized spell names\
    envTable.FixateDebuffs = {}\
    for spellID, enUSSpellName in pairs (spellList) do\
        local localizedSpellName = GetSpellInfo (spellID)\
        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\
    end\
    \
    --debug - smuggled crawg\
    envTable.FixateDebuffs [\"Jagged Maw\"] = true\
    \
end\
\
--[=[\
NpcIDs:\
136461: Spawn of G'huun (mythic uldir G'huun)\
146753: Kul Tiran Marine from jaina encounter on battle of dazar'alor\
144807: Ravenous Stalker conclave encounter on battle of dazar'alor\
--]=]\
\
\
\
\
",
["Desc"]="When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
["Revision"]=208,
["Author"]="Tecno-Azralon",
["SpellIds"]={
[1]="spawn of g'huun",
[2]="smuggled crawg",
[3]="sergeant bainbridge",
[4]="blacktooth scrapper",
[5]="irontide grenadier",
[6]="feral bloodswarmer",
[7]="earthrager",
[8]="crawler mine",
[9]="rezan",
[10]="136461",
},
["Time"]=1548105751,
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["ScriptType"]=3,
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --swap this to true when it is fixated\
    local isFixated = false\
    \
    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\
    for debuffId = 1, 40 do\
        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\
        \
        --cancel the loop if there's no more debuffs on the player\
        if (not name) then \
            break \
        end\
        \
        --check if the owner of the debuff is this unit\
        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\
            --the debuff the player has, has been placed by this unit, set the name above the unit name\
            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\
            envTable.FixateTarget:Show()\
            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\
            isFixated = true\
            \
            if (not envTable.IsFixated) then\
                envTable.IsFixated = true\
                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\
            end\
        end\
        \
    end\
    \
    --check if the nameplate color is changed but isn't fixated any more\
    if (not isFixated and envTable.IsFixated) then\
        --refresh the nameplate color\
        Plater.RefreshNameplateColor (unitFrame)\
        --reset the text\
        envTable.FixateTarget:SetText (\"\")\
        \
        envTable.IsFixated = false\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["__TrashAt"]=1627309681,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:SetText (\"\")\
    envTable.FixateTarget:Hide()\
    \
    envTable.IsFixated = false\
    \
    Plater.RefreshNameplateColor (unitFrame)\
end\
\
\
",
},
},
["hover_highlight_alpha"]=0.29999998211861,
["aura_width2"]=22,
["color_override_colors"]={
[3]={
[2]=0.2784313,
[3]=0.2078431,
},
[4]={
[1]=1,
[2]=0.83921568627451,
[3]=0,
},
[5]={
[1]=0.29019607843137,
[2]=1,
[3]=0.19607843137255,
},
},
["not_affecting_combat_alpha"]=0.799999,
["url"]="https://wago.io/g-jp-v2zw/5",
["cast_statusbar_spark_color"]={
[1]=0.98823529411765,
[3]=0.94117647058823,
},
["extra_icon_auras_mine"]={
["224991"]=true,
},
["extra_icon_show_enrage"]=true,
["castbar_target_show"]=true,
["dps"]={
["colors"]={
["aggro"]={
[2]=0.047058823529412,
},
["pulling"]={
[2]=0.96078431372549,
[3]=0.95294117647059,
},
},
},
["aura_cooldown_edge_texture"]="Interface\\GLUES\\loadingOld",
["cast_statusbar_bgtexture"]="PlaterBackground",
["resources"]={
["scale"]=0.79999995231628,
["y_offset"]=1,
["y_offset_target"]=9,
},
["target_shady_alpha"]=0.59999996423721,
["aura_timer_text_size"]=10,
["aura_timer_text_anchor"]={
["x"]=-1,
["side"]=1,
["y"]=-7,
},
["aura_height"]=15,
["target_highlight_alpha"]=1,
["range_check_in_range_or_target_alpha"]=0.79999995231628,
["aura_height2"]=15,
["hook_data_trash"]={
[1]={
["Options"]={
},
["Icon"]=574574,
["HooksTemp"]={
["Nameplate Added"]="\
\
-- exported function Plater.UpdatePlateSize() from Plater.lua\
--this is for advanced users which wants to reorder the nameplate frame at their desire\
\
\
\
function (self, unitId, unitFrame, envTable)\
    \
    --check if there's a type of unit on this nameplate\
    local plateFrame = unitFrame:GetParent()\
    if (not plateFrame.actorType) then\
        return\
    end\
    \
    --get all the frames and cache some variables\
    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\
    local profile = Plater.db.profile\
    local DB_PLATE_CONFIG = profile.plate_config\
    local isInCombat = Plater.IsInCombat()\
    local actorType = plateFrame.actorType\
    \
    local unitFrame = plateFrame.unitFrame\
    local healthBar = unitFrame.healthBar\
    local castBar = unitFrame.castBar\
    local powerBar = unitFrame.powerBar\
    local buffFrame1 = unitFrame.BuffFrame\
    local buffFrame2 = unitFrame.BuffFrame2\
    \
    --use in combat bars when in pvp\
    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\
        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\
            isInCombat = true\
        end\
    end\
    \
    --get the config for this actor type\
    local plateConfigs = DB_PLATE_CONFIG [actorType]\
    --get the config key based if the player is in combat\
    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\
    \
    --get the width and height from what the user set in the options panel\
    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\
    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\
    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\
    \
    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\
    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\
    local castBarOffSetY = plateConfigs.castbar_offset\
    \
    --calculate offsets for the power bar\
    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\
    local powerBarOffSetY = 0\
    \
    --calculate the size deviation for pets\
    local unitType = Plater.GetUnitType (plateFrame)\
    if (unitType == \"pet\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\
        \
    elseif (unitType == \"minus\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\
    end\
    \
    --unit frame - is set to be the same size as the plateFrame\
    unitFrame:ClearAllPoints()\
    unitFrame:SetAllPoints()\
    \
    --calculates the health bar anchor points\
    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \
    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\
    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\
    \
    --set the health bar point\
    healthBar:ClearAllPoints()\
    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\
    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\
    \
    --set the cast bar point and size\
    castBar:ClearAllPoints()\
    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetHeight (castBar, castBarHeight)\
    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\
    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\
    \
    --set the power bar point and size\
    powerBar:ClearAllPoints()\
    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetHeight (powerBar, powerBarHeight)\
    \
    --power bar are hidden by default, show it if there's a custom size for it\
    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\
        powerBar:SetUnit (unitFrame.unit)\
    end\
    \
    --aura frames\
    buffFrame1:ClearAllPoints()\
    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\
    \
    buffFrame2:ClearAllPoints()\
    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \
    \
end\
\
\
",
},
["LoadConditions"]={
["map_ids"]={
},
["role"]={
},
["race"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
["pvptalent"]={
},
},
["LastHookEdited"]="Nameplate Added",
["Revision"]=90,
["Author"]="Kastfall-Azralon",
["Time"]=1551825364,
["PlaterCore"]=1,
["Enabled"]=false,
["OptionsValues"]={
},
["Desc"]="Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
["Hooks"]={
["Nameplate Added"]="\
\
-- exported function Plater.UpdatePlateSize() from Plater.lua\
--this is for advanced users which wants to reorder the nameplate frame at their desire\
\
\
\
function (self, unitId, unitFrame, envTable)\
    \
    --check if there's a type of unit on this nameplate\
    local plateFrame = unitFrame:GetParent()\
    if (not plateFrame.actorType) then\
        return\
    end\
    \
    --get all the frames and cache some variables\
    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\
    local profile = Plater.db.profile\
    local DB_PLATE_CONFIG = profile.plate_config\
    local isInCombat = Plater.IsInCombat()\
    local actorType = plateFrame.actorType\
    \
    local unitFrame = plateFrame.unitFrame\
    local healthBar = unitFrame.healthBar\
    local castBar = unitFrame.castBar\
    local powerBar = unitFrame.powerBar\
    local buffFrame1 = unitFrame.BuffFrame\
    local buffFrame2 = unitFrame.BuffFrame2\
    \
    --use in combat bars when in pvp\
    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\
        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\
            isInCombat = true\
        end\
    end\
    \
    --get the config for this actor type\
    local plateConfigs = DB_PLATE_CONFIG [actorType]\
    --get the config key based if the player is in combat\
    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\
    \
    --get the width and height from what the user set in the options panel\
    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\
    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\
    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\
    \
    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\
    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\
    local castBarOffSetY = plateConfigs.castbar_offset\
    \
    --calculate offsets for the power bar\
    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\
    local powerBarOffSetY = 0\
    \
    --calculate the size deviation for pets\
    local unitType = Plater.GetUnitType (plateFrame)\
    if (unitType == \"pet\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\
        \
    elseif (unitType == \"minus\") then\
        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\
        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\
    end\
    \
    --unit frame - is set to be the same size as the plateFrame\
    unitFrame:ClearAllPoints()\
    unitFrame:SetAllPoints()\
    \
    --calculates the health bar anchor points\
    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \
    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\
    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\
    \
    --set the health bar point\
    healthBar:ClearAllPoints()\
    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\
    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\
    \
    --set the cast bar point and size\
    castBar:ClearAllPoints()\
    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\
    PixelUtil.SetHeight (castBar, castBarHeight)\
    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\
    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\
    \
    --set the power bar point and size\
    powerBar:ClearAllPoints()\
    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\
    PixelUtil.SetHeight (powerBar, powerBarHeight)\
    \
    --power bar are hidden by default, show it if there's a custom size for it\
    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\
        powerBar:SetUnit (unitFrame.unit)\
    end\
    \
    --aura frames\
    buffFrame1:ClearAllPoints()\
    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\
    \
    buffFrame2:ClearAllPoints()\
    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \
    \
end\
\
\
",
},
["__TrashAt"]=1627309681,
["Name"]="Reorder Nameplate [Plater]",
},
[2]={
["Revision"]=273,
["OptionsValues"]={
},
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\
    \
    --space between each aura icon\
    envTable.padding = 2\
    \
    --space between each row of icons\
    envTable.rowPadding = 12\
    \
    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\
    envTable.maxAurasPerRow = 5\
    \
    --stack auras of the same name that arent stacked by default from the game\
    envTable.consolidadeRepeatedAuras = true    \
    \
    --which auras goes first, assign a value (any number), bigger value goes first\
    envTable.priority = {\
        [\"Vampiric Touch\"] = 50,\
        [\"Shadow Word: Pain\"] = 22,\
        [\"Mind Flay\"] = 5,\
    }\
    \
end \
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\
    \
    if (Plater.db.profile.buffs_on_aura2) then\
        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\
    end\
    \
    for containerID = 1, #auraContainers do\
        \
        local auraContainer = auraContainers [containerID]\
        local aurasShown = {}\
        local aurasDuplicated = {}\
        \
        --build the list of auras shown in the buff frame and check for each aura priority\
        --also check if the consolidate (stack) auras with the same name is enabled\
        for index, auraIcon in ipairs (auraContainer) do\
            if (auraIcon:IsShown()) then\
                if (envTable.consolidadeRepeatedAuras) then\
                    --is this aura already shown?\
                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\
                    if (iconShownIndex) then\
                        --get the table with information about the shown icon\
                        local auraShownTable = aurasShown [iconShownIndex]\
                        --get the icon already in the table\
                        local icon = auraShownTable[1]\
                        --increase the amount of stacks\
                        auraShownTable[3] = auraShownTable[3] + 1\
                        \
                        --check if the remaining time of the icon already added in the table is lower than the current\
                        if (auraIcon.RemainingTime > icon.RemainingTime) then\
                            --replace the icon for the icon with bigger duration\
                            auraShownTable[1] = auraIcon\
                            icon:Hide()\
                        else\
                            auraIcon:Hide()\
                        end\
                    else    \
                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\
                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\
                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\
                    end\
                else\
                    --not stacking similar auras\
                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\
                    tinsert (aurasShown, {auraIcon, priority})\
                    \
                end           \
            end\
        end\
        \
        --sort auras by priority\
        table.sort (aurasShown, DetailsFramework.SortOrder2)\
        \
        local growDirection\
        if (containerID == 1) then --debuff container\
            growDirection = Plater.db.profile.aura_grow_direction\
            --force to grow to right if it is anchored to center\
            if (growDirection == 2) then\
                growDirection = 3\
            end\
            -- \"Left\", \"Center\", \"Right\" - 1  2  3\
            \
        elseif (containerID == 2) then --buff container\
            growDirection = Plater.db.profile.aura2_grow_direction\
            --force to grow to left if it is anchored to center\
            if (growDirection == 2) then\
                growDirection = 1\
            end\
            \
        end\
        \
        local padding = envTable.padding\
        local framersPerRow = envTable.maxAurasPerRow + 1\
        \
        --first icon is where the row starts\
        local firstIcon = aurasShown[1] and aurasShown[1][1]\
        \
        if (firstIcon) then\
            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\
            anchorPoint:SetSize (1, 1)\
            \
            firstIcon:ClearAllPoints()\
            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\
            \
            --check the consolidaded stacks, this is not the regular buff stacks\
            local firstIconStacks = aurasShown[1][3]\
            if (firstIconStacks and firstIconStacks > 1) then\
                firstIcon.StackText:SetText (firstIconStacks)\
                firstIcon.StackText:Show()\
            end\
            \
            --> left to right\
            if (growDirection == 3) then\
                --> iterate among all aura icons\
                for i = 2, #aurasShown do\
                    local auraIcon = aurasShown [i][1]\
                    auraIcon:ClearAllPoints()\
                    \
                    if (i == framersPerRow) then\
                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\
                        framersPerRow = framersPerRow + framersPerRow\
                        \
                    else\
                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\
                    end\
                    \
                    local stacks = aurasShown[i][3]\
                    if (stacks and stacks > 1) then\
                        auraIcon.StackText:SetText (stacks)\
                        auraIcon.StackText:Show()\
                    end\
                end        \
                \
                --right to left\
            elseif (growDirection == 1) then\
                --> iterate among all aura icons\
                for i = 2, #aurasShown do\
                    local auraIcon = aurasShown [i][1]\
                    auraIcon:ClearAllPoints()\
                    \
                    if (i == framersPerRow) then\
                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\
                        framersPerRow = framersPerRow + framersPerRow\
                        \
                    else\
                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\
                    end\
                    \
                    local stacks = aurasShown[i][3]\
                    if (stacks and stacks > 1) then\
                        auraIcon.StackText:SetText (stacks)\
                        auraIcon.StackText:Show()\
                    end\
                    \
                end                    \
            end\
            \
        end\
    end\
end\
\
\
",
},
["Options"]={
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\
    \
    --space between each aura icon\
    envTable.padding = 2\
    \
    --space between each row of icons\
    envTable.rowPadding = 12\
    \
    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\
    envTable.maxAurasPerRow = 5\
    \
    --stack auras of the same name that arent stacked by default from the game\
    envTable.consolidadeRepeatedAuras = true    \
    \
    --which auras goes first, assign a value (any number), bigger value goes first\
    envTable.priority = {\
        [\"Vampiric Touch\"] = 50,\
        [\"Shadow Word: Pain\"] = 22,\
        [\"Mind Flay\"] = 5,\
    }\
    \
end \
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\
    \
    if (Plater.db.profile.buffs_on_aura2) then\
        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\
    end\
    \
    for containerID = 1, #auraContainers do\
        \
        local auraContainer = auraContainers [containerID]\
        local aurasShown = {}\
        local aurasDuplicated = {}\
        \
        --build the list of auras shown in the buff frame and check for each aura priority\
        --also check if the consolidate (stack) auras with the same name is enabled\
        for index, auraIcon in ipairs (auraContainer) do\
            if (auraIcon:IsShown()) then\
                if (envTable.consolidadeRepeatedAuras) then\
                    --is this aura already shown?\
                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\
                    if (iconShownIndex) then\
                        --get the table with information about the shown icon\
                        local auraShownTable = aurasShown [iconShownIndex]\
                        --get the icon already in the table\
                        local icon = auraShownTable[1]\
                        --increase the amount of stacks\
                        auraShownTable[3] = auraShownTable[3] + 1\
                        \
                        --check if the remaining time of the icon already added in the table is lower than the current\
                        if (auraIcon.RemainingTime > icon.RemainingTime) then\
                            --replace the icon for the icon with bigger duration\
                            auraShownTable[1] = auraIcon\
                            icon:Hide()\
                        else\
                            auraIcon:Hide()\
                        end\
                    else    \
                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\
                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\
                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\
                    end\
                else\
                    --not stacking similar auras\
                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\
                    tinsert (aurasShown, {auraIcon, priority})\
                    \
                end           \
            end\
        end\
        \
        --sort auras by priority\
        table.sort (aurasShown, DetailsFramework.SortOrder2)\
        \
        local growDirection\
        if (containerID == 1) then --debuff container\
            growDirection = Plater.db.profile.aura_grow_direction\
            --force to grow to right if it is anchored to center\
            if (growDirection == 2) then\
                growDirection = 3\
            end\
            -- \"Left\", \"Center\", \"Right\" - 1  2  3\
            \
        elseif (containerID == 2) then --buff container\
            growDirection = Plater.db.profile.aura2_grow_direction\
            --force to grow to left if it is anchored to center\
            if (growDirection == 2) then\
                growDirection = 1\
            end\
            \
        end\
        \
        local padding = envTable.padding\
        local framersPerRow = envTable.maxAurasPerRow + 1\
        \
        --first icon is where the row starts\
        local firstIcon = aurasShown[1] and aurasShown[1][1]\
        \
        if (firstIcon) then\
            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\
            anchorPoint:SetSize (1, 1)\
            \
            firstIcon:ClearAllPoints()\
            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\
            \
            --check the consolidaded stacks, this is not the regular buff stacks\
            local firstIconStacks = aurasShown[1][3]\
            if (firstIconStacks and firstIconStacks > 1) then\
                firstIcon.StackText:SetText (firstIconStacks)\
                firstIcon.StackText:Show()\
            end\
            \
            --> left to right\
            if (growDirection == 3) then\
                --> iterate among all aura icons\
                for i = 2, #aurasShown do\
                    local auraIcon = aurasShown [i][1]\
                    auraIcon:ClearAllPoints()\
                    \
                    if (i == framersPerRow) then\
                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\
                        framersPerRow = framersPerRow + framersPerRow\
                        \
                    else\
                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\
                    end\
                    \
                    local stacks = aurasShown[i][3]\
                    if (stacks and stacks > 1) then\
                        auraIcon.StackText:SetText (stacks)\
                        auraIcon.StackText:Show()\
                    end\
                end        \
                \
                --right to left\
            elseif (growDirection == 1) then\
                --> iterate among all aura icons\
                for i = 2, #aurasShown do\
                    local auraIcon = aurasShown [i][1]\
                    auraIcon:ClearAllPoints()\
                    \
                    if (i == framersPerRow) then\
                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\
                        framersPerRow = framersPerRow + framersPerRow\
                        \
                    else\
                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\
                    end\
                    \
                    local stacks = aurasShown[i][3]\
                    if (stacks and stacks > 1) then\
                        auraIcon.StackText:SetText (stacks)\
                        auraIcon.StackText:Show()\
                    end\
                    \
                end                    \
            end\
            \
        end\
    end\
end\
\
\
",
},
["Name"]="Aura Reorder [Plater]",
["Enabled"]=false,
["Author"]="Ditador-Azralon",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
["LastHookEdited"]="Constructor",
["Desc"]="Reorder buffs and debuffs following the settings set in the constructor.",
["__TrashAt"]=1627309681,
["PlaterCore"]=1,
["LoadConditions"]={
["role"]={
},
["pvptalent"]={
},
["talent"]={
},
["group"]={
},
["affix"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["class"]={
},
["map_ids"]={
},
},
["Time"]=1559665989,
},
[3]={
["PlaterCore"]=1,
["LastHookEdited"]="Constructor",
["Enabled"]=false,
["__TrashAt"]=1627309681,
["Time"]=1551825291,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
["Desc"]="Change the color if a unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
["Author"]="Kastfall-Azralon",
["Name"]="Attacking Specific Unit [Plater]",
["HooksTemp"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    envTable.ListOfNpcs = {\
        [61146] = \"olive\", --monk statue npcID\
        [103822] = \"olive\", --druid treant npcID\
        \
    }\
    \
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --get the GUID of the target of the unit\
    local targetGUID = UnitGUID (unitId .. \"target\")\
    \
    if (targetGUID) then\
        \
        --get the npcID of the target\
        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\
        --check if the npcID of this unit is in the npc list \
        if (envTable.ListOfNpcs [npcID]) then\
            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\
            \
        else\
            --check if the name of ths unit is in the list\
            local unitName = UnitName (unitId .. \"target\")\
            if (envTable.ListOfNpcs [unitName]) then\
                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\
                \
            else\
                --check if the name of the unit in lower case is in the npc list\
                unitName = string.lower (unitName)\
                if (envTable.ListOfNpcs [unitName]) then\
                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \
                    \
                end\
            end\
        end\
        \
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["OptionsValues"]={
},
["Options"]={
},
["Hooks"]={
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --list of npcs and their colors, can be inserted:\
    --name of the unit\
    --name of the unit in lower case\
    --npcID of the unit\
    \
    --color can be added as:\
    --color names: \"red\", \"yellow\"\
    --color hex: \"#FF0000\", \"#FFFF00\"\
    --color table: {1, 0, 0}, {1, 1, 0}    \
    \
    envTable.ListOfNpcs = {\
        [61146] = \"olive\", --monk statue npcID\
        [103822] = \"olive\", --druid treant npcID\
        \
    }\
    \
    \
end\
\
\
\
\
",
["Nameplate Updated"]="function (self, unitId, unitFrame, envTable)\
    \
    --get the GUID of the target of the unit\
    local targetGUID = UnitGUID (unitId .. \"target\")\
    \
    if (targetGUID) then\
        \
        --get the npcID of the target\
        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\
        --check if the npcID of this unit is in the npc list \
        if (envTable.ListOfNpcs [npcID]) then\
            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\
            \
        else\
            --check if the name of ths unit is in the list\
            local unitName = UnitName (unitId .. \"target\")\
            if (envTable.ListOfNpcs [unitName]) then\
                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\
                \
            else\
                --check if the name of the unit in lower case is in the npc list\
                unitName = string.lower (unitName)\
                if (envTable.ListOfNpcs [unitName]) then\
                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \
                    \
                end\
            end\
        end\
        \
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["class"]={
},
["role"]={
},
["affix"]={
},
["race"]={
},
["encounter_ids"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["spec"]={
},
},
["Revision"]=274,
},
[4]={
["Hooks"]={
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the amount of comboo points shown when the player changes talents or specialization\
    envTable.UpdateComboPointAmount()\
    \
    --save the time of the last talent change\
    envTable.LastPlayerTalentUpdate = GetTime()\
    \
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    local anchors = {\
        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\
    }\
    \
    local sizes = {\
        width = 12,\
        height = 12,\
        scale = 1,\
    }\
    \
    local textures = {\
        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\
        \
        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\
    }\
    \
    local frameLevel = 1000\
    local frameStrata = \"high\"    \
    \
    --private\
    do\
        --store combo points frames on this table\
        envTable.ComboPoints = {}\
        --save when the player changed talents or spec\
        envTable.LastPlayerTalentUpdate = GetTime()\
        --save when this nameplate got a combo point amount and alignment update        \
        \
        --build combo points frame anchor (combo point are anchored to this)\
        if (not unitFrame.PlaterComboPointFrame) then\
            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\
            hostFrame.ComboPointFramesPool = {}\
            unitFrame.PlaterComboPointFrame = hostFrame\
            envTable.ComboPointFrame = hostFrame\
            \
            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\
            \
            --animations\
            local onPlayShowAnimation = function (animation)\
                --stop the hide animation if it's playing\
                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().HideAnimation:Stop()\
                end\
                \
                animation:GetParent():Show()\
            end\
            \
            local onPlayHideAnimation = function (animation)\
                --stop the show animation if it's playing\
                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().ShowAnimation:Stop()\
                end\
            end        \
            local onStopHideAnimation = function (animation)\
                animation:GetParent():Hide()       \
            end\
            \
            local createAnimations = function (comboPoint)\
                --on show\
                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\
                \
                --on hide\
                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\
            end\
            \
            --build combo point frame        \
            for i =1, 10 do \
                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\
                f:SetSize (sizes.width, sizes.height)\
                tinsert (envTable.ComboPoints, f)\
                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\
                \
                local backgroundTexture = f:CreateTexture (nil, \"background\")\
                backgroundTexture:SetTexture (textures.backgroundTexture)\
                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\
                backgroundTexture:SetSize (sizes.width, sizes.height)\
                backgroundTexture:SetPoint (\"center\")\
                \
                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\
                comboPointTexture:SetTexture (textures.comboPointTexture)\
                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\
                \
                comboPointTexture:SetSize (sizes.width, sizes.height)\
                comboPointTexture:SetPoint (\"center\")\
                comboPointTexture:Hide()            \
                \
                f.IsActive = false\
                \
                f.backgroundTexture = backgroundTexture\
                f.comboPointTexture = comboPointTexture\
                \
                createAnimations (f)\
            end\
            \
        else\
            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\
            \
        end            \
        \
        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\
        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\
        \
        function envTable.UpdateComboPoints()\
            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\
            \
            for i = 1, envTable.TotalComboPoints do\
                local thisComboPoint = envTable.ComboPoints [i]\
                \
                if (i <= comboPoints ) then\
                    --combo point enabled\
                    if (not thisComboPoint.IsActive) then\
                        thisComboPoint.ShowAnimation:Play()\
                        thisComboPoint.IsActive = true\
                        \
                    end\
                    \
                else\
                    --combo point disabled\
                    if (thisComboPoint.IsActive) then\
                        thisComboPoint.HideAnimation:Play()\
                        thisComboPoint.IsActive = false\
                        \
                    end\
                end\
            end\
            \
            \
        end\
        \
        function envTable.UpdateComboPointAmount()\
            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\
            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\
            local reservedSpace = namePlateWidth / comboPoints\
            \
            --store the total amount of combo points\
            envTable.TotalComboPoints = comboPoints\
            \
            --update anchor frame\
            envTable.ComboPointFrame:SetWidth (namePlateWidth)\
            envTable.ComboPointFrame:SetHeight (20)\
            envTable.ComboPointFrame:ClearAllPoints()\
            for i = 1, #anchors do\
                local anchor = anchors[i]\
                envTable.ComboPointFrame:SetPoint (unpack (anchor))\
            end        \
            \
            --\
            for i = 1, #envTable.ComboPoints do\
                envTable.ComboPoints[i]:Hide()\
                envTable.ComboPoints[i]:ClearAllPoints()\
            end\
            \
            for i = 1, comboPoints do\
                local comboPoint = envTable.ComboPoints[i]\
                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\
                comboPoint:Show()\
            end\
            \
            envTable.LastUpdate = GetTime()\
            \
            envTable.UpdateComboPoints()\
        end\
        \
        --initialize\
        envTable.UpdateComboPointAmount()\
        envTable.ComboPointFrame:Hide()\
    end\
    \
    \
end",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    --constructor is executed only once when any script of the hook runs.\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if need update the amount of combo points shown\
    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\
        envTable.UpdateComboPointAmount()\
    end    \
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end    \
    \
end\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if this nameplate is the current target\
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Player Power Update"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.UpdateComboPoints()\
    end\
    \
    \
end\
\
\
\
\
\
\
",
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
\
\
",
},
["__TrashAt"]=1627309681,
["Icon"]=135426,
["Enabled"]=false,
["HooksTemp"]={
["Nameplate Removed"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
",
["Destructor"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.ComboPointFrame:Hide()\
    \
end\
\
\
\
\
",
["Player Talent Update"]="function (self, unitId, unitFrame, envTable)\
    \
    --update the amount of comboo points shown when the player changes talents or specialization\
    envTable.UpdateComboPointAmount()\
    \
    --save the time of the last talent change\
    envTable.LastPlayerTalentUpdate = GetTime()\
    \
    \
end\
\
\
",
["Constructor"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    local anchors = {\
        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\
    }\
    \
    local sizes = {\
        width = 12,\
        height = 12,\
        scale = 1,\
    }\
    \
    local textures = {\
        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\
        \
        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\
        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\
    }\
    \
    local frameLevel = 1000\
    local frameStrata = \"high\"    \
    \
    --private\
    do\
        --store combo points frames on this table\
        envTable.ComboPoints = {}\
        --save when the player changed talents or spec\
        envTable.LastPlayerTalentUpdate = GetTime()\
        --save when this nameplate got a combo point amount and alignment update        \
        \
        --build combo points frame anchor (combo point are anchored to this)\
        if (not unitFrame.PlaterComboPointFrame) then\
            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\
            hostFrame.ComboPointFramesPool = {}\
            unitFrame.PlaterComboPointFrame = hostFrame\
            envTable.ComboPointFrame = hostFrame\
            \
            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\
            \
            --animations\
            local onPlayShowAnimation = function (animation)\
                --stop the hide animation if it's playing\
                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().HideAnimation:Stop()\
                end\
                \
                animation:GetParent():Show()\
            end\
            \
            local onPlayHideAnimation = function (animation)\
                --stop the show animation if it's playing\
                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\
                    animation:GetParent():GetParent().ShowAnimation:Stop()\
                end\
            end        \
            local onStopHideAnimation = function (animation)\
                animation:GetParent():Hide()       \
            end\
            \
            local createAnimations = function (comboPoint)\
                --on show\
                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\
                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\
                \
                --on hide\
                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\
                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\
            end\
            \
            --build combo point frame        \
            for i =1, 10 do \
                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\
                f:SetSize (sizes.width, sizes.height)\
                tinsert (envTable.ComboPoints, f)\
                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\
                \
                local backgroundTexture = f:CreateTexture (nil, \"background\")\
                backgroundTexture:SetTexture (textures.backgroundTexture)\
                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\
                backgroundTexture:SetSize (sizes.width, sizes.height)\
                backgroundTexture:SetPoint (\"center\")\
                \
                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\
                comboPointTexture:SetTexture (textures.comboPointTexture)\
                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\
                \
                comboPointTexture:SetSize (sizes.width, sizes.height)\
                comboPointTexture:SetPoint (\"center\")\
                comboPointTexture:Hide()            \
                \
                f.IsActive = false\
                \
                f.backgroundTexture = backgroundTexture\
                f.comboPointTexture = comboPointTexture\
                \
                createAnimations (f)\
            end\
            \
        else\
            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\
            envTable.ComboPointFrame:SetScale (sizes.scale)\
            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\
            \
        end            \
        \
        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\
        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\
        \
        function envTable.UpdateComboPoints()\
            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\
            \
            for i = 1, envTable.TotalComboPoints do\
                local thisComboPoint = envTable.ComboPoints [i]\
                \
                if (i <= comboPoints ) then\
                    --combo point enabled\
                    if (not thisComboPoint.IsActive) then\
                        thisComboPoint.ShowAnimation:Play()\
                        thisComboPoint.IsActive = true\
                        \
                    end\
                    \
                else\
                    --combo point disabled\
                    if (thisComboPoint.IsActive) then\
                        thisComboPoint.HideAnimation:Play()\
                        thisComboPoint.IsActive = false\
                        \
                    end\
                end\
            end\
            \
            \
        end\
        \
        function envTable.UpdateComboPointAmount()\
            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\
            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\
            local reservedSpace = namePlateWidth / comboPoints\
            \
            --store the total amount of combo points\
            envTable.TotalComboPoints = comboPoints\
            \
            --update anchor frame\
            envTable.ComboPointFrame:SetWidth (namePlateWidth)\
            envTable.ComboPointFrame:SetHeight (20)\
            envTable.ComboPointFrame:ClearAllPoints()\
            for i = 1, #anchors do\
                local anchor = anchors[i]\
                envTable.ComboPointFrame:SetPoint (unpack (anchor))\
            end        \
            \
            --\
            for i = 1, #envTable.ComboPoints do\
                envTable.ComboPoints[i]:Hide()\
                envTable.ComboPoints[i]:ClearAllPoints()\
            end\
            \
            for i = 1, comboPoints do\
                local comboPoint = envTable.ComboPoints[i]\
                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\
                comboPoint:Show()\
            end\
            \
            envTable.LastUpdate = GetTime()\
            \
            envTable.UpdateComboPoints()\
        end\
        \
        --initialize\
        envTable.UpdateComboPointAmount()\
        envTable.ComboPointFrame:Hide()\
    end\
    \
    \
end",
["Nameplate Created"]="function (self, unitId, unitFrame, envTable)\
    \
    --run constructor!\
    --constructor is executed only once when any script of the hook runs.\
    \
end\
\
\
",
["Nameplate Added"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if need update the amount of combo points shown\
    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\
        envTable.UpdateComboPointAmount()\
    end    \
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        envTable.UpdateComboPoints()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end    \
    \
end\
\
\
",
["Target Changed"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if this nameplate is the current target\
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.ComboPointFrame:Show()\
        \
    else\
        envTable.ComboPointFrame:Hide()\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Player Power Update"]="function (self, unitId, unitFrame, envTable)\
    \
    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.UpdateComboPoints()\
    end\
    \
    \
end\
\
\
\
\
\
\
",
},
["Options"]={
},
["Name"]="Combo Points [Plater]",
["LoadConditions"]={
["class"]={
["Enabled"]=true,
["DRUID"]=true,
["ROGUE"]=true,
},
["role"]={
},
["affix"]={
},
["group"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
["103"]=true,
["Enabled"]=true,
},
["talent"]={
},
},
["Time"]=1551825317,
["Revision"]=190,
["Author"]="Izimode-Azralon",
["Desc"]="Show combo points above the nameplate for Druid Feral and Rogues.",
["OptionsValues"]={
},
["PlaterCore"]=1,
["LastHookEdited"]="Constructor",
},
},
["aura_stack_font"]="Accidental Presidency",
["update_throttle"]=0.099999994039535,
["use_ui_parent"]=true,
["aura_cooldown_reverse"]=false,
["cast_statusbar_fadein_time"]=0.02081192471087,
["aura_x_offset"]=0,
["aura_timer_text_font"]="Accidental Presidency",
["plate_config"]={
["global_health_height"]=14,
["player"]={
["spellpercent_text_font"]="Accidental Presidency",
["actorname_text_font"]="Accidental Presidency",
["click_through"]=true,
["power_percent_text_font"]="Accidental Presidency",
["module_enabled"]=false,
["big_actorname_text_font"]="Accidental Presidency",
["level_text_font"]="Accidental Presidency",
["big_actortitle_text_font"]="Accidental Presidency",
["spellname_text_font"]="Accidental Presidency",
["power_percent_text_color"]={
[1]=1,
[2]=1,
[3]=1,
},
["percent_text_font"]="Accidental Presidency",
},
["friendlyplayer"]={
["health_incombat"]={
[1]=120,
[2]=12,
},
["spellpercent_text_enabled"]=true,
["percent_text_font"]="Accidental Presidency",
["big_actorname_text_font"]="Accidental Presidency",
["level_text_font"]="Accidental Presidency",
["spellname_text_anchor"]={
["y"]=1,
["side"]=3,
},
["percent_text_anchor"]={
["y"]=1,
["side"]=3,
},
["mana"]={
[2]=4,
},
["spellname_text_size"]=9,
["spellpercent_text_outline"]="NONE",
["module_enabled"]=false,
["big_actortitle_text_font"]="Accidental Presidency",
["big_actorname_text_outline"]="OUTLINE",
["level_text_anchor"]={
["x"]=1,
["side"]=5,
},
["big_actorname_text_size"]=10,
["big_actorname_text_shadow_color"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
["quest_color_enemy"]={
[1]=1,
[2]=0.369,
[3]=0,
},
["spellpercent_text_size"]=9,
["quest_enabled"]=true,
["actorname_text_size"]=11,
["spellpercent_text_anchor"]={
["x"]=1,
["side"]=5,
},
["all_names"]=true,
["big_actortitle_text_outline"]="OUTLINE",
["only_thename"]=true,
["big_actortitle_text_shadow_color_offset"]={
[1]=1,
[2]=-1,
},
["spellname_text_font"]="Accidental Presidency",
["level_text_alpha"]=0.29999998211861,
["percent_text_outline"]="NONE",
["level_text_size"]=8,
["mana_incombat"]={
[2]=4,
},
["power_percent_text_font"]="Accidental Presidency",
["big_actorname_text_shadow_color_offset"]={
[1]=1,
[2]=-1,
},
["percent_text_ooc"]=true,
["cast_incombat"]={
[1]=120,
},
["percent_text_size"]=8,
["spellname_text_color"]={
[1]=0.95294117647059,
[3]=0.9921568627451,
},
["quest_color_neutral"]={
[1]=1,
[2]=0.65,
[3]=0,
},
["cast"]={
[1]=120,
},
["actorname_text_font"]="Accidental Presidency",
["percent_show_health"]=true,
["percent_text_enabled"]=true,
["health"]={
[1]=120,
[2]=12,
},
["big_actortitle_text_size"]=10,
["buff_frame_y_offset"]=0,
["actorname_text_anchor"]={
["y"]=-3,
["x"]=-1,
["side"]=1,
},
["level_text_enabled"]=true,
["spellpercent_text_font"]="Accidental Presidency",
["big_actortitle_text_shadow_color"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
},
["friendlynpc"]={
["big_actorname_text_size"]=10,
["healthbar_enabled"]=true,
["mana_incombat"]={
[1]=150,
[2]=10,
},
["actorname_text_outline"]="OUTLINE",
["power_percent_text_shadow_color"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
["spellpercent_text_enabled"]=true,
["power_percent_text_outline"]="OUTLINE",
["percent_text_enabled"]=true,
["big_actorname_text_font"]="Accidental Presidency",
["cast_incombat"]={
[2]=10,
},
["percent_text_font"]="Accidental Presidency",
["healthbar_color_by_hp"]=false,
["only_names"]=false,
["power_percent_text_font"]="Accidental Presidency",
["level_text_alpha"]=0.29999998211861,
["percent_show_health"]=true,
["spellpercent_text_font"]="Accidental Presidency",
["castbar_enabled"]=true,
["spellname_text_outline"]="OUTLINE",
["actorname_text_font"]="Accidental Presidency",
["power_percent_text_shadow_color_offset"]={
[1]=1,
[2]=-1,
},
["percent_text_ooc"]=true,
["power_percent_text_color"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["spellname_text_font"]="Accidental Presidency",
["pvp_always_incombat"]=true,
["actorname_text_spacing"]=9,
["big_actortitle_text_size"]=10,
["power_percent_text_enabled"]=true,
["y_position_offset"]=-50,
["power_percent_text_anchor"]={
["side"]=9,
["y"]=0,
["x"]=0,
},
["big_actortitle_text_font"]="Accidental Presidency",
["quest_color_neutral"]={
[1]=1,
[2]=0.65,
[3]=0,
},
["health_incombat"]={
[2]=12,
},
["health"]={
[1]=120,
},
["power_percent_text_size"]=9,
["cast"]={
[1]=120,
},
["power_percent_text_alpha"]=1,
["level_text_font"]="Accidental Presidency",
["power_enabled"]=true,
["quest_color_enemy"]={
[1]=1,
[2]=0.369,
[3]=0,
},
["healthbar_color"]={
[1]=0.564706,
[2]=0.933333,
[3]=0.564706,
[4]=1,
},
["mana"]={
[1]=150,
[2]=10,
},
["percent_text_size"]=10,
["click_through"]=true,
},
["enemynpc"]={
["spellname_text_anchor"]={
["side"]=3,
["y"]=1,
},
["spellname_text_font"]="Accidental Presidency",
["health"]={
[1]=120,
[2]=14.605162620544,
},
["actorname_text_outline"]="OUTLINE",
["cast"]={
[1]=120,
[2]=8,
},
["spellname_text_outline"]="NONE",
["actorname_text_font"]="Accidental Presidency",
["cast_incombat"]={
[2]=8,
},
["percent_text_size"]=10.803844451904,
["percent_text_font"]="Accidental Presidency",
["health_incombat"]={
[2]=14,
},
["spellpercent_text_font"]="Accidental Presidency",
["spellname_text_color"]={
[1]=0.95294117647059,
[3]=0.9921568627451,
},
["big_actorname_text_font"]="Accidental Presidency",
["spellpercent_text_outline"]="NONE",
["big_actortitle_text_font"]="Accidental Presidency",
["power_percent_text_font"]="Accidental Presidency",
["level_text_alpha"]=1,
["spellpercent_text_anchor"]={
["x"]=1,
["side"]=5,
},
["spellpercent_text_size"]=9,
["level_text_anchor"]={
["y"]=11.5,
["x"]=-1,
["side"]=5,
},
["spellname_text_size"]=9,
["percent_text_outline"]="NONE",
["actorname_text_anchor"]={
["y"]=-3,
["x"]=-1,
["side"]=1,
},
["level_text_font"]="Accidental Presidency",
},
["global_health_width"]=120,
["enemyplayer"]={
["big_actorname_text_size"]=10,
["level_text_size"]=8,
["percent_text_anchor"]={
["y"]=1,
["side"]=3,
},
["actorname_text_size"]=11,
["power_percent_text_font"]="Accidental Presidency",
["quest_enabled"]=true,
["spellpercent_text_outline"]="NONE",
["actorname_text_spacing"]=10,
["quest_color_neutral"]={
[1]=1,
[2]=0.65,
[3]=0,
},
["big_actortitle_text_size"]=10,
["percent_text_size"]=8,
["spellpercent_text_anchor"]={
["x"]=1,
["side"]=5,
},
["big_actortitle_text_font"]="Accidental Presidency",
["health_incombat"]={
[2]=12,
},
["quest_color_enemy"]={
[1]=1,
[2]=0.369,
[3]=0,
},
["level_text_anchor"]={
["x"]=1,
["side"]=5,
},
["spellname_text_anchor"]={
["y"]=1,
["side"]=3,
},
["level_text_alpha"]=0.29999998211861,
["percent_text_font"]="Accidental Presidency",
["spellpercent_text_font"]="Accidental Presidency",
["level_text_font"]="Accidental Presidency",
["spellname_text_font"]="Accidental Presidency",
["actorname_text_font"]="Accidental Presidency",
["health"]={
[1]=120,
},
["actorname_text_anchor"]={
["x"]=-1,
["side"]=1,
["y"]=-3,
},
["percent_text_outline"]="NONE",
["cast"]={
[1]=120,
[2]=8,
},
["all_names"]=true,
["spellpercent_text_size"]=9,
["spellname_text_color"]={
[1]=0.95294117647059,
[3]=0.9921568627451,
},
["spellname_text_size"]=9,
["big_actorname_text_font"]="Accidental Presidency",
["actorname_text_outline"]="OUTLINE",
},
},
["tank"]={
["colors"]={
["pulling"]={
[2]=0.91372549019608,
[3]=0.99607843137255,
},
},
},
["extra_icon_show_timer"]=false,
["aura_tracker"]={
["buff_tracked"]={
["280001"]=true,
},
["debuff"]={
[1]=224991,
[2]=277950,
},
["buff_banned"]={
["61573"]=true,
["206150"]=true,
["61574"]=true,
},
},
["version"]=5,
["use_health_animation"]=true,
["minor_width_scale"]=0.99999994039536,
["captured_spells"]={
[5143]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[324226]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[345805]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[321010]={
["source"]="英格拉·马洛克",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164567,
},
[339946]={
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[337716]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[205636]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[322967]={
["npcID"]=165111,
["type"]="BUFF",
["source"]="德鲁斯特恶爪者",
["event"]="SPELL_AURA_APPLIED",
},
[334713]={
["source"]="恐惧猎犬",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=98035,
},
[307443]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[322767]={
["source"]="德鲁斯特收割者",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164921,
},
[345209]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
},
[12042]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[48438]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[527]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[686]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[264178]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[2139]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[34861]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[77764]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[453]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[307454]={
["type"]="DEBUFF",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[45334]={
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[325381]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[323629]={
["type"]="DEBUFF",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[324736]={
["type"]="BUFF",
["source"]="未知目标",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=163058,
},
[116011]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[89753]={
["source"]="齐兹-萨克",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=58965,
},
[41635]={
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[331623]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[22812]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[203975]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[48517]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[48518]={
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[205644]={
["type"]="DEBUFF",
["source"]="树人",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=103822,
},
[89751]={
["source"]="齐兹-萨克",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
["type"]="BUFF",
},
[263725]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[113862]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[116014]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[202770]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[345499]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[330943]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[352498]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[339943]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[265273]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[355044]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[353477]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[342774]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[5487]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[50334]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[32379]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[205146]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[337299]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[30151]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
["type"]="BUFF",
["source"]="齐兹-萨克",
},
[596]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[1449]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[322486]={
["source"]="仙木灵居民",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164929,
},
[93402]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[8921]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[104316]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[322939]={
["type"]="DEBUFF",
["source"]="德鲁斯特收割者",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=164921,
},
[353203]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[339848]={
["type"]="BUFF",
["source"]="齐兹-萨克",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
},
[323043]={
["source"]="德鲁斯特恶爪者",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=165111,
},
[14914]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[337948]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
},
[139]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[77758]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[16979]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[108416]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[267972]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[345048]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[194223]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[194153]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[321519]={
["npcID"]=0,
["type"]="DEBUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
},
[235450]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[30213]={
["npcID"]=58965,
["source"]="齐兹-萨克",
["event"]="SPELL_CAST_SUCCESS",
},
[322557]={
["type"]="BUFF",
["source"]="德鲁斯特斩魂者",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=172991,
},
[345801]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[343594]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[30283]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[89766]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=17252,
["source"]="恶魔卫士",
},
[30451]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[324260]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[236298]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[322938]={
["npcID"]=164921,
["type"]="BUFF",
["source"]="德鲁斯特收割者",
["event"]="SPELL_AURA_APPLIED",
},
[326319]={
["source"]="德鲁斯特收割者",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164921,
},
[339784]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[78674]={
["npcID"]=0,
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
},
[108366]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[108446]={
["type"]="BUFF",
["source"]="齐兹-萨克",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
},
[110959]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[350163]={
["source"]="怨毒影魔",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=174773,
},
[93622]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[102359]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="Magiccream",
},
[321952]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=164929,
["type"]="BUFF",
["source"]="仙木灵居民",
},
[340162]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[322569]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=172991,
["type"]="BUFF",
["source"]="未知目标",
},
[206151]={
["type"]="DEBUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[153626]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[190984]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="Magiccream",
},
[345228]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[192090]={
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[343553]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=174773,
["type"]="BUFF",
["source"]="怨毒影魔",
},
[323764]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
},
[44425]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[324748]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[10060]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[330131]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[112870]={
["npcID"]=0,
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
},
[110960]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[33702]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[270481]={
["npcID"]=135002,
["source"]="恶魔暴君",
["event"]="SPELL_CAST_SUCCESS",
},
[340158]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[65081]={
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[350209]={
["type"]="DEBUFF",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[17]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[204883]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[2060]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[307195]={
["npcID"]=0,
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
},
[328900]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[212653]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[164812]={
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[30449]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[210824]={
["type"]="DEBUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[105174]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[6789]={
["npcID"]=0,
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
},
[213771]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[331718]={
["npcID"]=171772,
["type"]="BUFF",
["source"]="纱雾防御者",
["event"]="SPELL_AURA_APPLIED",
},
[265187]={
["npcID"]=0,
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
},
[114255]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[122]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[323020]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=165111,
["source"]="德鲁斯特恶爪者",
},
[192081]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[191034]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[6788]={
["type"]="DEBUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[334067]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[104318]={
["npcID"]=55659,
["source"]="野生小鬼",
["event"]="SPELL_CAST_SUCCESS",
},
[45242]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[321968]={
["source"]="仙木灵居民",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164929,
},
[264173]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[348139]={
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[322968]={
["npcID"]=165111,
["source"]="德鲁斯特恶爪者",
["event"]="SPELL_CAST_SUCCESS",
},
[330132]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[78675]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[333889]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[330730]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[332777]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[5215]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[236299]={
["type"]="DEBUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[321507]={
["npcID"]=0,
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
},
[300155]={
["npcID"]=164929,
["source"]="仙木灵居民",
["event"]="SPELL_CAST_SUCCESS",
},
[213708]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[33917]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[99]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[1459]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[328908]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[33076]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[111898]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[8936]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
},
[6795]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="小越的司机-黄金之路",
},
[768]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[342814]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="Magiccream",
},
[164815]={
["npcID"]=0,
["type"]="DEBUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
},
[325640]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[774]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
},
[77489]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
},
["aura2_x_offset"]=0,
["target_indicator"]="NONE",
["OptionsPanelDB"]={
["PlaterOptionsPanelFrame"]={
["scale"]=1,
},
},
["indicator_raidmark_scale"]=0.69999998807907,
["cast_statusbar_fadeout_time"]=0.49999997019768,
["extra_icon_auras"]={
[1]=277242,
},
["cast_statusbar_color"]={
[2]=0.85882352941176,
[4]=0.96000000089407,
},
["npc_colors"]={
[137830]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[131492]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[136470]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[126918]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[131685]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[122973]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[129366]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[134232]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[131670]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[134157]={
[1]=true,
[2]=false,
[3]="peru",
},
[136186]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[126919]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[133345]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[131858]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[136006]={
[1]=false,
[2]=false,
[3]="blue",
},
[127111]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[139949]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[122972]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[135239]={
[1]=true,
[2]=false,
[3]="paleturquoise",
},
[130404]={
[1]=true,
[2]=false,
[3]="peru",
},
[130488]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[134137]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[134174]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[135204]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[133870]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[132532]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[129788]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[137484]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[138187]={
[1]=true,
[2]=false,
[3]="paleturquoise",
},
[141283]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[126928]={
[1]=false,
[2]=false,
[3]="navajowhite",
},
[137713]={
[1]=true,
[2]=false,
[3]="paleturquoise",
},
[134284]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[132126]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[131585]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[137103]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[134331]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134144]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[122971]={
[1]=false,
[2]=false,
[3]="magenta",
},
[134701]={
[1]=true,
[2]=false,
[3]="maroon",
},
[130435]={
[1]=false,
[2]=false,
[3]="magenta",
},
[129547]={
[1]=true,
[2]=false,
[3]="olivedrab",
},
[138063]={
[1]=false,
[2]=false,
[3]="blue",
},
[128435]={
[1]=false,
[2]=false,
[3]="aqua",
},
[134012]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[134251]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[127106]={
[1]=true,
[2]=false,
[3]="peru",
},
[136005]={
[1]=false,
[2]=false,
[3]="blue",
},
[129600]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[136214]={
[1]=true,
[2]=false,
[3]="plum",
},
[136139]={
[1]=true,
[2]=false,
[3]="peru",
},
[129367]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[131587]={
[1]=true,
[2]=false,
[3]="peru",
},
[134364]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[135329]={
[1]=true,
[2]=false,
[3]="plum",
},
[134599]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134158]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[133432]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[128969]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[131586]={
[1]=true,
[2]=false,
[3]="peru",
},
[133436]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134417]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[139422]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[136249]={
[1]=true,
[2]=false,
[3]="plum",
},
[135167]={
[1]=true,
[2]=false,
[3]="peru",
},
[134600]={
[1]=true,
[2]=false,
[3]="peru",
},
[131677]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[138064]={
[1]=false,
[2]=false,
[3]="blue",
},
[131818]={
[1]=false,
[2]=false,
[3]="plum",
},
[130485]={
[1]=true,
[2]=false,
[3]="peru",
},
[135007]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134150]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[137478]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[133685]={
[1]=true,
[2]=false,
[3]="plum",
},
[137511]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[133593]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[136353]={
[1]=true,
[2]=false,
[3]="royalblue",
},
[134990]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[136076]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[133835]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[138465]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[130661]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[129227]={
[1]=false,
[2]=false,
[3]="maroon",
},
[135241]={
[1]=true,
[2]=false,
[3]="peru",
},
[135258]={
[1]=false,
[2]=false,
[3]="peru",
},
[137716]={
[1]=false,
[2]=false,
[3]="blue",
},
[136934]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[127757]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[131817]={
[1]=false,
[2]=false,
[3]="magenta",
},
[131666]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[138255]={
[1]=true,
[2]=false,
[3]="maroon",
},
[129559]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[138061]={
[1]=false,
[2]=false,
[3]="magenta",
},
[122969]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[129370]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[129602]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[134514]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[139425]={
[1]=false,
[2]=false,
[3]="honeydew",
},
[135263]={
[1]=true,
[2]=false,
[3]="maroon",
},
[133482]={
[1]=true,
[2]=false,
[3]="maroon",
},
[133852]={
[1]=true,
[2]=false,
[3]="olivedrab",
},
[128967]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[134338]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[134629]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[144071]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[141285]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[132491]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[136549]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[137486]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[127315]={
[1]=true,
[2]=false,
[3]="plum",
},
[137521]={
[1]=true,
[2]=false,
[3]="cornflowerblue",
},
[128434]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[135235]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[133430]={
[1]=true,
[2]=false,
[3]="cornflowerblue",
},
[136295]={
[1]=true,
[2]=false,
[3]="peru",
},
[135474]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[130436]={
[1]=false,
[2]=false,
[3]="aqua",
},
[133912]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[134139]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[131436]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[129369]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[129529]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[122984]={
[1]=true,
[2]=false,
[3]="peru",
},
[135365]={
[1]=true,
[2]=false,
[3]="plum",
},
[137516]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[137517]={
[1]=true,
[2]=false,
[3]="peru",
},
[141284]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134418]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[125977]={
[1]=true,
[2]=false,
[3]="plum",
},
},
["click_space"]={
[1]=115,
},
["aura_y_offset"]=9,
["script_auto_imported"]={
["Spiteful Affix"]=3,
["Unit - Main Target"]=11,
["Auto Set Skull"]=11,
["Cast - Frontal Cone"]=11,
["Aura - Buff Alert"]=13,
["Explosion Affix M+"]=11,
["Color Change"]=1,
["Countdown"]=11,
["Fixate On You"]=11,
["Unit - Health Markers"]=12,
["Unit Power"]=1,
["Cast - Tank Interrupt"]=12,
["Unit - Important"]=11,
["Aura - Debuff Alert"]=11,
["Cast - Small Alert"]=11,
["Cast - Alert + Timer [P]"]=2,
["Cast - Important Target [P]"]=1,
["Cast - Very Important"]=12,
["Cast - Big Alert"]=12,
["Cast - Castbar is Timer [P]"]=2,
["Aura - Blink Time Left"]=13,
["Blink by Time Left"]=1,
["Fixate"]=11,
["Aura Border Color"]=1,
["Unit - Show Energy"]=11,
["Cast - Ultra Important"]=11,
["Aura - Invalidate Unit"]=1,
},
["no_spellname_length_limit"]=true,
["healthbar_framelevel"]=0,
["ui_parent_buff_level"]=10,
["semver"]="1.0.4",
["health_animation_time_dilatation"]=2.8699998855591,
["number_region"]="eastasia",
["ui_parent_scale_tune"]=1.2500000745058,
["health_statusbar_bgtexture"]="You Are Beautiful!",
["castbar_target_text_size"]=8,
["extra_icon_caster_name"]=false,
["aura2_grow_direction"]=1,
["aura_show_crowdcontrol"]=true,
["pet_width_scale"]=0.99999994039536,
["range_check_alpha"]=1,
["aura_width"]=22,
["castbar_target_outline"]="NONE",
["indicator_raidmark_anchor"]={
["x"]=-40,
},
["script_data"]={
[1]={
["Desc"]="Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
["NpcNames"]={
},
["version"]=-1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
["url"]="",
["ScriptType"]=2,
["Author"]="Tercioo-Sylvanas",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Name"]="Cast - Small Alert [Plater]",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --flash duration\
    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --manually create a new texture for the flash animation\
    if (not envTable.SmallFlashTexture) then\
        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\
        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\
        envTable.SmallFlashTexture:SetAllPoints()\
    end\
    \
    --manually create a flash animation using the framework\
    if (not envTable.SmallFlashAnimationHub) then \
        \
        local onPlay = function()\
            envTable.SmallFlashTexture:Show()\
        end\
        \
        local onFinished = function()\
            envTable.SmallFlashTexture:Hide()\
        end\
        \
        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\
        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\
        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\
        \
        envTable.SmallFlashAnimationHub = animationHub\
    end\
    \
    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\
    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\
    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\
    \
end\
\
\
\
\
\
\
\
",
["OptionsValues"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Play()\
    \
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    \
    \
end\
\
\
",
["Revision"]=595,
["Enabled"]=true,
["semver"]="",
["SpellIds"]={
[1]=320170,
[2]=320171,
[3]=320462,
[4]=330712,
[5]=332170,
[6]=333875,
[7]=326836,
[8]=342135,
[9]=333861,
[10]=341969,
[11]=317963,
[12]=327481,
[13]=328331,
[14]=322614,
[15]=325701,
[16]=326438,
[17]=323538,
[18]=321764,
[19]=296523,
[20]=330755,
[21]=295929,
[22]=296019,
[23]=335685,
[24]=170751,
[25]=342207,
[26]=350554,
[27]=348513,
[28]=351779,
},
["PlaterCore"]=1,
["Options"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
},
[2]={
["Type"]=5,
["Key"]="option2",
["Value"]="Plays a small animation when the cast start.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
},
[4]={
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
},
[5]={
["Min"]=0.1,
["Fraction"]=true,
["Value"]=0.6,
["Key"]="flashDuration",
["Name"]="Flash Duration",
["Type"]=2,
["Max"]=1.2,
["Desc"]="How long is the flash played when the cast starts.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[6]={
["Type"]=1,
["Key"]="flashColor",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Flash Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the Flash",
},
},
["Time"]=1604617585,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
},
[2]={
["ScriptType"]=1,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --color to set the nameplate\
    envTable.NameplateColor = \"gray\"\
    \
end\
\
\
",
["Options"]={
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --only change the nameplate color in combat\
    if (InCombatLockdown()) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end\
    \
end\
\
\
\
\
\
\
",
["NpcNames"]={
},
["Desc"]="When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --only change the nameplate color in combat\
    if (InCombatLockdown()) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end\
    \
end\
\
\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_invalid",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["PlaterCore"]=1,
["Enabled"]=true,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --color to set the nameplate\
    envTable.NameplateColor = \"gray\"\
    \
end\
\
\
",
["Revision"]=108,
["Author"]="Izimode-Azralon",
["Name"]="Aura - Invalidate Unit [Plater]",
["SpellIds"]={
[1]=261265,
[2]=261266,
[3]=271590,
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OptionsValues"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Time"]=1541263726,
},
[3]={
["SpellIds"]={
[1]=323149,
[2]=324392,
[3]=340544,
[4]=342189,
[5]=333227,
},
["Revision"]=607,
["url"]="",
["Author"]="Tercioo-Sylvanas",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Add the buff name in the trigger box.",
["NpcNames"]={
},
["Name"]="Aura - Buff Alert [Plater]",
["OptionsValues"]={
},
["ScriptType"]=1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
["Time"]=1605214963,
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Show()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \
    end\
    \
end\
\
\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
    \
end",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Enabled"]=true,
["semver"]="",
["PlaterCore"]=1,
["Options"]={
[1]={
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[4]={
["Desc"]="",
["Type"]=4,
["Name"]="Glow Enabled",
["Value"]=false,
["Key"]="glowEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[5]={
["Value"]={
[1]=0.40392156862745,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
["Key"]="glowColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Name"]="Glow Color",
},
[6]={
["Key"]="option3",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[7]={
["Type"]=4,
["Name"]="Dots Enabled",
["Value"]=true,
["Key"]="dotsEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[8]={
["Desc"]="",
["Type"]=1,
["Key"]="dotsColor",
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
["Name"]="Dots Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Hide()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        Plater.StopDotAnimation(self, envTable.dotAnimation)\
    end\
    \
    \
end",
},
[4]={
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
["Author"]="Bombad�o-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
["Name"]="Cast - Very Important [Plater]",
["Options"]={
[1]={
["Name"]="Option 1",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Plays a big animation when the cast start.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Type"]=5,
["Key"]="option2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[4]={
["Type"]=6,
["Name"]="Option 4",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[5]={
["Type"]=5,
["Name"]="Flash",
["Value"]="Flash:",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[6]={
["Type"]=2,
["Min"]=0.1,
["Name"]="Flash Duration",
["Key"]="flashDuration",
["Max"]=1.2,
["Desc"]="How long is the flash played when the cast starts.",
["Fraction"]=true,
["Value"]=0.8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[7]={
["Desc"]="Color of the Flash",
["Type"]=1,
["Name"]="Flash Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="flashColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[8]={
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 7",
},
[9]={
["Type"]=5,
["Key"]="option2",
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[10]={
["Name"]="Shake Duration",
["Key"]="shakeDuration",
["Max"]=0.5,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
["Value"]=0.2,
["Type"]=2,
["Min"]=0.1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[11]={
["Max"]=10,
["Desc"]="How strong is the shake.",
["Min"]=1,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
["Type"]=2,
["Fraction"]=false,
["Value"]=5,
},
[12]={
["Max"]=80,
["Name"]="Shake Frequency",
["Key"]="shakeFrequency",
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Fraction"]=false,
["Value"]=40,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[13]={
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[14]={
["Name"]="Dot Animation",
["Value"]="Dot Animation:",
["Key"]="option14",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[15]={
["Name"]="Dot Color",
["Value"]={
[1]=0.56470588235294,
[2]=0.56470588235294,
[3]=0.56470588235294,
[4]=1,
},
["Key"]="dotColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dots around the nameplate",
["Type"]=1,
},
[16]={
["Name"]="Dot X Offset",
["Fraction"]=false,
["Key"]="xOffset",
["Max"]=20,
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Min"]=-10,
},
[17]={
["Min"]=-10,
["Key"]="yOffset",
["Name"]="Dot Y Offset",
["Fraction"]=false,
["Max"]=10,
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=3,
},
[18]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
},
[19]={
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
},
[20]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
},
[21]={
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[22]={
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[23]={
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[24]={
["Desc"]="",
["Type"]=5,
["Name"]="Option 19",
["Value"]="Cast Bar",
["Key"]="option19",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[25]={
["Name"]="Use Cast Bar Color",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Use cast bar color.",
["Type"]=4,
},
[26]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Cast bar color.",
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=0.41176470588235,
[2]=1,
[3]=0,
[4]=1,
},
["Key"]="castBarColor",
},
},
["version"]=-1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\
    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\
    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\
    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\
end",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \
    \
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame:StopFrameShake (envTable.FrameShake)    \
    \
end\
\
\
",
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Enabled"]=true,
["semver"]="",
["SpellIds"]={
[1]=321247,
[2]=334522,
[3]=320232,
[4]=319962,
[5]=325879,
[6]=324427,
[7]=322999,
[8]=325360,
[9]=322903,
[10]=324103,
[11]=333294,
[12]=333540,
[13]=319521,
[14]=326021,
[15]=326450,
[16]=322711,
[17]=329104,
[18]=295000,
[19]=242391,
[20]=320197,
[21]=329608,
[22]=350687,
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
    \
    \
    envTable.BackgroundFlash:Play()\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\
        end\
    end\
    \
end\
\
\
",
["Time"]=1618996917,
["NpcNames"]={
},
["url"]="",
["Revision"]=717,
["PlaterCore"]=1,
},
[5]={
["ScriptType"]=1,
["Revision"]=351,
["PlaterCore"]=1,
["Name"]="Aura - Debuff Alert [Plater]",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Hide()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        Plater.StopDotAnimation(self, envTable.dotAnimation)\
    end\
    \
    \
end\
\
\
",
["semver"]="",
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    if (scriptTable.config.glowEnabled) then\
        envTable.buffIconGlow:Show()\
    end\
    \
    if (scriptTable.config.dotsEnabled) then\
        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \
    end\
end\
\
\
",
["OptionsValues"]={
},
["Time"]=1604454032,
["url"]="",
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
},
[3]={
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
},
[4]={
["Type"]=4,
["Key"]="glowEnabled",
["Value"]=false,
["Name"]="Glow Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[5]={
["Type"]=1,
["Key"]="glowColor",
["Value"]={
[1]=0.40392156862745,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
["Name"]="Glow Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[6]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Value"]=true,
["Name"]="Dots Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Key"]="dotsEnabled",
},
[8]={
["Desc"]="",
["Type"]=1,
["Name"]="Dots Color",
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
["Key"]="dotsColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Enabled"]=true,
["Author"]="Tercioo-Sylvanas",
["Desc"]="Add the debuff name in the trigger box.",
["NpcNames"]={
},
["SpellIds"]={
[1]=337220,
[2]=337253,
[3]=337251,
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
},
[6]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end",
["url"]="",
["Desc"]="Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
["SpellIds"]={
[1]=323489,
[2]=323496,
[3]=319941,
[4]=319592,
[5]=334266,
[6]=325258,
[7]=334913,
[8]=326221,
[9]=322936,
[10]=323236,
[11]=321834,
[12]=336752,
[13]=325418,
[14]=324667,
[15]=327233,
[16]=324368,
[17]=324205,
[18]=323943,
[19]=319713,
[20]=320596,
[21]=320729,
[22]=323608,
[23]=330614,
[24]=320063,
[25]=332708,
[26]=334023,
[27]=317231,
[28]=317943,
[29]=320966,
[30]=334053,
[31]=328458,
[32]=321968,
[33]=331718,
[34]=325793,
[35]=330453,
[36]=326997,
[37]=334051,
[38]=292903,
[39]=330843,
[40]=294173,
[41]=189200,
[42]=352833,
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\
    \
    --envTable.movingArrow.color = scriptTable.config.arrowColor\
    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\
    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\
    \
    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \
        function() \
            envTable.movingArrow:Show() \
            envTable.movingArrow:SetPoint(\"left\", 0, 0)\
        end, \
        function() envTable.movingArrow:Hide() end)\
    \
    envTable.movingAnimation:SetLooping (\"REPEAT\")\
    \
    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\
    \
    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\
end\
\
\
\
\
",
["OptionsValues"]={
},
["Enabled"]=true,
["Revision"]=460,
["Author"]="Izimode-Azralon",
["version"]=-1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["PlaterCore"]=1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["Time"]=1604599443,
["semver"]="",
["Name"]="Cast - Frontal Cone [Plater]",
["Options"]={
[1]={
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Value"]="Produces an effect to indicate the spell will hit players in front of the enemy.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
},
[3]={
["Type"]=5,
["Key"]="option4",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[4]={
["Type"]=6,
["Key"]="option3",
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[5]={
["Desc"]="Set the alpha of the moving arrow",
["Min"]=0,
["Value"]=0.275,
["Key"]="arrowAlpha",
["Fraction"]=true,
["Max"]=1,
["Name"]="Arrow Alpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
},
[6]={
["Min"]=0,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Animation Speed",
["Key"]="animSpeed",
["Fraction"]=true,
["Type"]=2,
["Max"]=1,
["Desc"]="Time that takes for an arrow to travel from the to right.",
},
[7]={
["Value"]=false,
["Name"]="Use White Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the arrow color will be desaturated.",
["Type"]=4,
["Key"]="desaturateArrow",
},
},
["ScriptType"]=2,
["NpcNames"]={
},
},
[7]={
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["url"]="",
["Icon"]=1029718,
["Enabled"]=true,
["Author"]="Celian-Sylvanas",
["Desc"]="Show above the nameplate who is the player fixated",
["SpellIds"]={
},
["Options"]={
},
["Time"]=1604239880,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
\
\
\
\
",
["PlaterCore"]=1,
["Name"]="Fixate [Plater]",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \
    \
    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\
    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \
    \
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
--165560 = Gormling Larva - MTS\
\
\
\
\
\
\
",
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    local targetName = UnitName (unitId .. \"target\");\
    if (targetName) then\
        local _, class = UnitClass (unitId .. \"target\");\
        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\
        envTable.FixateTarget.text = targetName;\
        \
        envTable.FixateTarget:Show();\
        envTable.FixateIcon:Show();\
    end    \
end\
\
\
",
["Revision"]=269,
["NpcNames"]={
[1]="165560",
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OptionsValues"]={
},
["version"]=-1,
},
[8]={
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\
    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\
end\
\
--[=[\
\
\
--]=]",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["ScriptType"]=3,
["Time"]=1547158828,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Hide()\
end\
\
\
",
["PlaterCore"]=1,
["SpellIds"]={
},
["OptionsValues"]={
},
["Revision"]=135,
["Options"]={
},
["Author"]="Celian-Sylvanas",
["Name"]="UnitPower [Plater]",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Hide()\
end\
\
\
",
["Icon"]=136048,
["Desc"]="Show the energy amount above the nameplate",
["Enabled"]=true,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\
end\
\
\
",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\
    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\
end\
\
--[=[\
\
\
--]=]",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\
end\
\
\
",
["NpcNames"]={
[1]="Guardian of Yogg-Saron",
},
},
[9]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can change the nameplate color\
    if (envTable.CanChangeNameplateColor) then\
        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    end\
    \
end\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
["Enabled"]=true,
["semver"]="",
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["SpellIds"]={
},
["Name"]="Unit - Important [Plater]",
["OptionsValues"]={
},
["ScriptType"]=3,
["version"]=-1,
["Author"]="Izimode-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["NpcNames"]={
[1]="164362",
[2]="168882",
[3]="168988",
[4]="170234",
[5]="165905",
[6]="170452",
},
["PlaterCore"]=1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    if (envTable.dotAnimation) then\
        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\
    end\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    unitFrame.UnitImportantSkullTexture:Show()\
end\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \
    \
    --restore the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)    \
    \
    unitFrame.UnitImportantSkullTexture:Hide()\
end\
\
\
",
["url"]="",
["Revision"]=355,
["Options"]={
[1]={
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Name"]="Option 6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option6",
},
[3]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[4]={
["Desc"]="change to true to change the color",
["Type"]=4,
["Key"]="changeNameplateColor",
["Value"]=true,
["Name"]="Change Nameplate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[5]={
["Key"]="nameplateColor",
["Value"]={
[1]=1,
[2]=0,
[3]=0.52549019607843,
[4]=1,
},
["Name"]="Nameplate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
},
[6]={
["Value"]=3,
["Key"]="nameplateSizeOffset",
["Name"]="Nameplate Size Offset",
["Type"]=2,
["Min"]=0,
["Fraction"]=false,
["Max"]=6,
["Desc"]="increase the nameplate height by this value",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[7]={
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[8]={
["Name"]="Dot Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="dotsColor",
["Value"]={
[1]=1,
[2]=0.71372549019608,
[3]=0,
[4]=1,
},
},
[9]={
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[10]={
["Desc"]="",
["Type"]=5,
["Key"]="option10",
["Value"]="Skull Texture",
["Name"]="Skull Texture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[11]={
["Value"]={
[1]=1,
[2]=0.46274509803922,
[3]=0,
[4]=1,
},
["Name"]="Skull Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="skullColor",
},
[12]={
["Type"]=2,
["Max"]=1,
["Desc"]="",
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Name"]="Alpha",
["Value"]=0.2,
["Key"]="skullAlpha",
},
[13]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Scale",
["Max"]=2,
["Value"]=0.6,
["Fraction"]=true,
["Key"]="skullScale",
["Type"]=2,
["Desc"]="",
["Min"]=0.4,
},
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings (you may need /reload if some configs isn't applied immediately)    \
    --change the nameplate color to this if allowed\
    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\
    envTable.NameplateColor = scriptTable.config.nameplateColor\
    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\
    \
    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\
    \
    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\
    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\
    \
    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\
    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\
    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\
    \
    unitFrame.UnitImportantSkullTexture:Hide()\
end\
\
--[=[\
\
154564 - debug\
\
Using spellIDs for multi-language support\
\
164362 - smily morsel - plaguefall\
168882 - fleeting manifestation - sanguine depths\
170234 - oppressive banner - theater of pain\
168988 - overgrowth - Mists of Tirna Scithe\
170452 - essesnce orb - torghast\
\
\
--]=]",
["Time"]=1604599472,
},
[10]={
["url"]="",
["Enabled"]=true,
["NpcNames"]={
},
["Time"]=1618996691,
["PlaterCore"]=1,
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
["Key"]="option2",
},
[3]={
["Desc"]="",
["Type"]=5,
["Name"]="Option 3",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[4]={
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
},
[5]={
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
},
[6]={
["Desc"]="Color of the cast bar.",
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[7]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[8]={
["Name"]="Flash Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Key"]="flashDuration",
["Type"]=2,
["Value"]=0.4,
["Fraction"]=true,
},
[9]={
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Value"]=5,
["Name"]="Cast Bar Height Mod",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Min"]=0,
["Key"]="castBarHeight",
["Fraction"]=false,
},
[10]={
["Fraction"]=true,
["Type"]=2,
["Value"]=0.2,
["Name"]="Shake Duration",
["Key"]="shakeDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
},
[11]={
["Max"]=100,
["Fraction"]=false,
["Min"]=2,
["Key"]="shakeAmplitude",
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Amplitude",
["Type"]=2,
["Desc"]="How strong is the shake.",
},
[12]={
["Max"]=80,
["Desc"]="How fast the shake moves.",
["Key"]="shakeFrequency",
["Value"]=40,
["Name"]="Shake Frequency",
["Type"]=2,
["Min"]=1,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\
        return\
    end\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
\
\
",
["Author"]="Tercioo-Sylvanas",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\
        return\
    end    \
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
",
["OptionsValues"]={
},
["ScriptType"]=2,
["Revision"]=1060,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\", 7)\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["semver"]="",
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
["SpellIds"]={
[1]=338353,
[2]=334748,
[3]=334749,
[4]=320784,
[5]=341352,
[6]=341520,
[7]=341522,
[8]=336005,
[9]=339777,
[10]=331933,
[11]=326617,
[12]=324914,
[13]=324776,
[14]=326046,
[15]=340634,
[16]=319070,
[17]=328295,
[18]=317936,
[19]=327413,
[20]=319654,
[21]=323821,
[22]=320772,
[23]=324293,
[24]=330562,
[25]=330868,
[26]=341902,
[27]=342139,
[28]=342675,
[29]=323190,
[30]=332836,
[31]=327648,
[32]=328217,
[33]=322938,
[34]=340544,
[35]=325876,
[36]=325700,
[37]=323552,
[38]=332666,
[39]=332612,
[40]=332706,
[41]=340026,
[42]=294171,
[43]=292910,
[44]=294165,
[45]=338871,
[46]=330813,
[47]=335694,
[48]=327461,
[49]=329787,
[50]=304946,
[51]=15245,
[52]=276754,
[53]=304831,
[54]=277036,
[55]=320657,
[56]=294362,
[57]=270248,
[58]=292926,
[59]=350421,
[60]=352158,
[61]=349985,
},
["Name"]="Cast - Big Alert [Plater]",
["version"]=-1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
},
[11]={
["Icon"]=841383,
["Desc"]="When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
["SpellIds"]={
[1]="spawn of g'huun",
[2]="smuggled crawg",
[3]="sergeant bainbridge",
[4]="blacktooth scrapper",
[5]="irontide grenadier",
[6]="feral bloodswarmer",
[7]="earthrager",
[8]="crawler mine",
[9]="rezan",
},
["Name"]="Fixate On You [Plater]",
["Options"]={
},
["NpcNames"]={
},
["ConstructorCode"]="--todo: add npc ids for multilanguage support\
\
function (self, unitId, unitFrame, envTable)\
    \
    --settings\
    envTable.TextAboveNameplate = \"** On You **\"\
    envTable.NameplateColor = \"green\"\
    \
    --label to show the text above the nameplate\
    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\
    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\
    \
    --the spell casted by the npc in the trigger list needs to be in the list below as well\
    local spellList = {\
        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\
        \
    }\
    \
    --build the list with localized spell names\
    envTable.FixateDebuffs = {}\
    for spellID, enUSSpellName in pairs (spellList) do\
        local localizedSpellName = GetSpellInfo (spellID)\
        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\
    end\
    \
    --debug - smuggled crawg\
    envTable.FixateDebuffs [\"Jagged Maw\"] = true\
    \
end\
\
--[=[\
NpcIDs:\
136461: Spawn of G'huun (mythic uldir G'huun)\
\
--]=]\
\
\
\
\
",
["OptionsValues"]={
},
["ScriptType"]=3,
["url"]="",
["Author"]="Tecno-Azralon",
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:SetText (\"\")\
    envTable.FixateTarget:Hide()\
    \
    envTable.IsFixated = false\
    \
    Plater.RefreshNameplateColor (unitFrame)\
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --swap this to true when it is fixated\
    local isFixated = false\
    \
    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\
    for debuffId = 1, 40 do\
        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\
        \
        --cancel the loop if there's no more debuffs on the player\
        if (not name) then \
            break \
        end\
        \
        --check if the owner of the debuff is this unit\
        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\
            --the debuff the player has, has been placed by this unit, set the name above the unit name\
            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\
            envTable.FixateTarget:Show()\
            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\
            isFixated = true\
            \
            if (not envTable.IsFixated) then\
                envTable.IsFixated = true\
                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\
            end\
        end\
        \
    end\
    \
    --check if the nameplate color is changed but isn't fixated any more\
    if (not isFixated and envTable.IsFixated) then\
        --refresh the nameplate color\
        Plater.RefreshNameplateColor (unitFrame)\
        --reset the text\
        envTable.FixateTarget:SetText (\"\")\
        \
        envTable.IsFixated = false\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Time"]=1604087921,
["Revision"]=266,
["semver"]="",
["Enabled"]=true,
["PlaterCore"]=1,
},
[12]={
["NpcNames"]={
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --color to set the nameplate\
    envTable.NameplateColor = \"pink\" \
    \
end\
\
\
",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    \
end\
\
\
",
["Author"]="抹了油的大叔-白银之手",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["PlaterCore"]=1,
["OptionsValues"]={
},
["Icon"]="INTERFACE\\ICONS\\Achievement_PVP_P_01",
["Desc"]="NameplaterColor with Special Buff ID",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Revision"]=45,
["Name"]="NameplaterColor with Special Buff ID",
["Enabled"]=false,
["SpellIds"]={
[1]=277242,
},
["ScriptType"]=1,
["Time"]=1541606626,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --color to set the nameplate\
    envTable.NameplateColor = \"pink\" \
    \
end\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Options"]={
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    \
end\
\
\
",
},
[13]={
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings\
    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\
    envTable.ShowArrow = scriptTable.config.showArrow\
    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\
    envTable.HealthBarColor = scriptTable.config.healthBarColor\
    \
    --creates the spark to show the cast progress inside the health bar\
    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\
    envTable.overlaySpark:SetBlendMode (\"ADD\")\
    envTable.overlaySpark.width = 16\
    envTable.overlaySpark.height = 36\
    envTable.overlaySpark.alpha = .9\
    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\
    \
    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\
    envTable.topArrow:SetBlendMode (\"ADD\")\
    envTable.topArrow.width = scriptTable.config.arrowWidth\
    envTable.topArrow.height = scriptTable.config.arrowHeight\
    envTable.topArrow.alpha = envTable.ArrowAlpha\
    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\
    \
    --scale animation\
    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \
    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\
    \
end\
\
\
\
\
\
\
\
",
["ScriptType"]=2,
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Plays a special animation showing the explosion time.",
["Name"]="Option 2",
},
[3]={
["Key"]="option3",
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[4]={
["Key"]="castBarHeight",
["Name"]="Cast Bar Height Mod",
["Type"]=2,
["Max"]=6,
["Desc"]="Increases the cast bar height by this value",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0,
["Fraction"]=false,
["Value"]=3,
},
[5]={
["Name"]="Cast Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Changes the cast bar color to this one.",
["Type"]=1,
["Key"]="castBarColor",
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
},
[6]={
["Type"]=6,
["Key"]="option7",
["Value"]=0,
["Name"]="Option 7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Key"]="option6",
["Value"]="Arrow:",
["Name"]="Arrow:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[8]={
["Type"]=4,
["Key"]="showArrow",
["Value"]=true,
["Name"]="Show Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show an arrow above the nameplate showing the cast bar progress.",
},
[9]={
["Min"]=0,
["Fraction"]=true,
["Value"]=0.5,
["Key"]="arrowAlpha",
["Max"]=1,
["Desc"]="Arrow alpha.",
["Name"]="Arrow Alpha",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Key"]="arrowWidth",
["Max"]=12,
["Desc"]="Arrow Width.",
["Name"]="Arrow Width",
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Min"]=4,
["Fraction"]=false,
},
[11]={
["Key"]="arrowHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Arrow Height",
["Type"]=2,
["Desc"]="Arrow Height.",
["Min"]=4,
["Max"]=12,
["Fraction"]=false,
["Value"]=8,
},
[12]={
["Desc"]="",
["Type"]=6,
["Key"]="option13",
["Value"]=0,
["Name"]="Option 13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[13]={
["Type"]=5,
["Key"]="option12",
["Value"]="Dot Animation:",
["Name"]="Dot Animation:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[14]={
["Key"]="dotColor",
["Value"]={
[1]=1,
[2]=0.6156862745098,
[3]=0,
[4]=1,
},
["Name"]="Dot Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dot animation.",
["Type"]=1,
},
[15]={
["Type"]=2,
["Max"]=10,
["Desc"]="Dot X Offset",
["Min"]=-10,
["Name"]="Dot X Offset",
["Fraction"]=false,
["Value"]=4,
["Key"]="xOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[16]={
["Type"]=2,
["Min"]=-10,
["Value"]=3,
["Name"]="Dot Y Offset",
["Max"]=10,
["Desc"]="Dot Y Offset",
["Key"]="yOffset",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["OptionsValues"]={
},
["Time"]=1604698647,
["Revision"]=462,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["SpellIds"]={
[1]=240446,
[2]=273577,
},
["PlaterCore"]=1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.overlaySpark:Show()\
    \
    if (envTable.ShowArrow) then\
        envTable.topArrow:Show()\
    end\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    envTable.smallScaleAnimation:Play()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    envTable.overlaySpark.height = nameplateHeight + 5\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
    \
    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\
end\
\
\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\
    \
    envTable.overlaySpark:Hide()\
    envTable.topArrow:Hide()\
    \
    Plater.RefreshNameplateColor (unitFrame)\
    \
    envTable.smallScaleAnimation:Stop()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)\
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --update the percent\
    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\
    \
    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\
    \
    --forces the script to update on a 60Hz base\
    self.ThrottleUpdate = 0\
    \
\
end\
\
\
",
["url"]="",
["Icon"]=2175503,
["NpcNames"]={
},
["Name"]="Explosion Affix M+ [Plater]",
["version"]=-1,
["Enabled"]=true,
["semver"]="",
["Author"]="Bombad�o-Azralon",
["Desc"]="Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
},
[14]={
["NpcNames"]={
[1]="141851",
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings:\
    do\
        \
        --change the nameplate color to this color\
        --can use color names: \"red\", \"yellow\"\
        --can use color hex: \"#FF0000\", \"#FFFF00\"\
        --con use color table: {1, 0, 0}, {1, 1, 0}\
        \
        envTable.Color = \"green\"\
        \
        --if true, it'll replace the health info with the unit name\
        envTable.ReplaceHealthWithName = false\
        \
        --use flash when the unit is shown in the screen\
        envTable.FlashNameplate = true\
        \
    end\
    \
    --private:\
    do\
        --create a flash for when the unit if shown\
        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\
        \
    end\
    \
end\
\
--[=[\
\
Npc IDS:\
\
141851: Spawn of G'Huun on Mythic Dungeons\
\
\
--]=]\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --make plater refresh the nameplate color\
    Plater.RefreshNameplateColor (unitFrame)\
    \
        envTable.smallFlash:Stop()\
    \
end\
\
\
",
["ScriptType"]=3,
["Icon"]=135024,
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can flash the nameplate\
    if (envTable.FlashNameplate) then\
        envTable.smallFlash:Play()\
    end\
    \
end\
\
\
\
\
\
\
\
\
",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --adjust the nameplate color\
    Plater.SetNameplateColor (unitFrame, envTable.Color)\
    \
    --check if can replace the health amount with the unit name\
    if (envTable.ReplaceHealthWithName) then\
        \
        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\
        \
        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\
        \
    end\
    \
end\
\
\
",
["Name"]="Color Change [Plater]",
["Desc"]="Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
["OptionsValues"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --check if can flash the nameplate\
    if (envTable.FlashNameplate) then\
        envTable.smallFlash:Play()\
    end\
    \
end\
\
\
\
\
\
\
\
\
",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --settings:\
    do\
        \
        --change the nameplate color to this color\
        --can use color names: \"red\", \"yellow\"\
        --can use color hex: \"#FF0000\", \"#FFFF00\"\
        --con use color table: {1, 0, 0}, {1, 1, 0}\
        \
        envTable.Color = \"green\"\
        \
        --if true, it'll replace the health info with the unit name\
        envTable.ReplaceHealthWithName = false\
        \
        --use flash when the unit is shown in the screen\
        envTable.FlashNameplate = true\
        \
    end\
    \
    --private:\
    do\
        --create a flash for when the unit if shown\
        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\
        \
    end\
    \
end\
\
--[=[\
\
Npc IDS:\
\
141851: Spawn of G'Huun on Mythic Dungeons\
\
\
--]=]\
\
\
\
\
",
["Revision"]=67,
["Options"]={
},
["SpellIds"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --adjust the nameplate color\
    Plater.SetNameplateColor (unitFrame, envTable.Color)\
    \
    --check if can replace the health amount with the unit name\
    if (envTable.ReplaceHealthWithName) then\
        \
        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\
        \
        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\
        \
    end\
    \
end\
\
\
",
["Time"]=1548349253,
["PlaterCore"]=1,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --make plater refresh the nameplate color\
    Plater.RefreshNameplateColor (unitFrame)\
    \
        envTable.smallFlash:Stop()\
    \
end\
\
\
",
["Author"]="Izimode-Azralon",
["Enabled"]=true,
},
[15]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --get the custom color added by the user or the default color\
    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\
    --parse the color since it can be a color name, hex or color table\
    local r, g, b = DetailsFramework:ParseColors (color)\
    \
    --set the border color\
    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\
    \
end\
\
\
\
\
",
["Time"]=1547158827,
["Revision"]=46,
["SpellIds"]={
},
["ConstructorCode"]="--gray lines are comments and doesn't affect the code\
\
--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\
--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\
\
function (self, unitId, unitFrame, envTable)\
    \
    --default color if the aura name isn't found in the Color By Aura table below\
    envTable.DefaultBorderColor = \"orange\"\
    \
    --transparency, affect all borders\
    envTable.BorderAlpha = 1.0\
    \
    --add the aura name and the color, \
    envTable.BorderColorByAura = {\
        \
        --examples:\
        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\
        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\
        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\
        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\
        \
        --add your custom border colors below:\
        \
        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\
        \
    }\
    \
    \
end\
\
\
\
\
",
["Temp_ConstructorCode"]="--gray lines are comments and doesn't affect the code\
\
--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\
--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\
\
function (self, unitId, unitFrame, envTable)\
    \
    --default color if the aura name isn't found in the Color By Aura table below\
    envTable.DefaultBorderColor = \"orange\"\
    \
    --transparency, affect all borders\
    envTable.BorderAlpha = 1.0\
    \
    --add the aura name and the color, \
    envTable.BorderColorByAura = {\
        \
        --examples:\
        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\
        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\
        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\
        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\
        \
        --add your custom border colors below:\
        \
        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\
        \
    }\
    \
    \
end\
\
\
\
\
",
["Icon"]=133006,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --reset the border color\
    self:SetBackdropBorderColor (0, 0, 0, 0)\
    \
end\
\
\
",
["Options"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --get the aura name in lower case\
    local auraLowerName = string.lower (envTable._SpellName)\
    \
    --attempt to get a custom color added by the user in the constructor script\
    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\
    \
    --save the custom color\
    envTable.CustomBorderColor = hasCustomBorderColor\
    \
end\
\
\
",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --get the custom color added by the user or the default color\
    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\
    --parse the color since it can be a color name, hex or color table\
    local r, g, b = DetailsFramework:ParseColors (color)\
    \
    --set the border color\
    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\
    \
end\
\
\
\
\
",
["Name"]="Aura - Border Color [Plater]",
["PlaterCore"]=1,
["NpcNames"]={
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --reset the border color\
    self:SetBackdropBorderColor (0, 0, 0, 0)\
    \
end\
\
\
",
["ScriptType"]=1,
["Author"]="Izimode-Azralon",
["Desc"]="Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
["OptionsValues"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --get the aura name in lower case\
    local auraLowerName = string.lower (envTable._SpellName)\
    \
    --attempt to get a custom color added by the user in the constructor script\
    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\
    \
    --save the custom color\
    envTable.CustomBorderColor = hasCustomBorderColor\
    \
end\
\
\
",
["Enabled"]=false,
},
[16]={
["NpcNames"]={
},
["Options"]={
[1]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option10",
["Value"]=0,
["Name"]="Blank Space",
},
[2]={
["Name"]="Option 17",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option17",
["Value"]="Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
},
[3]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option10",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[4]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable blink",
["Type"]=4,
["Key"]="blinkEnabled",
["Value"]=true,
["Name"]="Blink Enabled",
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable glows",
["Type"]=4,
["Key"]="glowEnabled",
["Value"]=true,
["Name"]="Glow Enabled",
},
[6]={
["Value"]=false,
["Name"]="Change NamePlate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'true' to enable nameplate color change",
["Type"]=4,
["Key"]="changeNameplateColor",
},
[7]={
["Value"]=3,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Timeleft to Blink",
["Type"]=2,
["Desc"]="in seconds, affects the blink effect only",
["Min"]=1,
["Max"]=20,
["Fraction"]=true,
["Key"]="timeleftToBlink",
},
[8]={
["Fraction"]=true,
["Name"]="Blink Speed",
["Value"]=1,
["Key"]="blinkSpeed",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=3,
["Desc"]="time to complete a blink loop",
["Min"]=0.5,
},
[9]={
["Type"]=2,
["Value"]=0.6,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=1,
["Desc"]="max transparency in the animation loop (1.0 is full opaque)",
["Min"]=0.1,
["Fraction"]=true,
["Key"]="blinkMaxAlpha",
["Name"]="Blink Max Alpha",
},
[10]={
["Type"]=1,
["Key"]="blinkColor",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Blink Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color of the blink",
},
[11]={
["Name"]="Nameplate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="nameplate color if ChangeNameplateColor is true",
["Type"]=1,
["Key"]="nameplateColor",
["Value"]={
[1]=0.28627450980392,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
},
[12]={
["Key"]="option10",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
},
[13]={
["Key"]="timerColorEnabled",
["Value"]=true,
["Name"]="Timer Color Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable changes in the color of the time left text",
["Type"]=4,
},
[14]={
["Min"]=1,
["Fraction"]=true,
["Desc"]="in seconds, affects the color of the text",
["Max"]=20,
["Name"]="Time Left Warning",
["Value"]=8,
["Key"]="timeLeftWarning",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
},
[15]={
["Name"]="Time Left Critical",
["Value"]=3,
["Key"]="timeLeftCritical",
["Desc"]="in seconds, affects the color of the text",
["Max"]=10,
["Min"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Type"]=2,
},
[16]={
["Key"]="warningColor",
["Value"]={
[1]=1,
[2]=0.87058823529412,
[3]=0,
[4]=1,
},
["Name"]="Warning Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color when the time left entered in a warning zone",
["Type"]=1,
},
[17]={
["Desc"]="color when the time left is critical",
["Type"]=1,
["Key"]="criticalColor",
["Value"]={
[1]=1,
[2]=0.074509803921569,
[3]=0,
[4]=1,
},
["Name"]="Critical Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.blinkTexture:SetSize (self:GetSize())\
    \
end\
\
\
",
["Revision"]=375,
["Name"]="Aura - Blink by Time Left [Plater]",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.blinkAnimation:Stop()\
    envTable.blinkTexture:Hide()\
    envTable.blinkAnimation:Stop()\
    envTable.glowEffect:Stop()\
    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
end\
\
\
",
["ScriptType"]=1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    local timeLeft = envTable._RemainingTime\
    \
    --check if the spellID isn't being ignored\
    if (envTable.IgnoredSpellID [envTable._SpellID]) then\
        return\
    end\
    \
    --check the time left and start or stop the blink animation and also check if the time left is > zero\
    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftToBlink) then\
            --blink effect\
            if (envTable.BlinkEnabled) then\
                if (not envTable.blinkAnimation:IsPlaying()) then\
                    envTable.blinkAnimation:Play()\
                end\
            end\
            --glow effect\
            if (envTable.GlowEnabled) then\
                envTable.glowEffect:Show()\
            end\
            --nameplate color\
            if (envTable.ChangeNameplateColor) then\
                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
            end\
        else\
            --blink effect\
            if (envTable.blinkAnimation:IsPlaying()) then\
                envTable.blinkAnimation:Stop()\
            end\
            --glow effect\
            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\
                envTable.glowEffect:Hide()\
            end\
        end\
    end\
    \
    --timer color\
    if (envTable.TimerColorEnabled and timeLeft > 0) then\
        if (timeLeft < envTable.TimeLeftCritical) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\
        elseif (timeLeft < envTable.TimeLeftWarning) then\
            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \
        else\
            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\
        end\
    end\
    \
end",
["url"]="",
["SpellIds"]={
},
["PlaterCore"]=1,
["OptionsValues"]={
},
["Time"]=1626382829,
["Enabled"]=true,
["semver"]="",
["Desc"]="Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
["version"]=-1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings (require a /reload after editing any setting)\
    do\
        --blink and glow\
        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\
        envTable.GlowEnabled = scriptTable.config.glowEnabled \
        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\
        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\
        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \
        envTable.BlinkColor = scriptTable.config.blinkColor; \
        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \
        envTable.NameplateColor = scriptTable.config.nameplateColor; \
        \
        --text color\
        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \
        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\
        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\
        envTable.TextColor_Warning = scriptTable.config.warningColor; \
        envTable.TextColor_Critical = scriptTable.config.criticalColor; \
        \
        --list of spellIDs to ignore\
        envTable.IgnoredSpellID = {\
            [12] = true, --use a simple comma here\
            [13] = true,\
        }\
    end\
    \
    \
    --private\
    do\
        --if not envTable.blinkTexture then\
        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\
        envTable.blinkTexture:SetPoint ('center', 0, 0)\
        envTable.blinkTexture:Hide()\
        \
        local onPlay = function()\
            envTable.blinkTexture:Show() \
            envTable.blinkTexture.color = envTable.BlinkColor\
        end\
        local onStop = function()\
            envTable.blinkTexture:Hide()  \
        end\
        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\
        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\
        --end\
        \
        envTable.glowEffect = envTable.glowEffect or self.overlay or Plater.CreateIconGlow (self)\
        --envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\
        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\
        \
    end\
    \
end\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_blink",
["Author"]="Izimode-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
},
[17]={
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\
    if (not isTanking) then \
        Plater.SetNameplateColor (unitFrame, \"pink\") \
    end\
    \
end\
\
\
\
\
",
["Name"]="New Script",
["SpellIds"]={
},
["Temp_OnShowCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    local isTanking = UnitDetailedThreatSituation (\"player\", unitId)\
    if (not isTanking) then \
        Plater.SetNameplateColor (unitFrame, \"pink\") \
    end\
    \
end\
\
\
\
\
",
["Time"]=1550589160,
["Enabled"]=false,
["Temp_OnHideCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["OnHideCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["ScriptType"]=3,
["Author"]="Kastfall-Azralon",
["Desc"]="",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["NpcNames"]={
[1]="surf darter",
},
["Revision"]=5,
["OnShowCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["PlaterCore"]=1,
},
[18]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Time"]=1548957952,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end    \
    \
    envTable.glowEffect:Hide()\
    \
    envTable.BackgroundFlash:Stop()\
    \
    self:StopFrameShake (envTable.FrameShake)    \
    \
    --restore the cast bar to its original height\
    if (envTable.OriginalHeight) then\
        self:SetWidth (envTable.OriginalWidth)\
        self:SetHeight (envTable.OriginalHeight)\
        envTable.OriginalHeight = nil\
        envTable.OriginalWidth = nil\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
",
["Author"]="Tercioo-Sylvanas",
["Name"]="M+ Important Spells [Plater]",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CastbarColor = \"orangered\"\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\
    local CONFIG_BORDER_GLOW_ALPHA = 0 --0.3\
    local CONFIG_SHAKE_DURATION = 0.2 --0.2\
    local CONFIG_SHAKE_AMPLITUDE = 5 --5\
    \
    envTable.CastBarHeightAdd = 1.5\
    \
    --create a glow effect in the border of the cast bar\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\
    envTable.glowEffect:SetOffset (-22, 20, 8, -11)\
    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+20, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \
    \
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\
    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\
    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \
    \
end",
["OptionsValues"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end\
    \
    envTable.glowEffect:Show()\
    \
    envTable.BackgroundFlash:Play()\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    self:PlayFrameShake (envTable.FrameShake)\
    \
    if (envTable._CanInterrupt) then\
        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
    end\
    \
    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetWidth (envTable.OriginalWidth)\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    \
    --increase the cast bar size\
    envTable.OriginalHeight = self:GetHeight()\
    envTable.OriginalWidth = self:GetWidth()\
    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\
    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\
    \
    self:SetWidth (width)\
    self:SetHeight (height * envTable.CastBarHeightAdd)\
    \
    print (envTable.glowEffect:GetAlpha())\
    \
end",
["ScriptType"]=2,
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["PlaterCore"]=1,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.CastbarColor = \"orangered\"\
    \
    --settings (you may need /reload if some configs isn't applied immediately)\
    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\
    local CONFIG_BORDER_GLOW_ALPHA = 0 --0.3\
    local CONFIG_SHAKE_DURATION = 0.2 --0.2\
    local CONFIG_SHAKE_AMPLITUDE = 5 --5\
    \
    envTable.CastBarHeightAdd = 1.5\
    \
    --create a glow effect in the border of the cast bar\
    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\
    envTable.glowEffect:SetOffset (-22, 20, 8, -11)\
    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\
    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+20, self:GetHeight()+30, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \
    \
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\
    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\
    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \
    \
end",
["NpcNames"]={
},
["SpellIds"]={
[1]=258153,
[2]=258313,
[3]=274569,
[4]=278020,
[5]=261635,
[6]=272700,
[7]=268030,
[8]=265368,
[9]=264520,
[10]=265407,
[11]=278567,
[12]=278602,
[13]=258128,
[14]=257791,
[15]=258938,
[16]=265089,
[17]=272183,
[18]=256060,
[19]=257397,
[20]=269972,
[21]=270901,
[22]=270492,
[23]=263215,
[24]=268797,
[25]=262554,
[26]=253517,
[27]=255041,
[28]=252781,
[29]=250368,
[30]=258777,
[31]=278504,
[32]=266106,
[33]=257732,
[34]=268309,
[35]=269302,
[36]=263202,
[37]=257784,
[38]=278755,
[39]=272180,
[40]=263066,
[41]=267273,
[42]=265912,
[43]=274438,
[44]=268317,
[45]=268375,
[46]=276767,
[47]=264105,
[48]=265876,
[49]=270464,
[50]=278961,
[51]=265468,
[52]=256897,
[53]=280604,
[54]=268702,
[55]=255824,
[56]=253583,
[57]=250096,
[58]=278456,
[59]=262092,
[60]=257270,
[61]=267818,
[62]=265091,
[63]=262540,
[64]=263318,
[65]=263959,
[66]=257069,
[67]=256849,
[68]=267459,
[69]=253544,
[70]=268008,
[71]=267981,
[72]=272659,
[73]=264396,
[74]=257736,
[75]=264390,
[76]=255952,
[77]=257426,
[78]=274400,
[79]=272609,
[80]=269843,
[81]=269029,
[82]=272827,
[83]=269266,
[84]=263912,
[85]=264923,
[86]=258864,
[87]=256955,
[88]=265540,
[89]=260793,
[90]=270003,
[91]=270507,
[92]=257337,
[93]=268415,
[94]=275907,
[95]=268865,
[96]=260669,
[97]=260280,
[98]=253239,
[99]=265541,
[100]=250258,
[101]=256709,
[102]=277596,
[103]=276268,
[104]=265372,
[105]=263905,
[106]=265781,
[107]=257170,
[108]=268846,
[109]=270514,
[110]=258622,
[111]=258199,
[112]=256627,
[113]=257870,
[114]=259711,
[115]=258917,
[116]=263891,
[117]=268027,
[118]=268348,
[119]=269313,
[120]=272711,
[121]=271174,
[122]=268260,
[123]=269399,
[124]=268239,
[125]=264574,
[126]=261563,
[127]=257288,
[128]=257757,
[129]=267899,
[130]=255741,
[131]=264757,
[132]=260894,
[133]=263365,
[134]=260292,
[135]=263583,
[136]=276292,
[137]=272874,
[138]=264101,
[139]=264407,
[140]=271456,
[141]=262515,
[142]=275192,
[143]=256405,
[144]=270084,
[145]=257785,
[146]=267237,
[147]=266951,
[148]=267433,
[149]=255577,
[150]=255371,
[151]=270891,
[152]=267357,
[153]=258338,
[154]=257169,
[155]=270927,
[156]=273995,
[157]=260926,
[158]=264027,
[159]=267257,
[160]=253721,
[161]=265019,
[162]=260924,
[163]=263309,
[164]=266206,
[165]=268187,
[166]=260067,
[167]=274507,
[168]=276068,
[169]=263278,
[170]=258317,
[171]=256594,
[172]=268391,
[173]=268230,
[174]=260852,
[175]=267763,
[176]=268706,
[177]=264734,
[178]=288693,
[179]=288694,
[180]=270590,
[181]=290787,
[182]=72286,
},
["Enabled"]=false,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end    \
    \
    envTable.glowEffect:Hide()\
    \
    envTable.BackgroundFlash:Stop()\
    \
    self:StopFrameShake (envTable.FrameShake)    \
    \
    --restore the cast bar to its original height\
    if (envTable.OriginalHeight) then\
        self:SetWidth (envTable.OriginalWidth)\
        self:SetHeight (envTable.OriginalHeight)\
        envTable.OriginalHeight = nil\
        envTable.OriginalWidth = nil\
    end\
    \
end\
\
\
\
\
\
\
\
\
\
\
\
",
["Icon"]="INTERFACE\\ICONS\\Spell_Fire_FelFlameStrike",
["Revision"]=1382,
["Options"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end\
    \
    envTable.glowEffect:Show()\
    \
    envTable.BackgroundFlash:Play()\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    self:PlayFrameShake (envTable.FrameShake)\
    \
    if (envTable._CanInterrupt) then\
        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
    end\
    \
    Plater.SetCastBarBorderColor (self, 1, 0, 0, 0.4)\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetWidth (envTable.OriginalWidth)\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    \
    --increase the cast bar size\
    envTable.OriginalHeight = self:GetHeight()\
    envTable.OriginalWidth = self:GetWidth()\
    local width = Plater.db.profile.plate_config.enemynpc.cast_incombat[1]\
    local height = Plater.db.profile.plate_config.enemynpc.cast_incombat[2]\
    \
    self:SetWidth (width)\
    self:SetHeight (height * envTable.CastBarHeightAdd)\
    \
    print (envTable.glowEffect:GetAlpha())\
    \
end",
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
},
[19]={
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Show() \
end\
\
\
",
["Revision"]=33,
["Author"]="Kastfall-Azralon",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Show() \
end\
\
\
",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\
end\
\
\
",
["PlaterCore"]=1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Hide() \
end\
\
\
",
["ScriptType"]=1,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --custom frames\
    unitFrame.JadeFireGlowEffect = unitFrame.JadeFireGlowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\
    unitFrame.JadeFireGlowEffect:SetOffset (-27, 25, 6, -8)\
    unitFrame.JadeFireGlowEffect:Hide()\
    \
end\
\
\
",
["Desc"]="Alert when the unit has the Fire Shield to be broken.",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --custom frames\
    unitFrame.JadeFireGlowEffect = unitFrame.JadeFireGlowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\
    unitFrame.JadeFireGlowEffect:SetOffset (-27, 25, 6, -8)\
    unitFrame.JadeFireGlowEffect:Hide()\
    \
end\
\
\
",
["OptionsValues"]={
},
["Time"]=1550596124,
["Options"]={
},
["NpcNames"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\
end\
\
\
",
["Icon"]=132221,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Hide() \
end\
\
\
",
["Name"]="Jadefire [BOD] - Fire Shield",
["SpellIds"]={
[1]=286425,
},
["Enabled"]=true,
},
[20]={
["Options"]={
[1]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Cast start animation settings",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
},
[4]={
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
},
[5]={
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
["Type"]=1,
["Name"]="Cast Bar Color",
},
[6]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Min"]=0.05,
["Fraction"]=true,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Value"]=0.4,
},
[8]={
["Key"]="castBarHeight",
["Name"]="Cast Bar Height Mod",
["Fraction"]=false,
["Value"]=5,
["Desc"]="Increases the cast bar height by this value",
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=10,
},
[9]={
["Type"]=2,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=1,
["Min"]=0.1,
["Key"]="shakeDuration",
["Name"]="Shake Duration",
},
[10]={
["Type"]=2,
["Value"]=8,
["Key"]="shakeAmplitude",
["Fraction"]=false,
["Max"]=100,
["Desc"]="How strong is the shake.",
["Min"]=2,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[11]={
["Desc"]="How fast the shake moves.",
["Key"]="shakeFrequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Max"]=80,
["Min"]=1,
["Name"]="Shake Frequency",
["Value"]=40,
},
[12]={
["Name"]="Timer (Key is SpellId and Value is Time)",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_list",
["Desc"]="Key is the spellId and value is the amount of time of the Timer",
["Type"]=7,
["Key"]="timerList",
["Value"]={
[1]={
[1]="350421",
[2]="5",
},
[2]={
[1]="355787",
[2]="15",
},
[3]={
[1]="348513",
[2]="14",
},
[4]={
[1]="348513",
[2]="14",
},
},
},
},
["ScriptType"]=2,
["Time"]=1626467946,
["url"]="",
["Author"]="Tercioo-Sylvanas",
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["PlaterCore"]=1,
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["SpellIds"]={
[1]=350421,
[2]=355787,
[3]=348513,
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Enabled"]=true,
["Revision"]=1162,
["Name"]="Cast - Alert + Timer [P]",
["version"]=-1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\", 7)\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
    --check if there's a timer for this spell\
    local timer = scriptTable.config.timerList[tostring(envTable._SpellID)]\
    \
    if (timer) then\
        --insert code here\
        \
        --set the castbar config\
        local config = {\
            iconTexture = \"\",\
            iconTexcoord = {0.1, 0.9, 0.1, 0.9},\
            iconAlpha = 1,\
            iconSize = 14,\
            \
            text = \"Spikes Incoming!\",\
            textSize = 8,\
            \
            texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\
            color = {.6, .6, .6, 0.8},\
            \
            isChanneling = false,\
            canInterrupt = false,\
            \
            height = 5,\
            width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\
            \
            spellNameAnchor = {side = 3, x = 0, y = -2},\
            timerAnchor = {side = 5, x = 0, y = -2},\
        }\
        \
        Plater.SetAltCastBar(unitFrame.PlateFrame, config, timer, nil, nil)\
        local castBar2 = unitFrame.castBar2\
        castBar2.Text:ClearAllPoints()\
        castBar2.Text:SetPoint (\"topleft\", castBar2, \"bottomleft\", 0, 0)\
        castBar2.percentText:ClearAllPoints()\
        castBar2.percentText:SetPoint (\"topright\", castBar2, \"bottomright\", 0, 0)\
        Plater:SetFontSize(castBar2.percentText, 8)\
    end\
    \
end\
\
\
\
\
\
\
\
",
["NpcNames"]={
},
},
[21]={
["Name"]="Cast - Ultra Important [P]",
["version"]=-1,
["Options"]={
[1]={
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 1",
},
[2]={
["Value"]="Plays a special animation showing the explosion time.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
},
[3]={
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 3",
["Value"]=0,
},
[4]={
["Max"]=6,
["Desc"]="Increases the health bar height by this value",
["Min"]=0,
["Fraction"]=false,
["Name"]="Health Bar Height Mod",
["Type"]=2,
["Value"]=3,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="castBarHeight",
},
[5]={
["Type"]=1,
["Name"]="Health Bar Color",
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
["Key"]="healthBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Changes the health bar color to this one.",
},
[6]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
},
[7]={
["Type"]=5,
["Name"]="Arrow:",
["Value"]="Arrow:",
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[8]={
["Key"]="showArrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show an arrow above the nameplate showing the cast bar progress.",
["Type"]=4,
["Name"]="Show Arrow",
["Value"]=true,
},
[9]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="arrowAlpha",
["Max"]=1,
["Desc"]="Arrow alpha.",
["Min"]=0,
["Name"]="Arrow Alpha",
["Type"]=2,
["Fraction"]=true,
["Value"]=0.5,
},
[10]={
["Value"]=8,
["Fraction"]=false,
["Name"]="Arrow Width",
["Key"]="arrowWidth",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=12,
["Desc"]="Arrow Width.",
["Min"]=4,
},
[11]={
["Key"]="arrowHeight",
["Value"]=8,
["Name"]="Arrow Height",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=4,
["Fraction"]=false,
["Type"]=2,
["Max"]=12,
["Desc"]="Arrow Height.",
},
[12]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
},
[13]={
["Type"]=5,
["Name"]="Dot Animation:",
["Value"]="Dot Animation:",
["Key"]="option12",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[14]={
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=1,
[2]=0.6156862745098,
[3]=0,
[4]=1,
},
["Key"]="dotColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dot animation.",
},
[15]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="xOffset",
["Max"]=10,
["Desc"]="Dot X Offset",
["Min"]=-10,
["Name"]="Dot X Offset",
["Type"]=2,
["Value"]=4,
["Fraction"]=false,
},
[16]={
["Min"]=-10,
["Key"]="yOffset",
["Value"]=3,
["Name"]="Dot Y Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=10,
["Desc"]="Dot Y Offset",
["Fraction"]=false,
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.overlaySpark:Show()\
    \
    if (envTable.ShowArrow) then\
        envTable.topArrow:Show()\
    end\
    \
    Plater.FlashNameplateBorder (unitFrame, 0.05)   \
    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
    \
    envTable.smallScaleAnimation:Play()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\
    \
    envTable.overlaySpark.height = nameplateHeight + 5\
    \
    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
    \
    \
end",
["ScriptType"]=2,
["semver"]="",
["Author"]="Bombad�o-Azralon",
["Desc"]="Used on casts that make the mob explode or transform if the cast passes.",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --settings\
    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\
    envTable.ShowArrow = scriptTable.config.showArrow\
    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\
    envTable.HealthBarColor = scriptTable.config.healthBarColor\
    \
    --creates the spark to show the cast progress inside the health bar\
    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\
    envTable.overlaySpark:SetBlendMode (\"ADD\")\
    envTable.overlaySpark.width = 16\
    envTable.overlaySpark.height = 36\
    envTable.overlaySpark.alpha = .9\
    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\
    \
    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\
    envTable.topArrow:SetBlendMode (\"ADD\")\
    envTable.topArrow.width = scriptTable.config.arrowWidth\
    envTable.topArrow.height = scriptTable.config.arrowHeight\
    envTable.topArrow.alpha = envTable.ArrowAlpha\
    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\
    \
    --scale animation\
    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\
    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \
    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\
    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\
    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\
end\
\
\
\
\
\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\
    \
    envTable.overlaySpark:Hide()\
    envTable.topArrow:Hide()\
    \
    Plater.RefreshNameplateColor (unitFrame)\
    \
    envTable.smallScaleAnimation:Stop()\
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)\
end\
\
\
",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["SpellIds"]={
[1]=332329,
[2]=320103,
[3]=321406,
[4]=335817,
[5]=321061,
[6]=320141,
[7]=326171,
},
["url"]="",
["Enabled"]=true,
["NpcNames"]={
},
["PlaterCore"]=1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --update the percent\
    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\
    \
    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\
    \
    --forces the script to update on a 60Hz base\
    self.ThrottleUpdate = 0.016\
    \
    --update the health bar color coloring from yellow to red\
    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\
end\
\
\
",
["Time"]=1604617977,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_red",
["Revision"]=513,
},
[22]={
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
["Revision"]=406,
["NpcNames"]={
[1]="156212",
[2]="168098",
[3]=179124,
},
["SpellIds"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\
    \
    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \
    \
    --increase the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\
    \
end\
\
\
\
\
\
\
\
",
["ScriptType"]=3,
["Time"]=1604607993,
["semver"]="",
["PlaterCore"]=1,
["Name"]="Unit - Main Target [P]",
["Options"]={
[1]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Name"]="Option 6",
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[4]={
["Type"]=4,
["Name"]="Change Nameplate Color",
["Value"]=true,
["Key"]="changeNameplateColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="change to true to change the color",
},
[5]={
["Name"]="Nameplate Color",
["Value"]={
[1]=1,
[2]=0,
[3]=0.52549019607843,
[4]=1,
},
["Key"]="nameplateColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
},
[6]={
["Max"]=6,
["Desc"]="increase the nameplate height by this value",
["Min"]=0,
["Key"]="nameplateSizeOffset",
["Value"]=0,
["Fraction"]=false,
["Type"]=2,
["Name"]="Nameplate Size Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[7]={
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[8]={
["Value"]={
[1]=1,
[2]=0.71372549019608,
[3]=0,
[4]=1,
},
["Key"]="dotsColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Name"]="Dot Color",
},
[9]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
--[=[\
\
154564 - debug\
\
168098 - empowered coldheart agent\
156212 - coldheart agent\
\
\
\
--]=]",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\
    \
    --restore the nameplate size\
    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\
    unitFrame.healthBar:SetHeight (nameplateHeight)    \
    \
end\
\
\
\
\
",
["Enabled"]=true,
["Author"]="Izimode-Azralon",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --check if can change the nameplate color\
    if (scriptTable.config.changeNameplateColor) then\
        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\
    end\
    \
end\
\
\
\
\
",
["url"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["version"]=-1,
},
[23]={
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["PlaterCore"]=1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    envTable.lifePercent = {\
        --npcId         percent divisions\
        [154564] = {80, 30},   --debug\
        [164451] = {40}, --dessia the decapirator - theater of pain\
        [164463] = {40}, --Paceran the Virulent - theater of pain\
        [164461] = {40}, -- Sathel the Accursed - theater of pain\
        [165946]= {50}, -- ~mordretha - thather of pain\
        [164501] = {70, 40, 10}, --mistcaller - tina scythe\
        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\
    }\
    \
    function envTable.CreateMarker(unitFrame)\
        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\
        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\
        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\
        \
        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\
        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\
        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\
    end\
    \
    function envTable.UpdateMarkers(unitFrame)\
        local markersTable = envTable.lifePercent[envTable._NpcID]\
        if (markersTable) then\
            local unitLifePercent = envTable._HealthPercent / 100\
            for i, percent in ipairs(markersTable) do\
                percent = percent / 100\
                if (unitLifePercent > percent) then\
                    if (not unitFrame.healthMarker) then\
                        envTable.CreateMarker(unitFrame)\
                    end\
                    \
                    unitFrame.healthMarker:Show()\
                    local width = unitFrame.healthBar:GetWidth()\
                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\
                    \
                    local overlaySize = width * (unitLifePercent - percent)\
                    unitFrame.healthOverlay:SetWidth(overlaySize)\
                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\
                    \
                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\
                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\
                    \
                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\
                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\
                    \
                    return\
                end\
            end --end for\
            \
            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\
                unitFrame.healthMarker:Hide()\
                unitFrame.healthOverlay:Hide()\
            end\
        end\
    end\
end      \
\
\
\
\
\
",
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["Time"]=1606506781,
["url"]="",
["semver"]="",
["SpellIds"]={
},
["version"]=-1,
["Enabled"]=true,
["Revision"]=109,
["Author"]="Aelerolor-Torghast",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
["NpcNames"]={
[1]="164451",
[2]="164463",
[3]="164461",
[4]="165946",
[5]="164501",
[6]="164218",
},
["Options"]={
[1]={
["Value"]="Add markers into the health bar to remind you about boss abilities at life percent.",
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 1",
},
[2]={
["Type"]=6,
["Name"]="blank line",
["Value"]=0,
["Key"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[3]={
["Type"]=1,
["Name"]="Vertical Line Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="indicatorColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Indicator color.",
},
[4]={
["Max"]=1,
["Min"]=0.1,
["Fraction"]=true,
["Value"]=0.79,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Name"]="Vertical Line Alpha",
["Key"]="indicatorAlpha",
["Desc"]="Indicator alpha.",
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="",
["Value"]=0,
["Name"]="blank line",
},
[6]={
["Desc"]="Fill color.",
["Type"]=1,
["Key"]="fillColor",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Fill Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[7]={
["Max"]=1,
["Key"]="fillAlpha",
["Value"]=0.2,
["Fraction"]=true,
["Name"]="Fill Alpha",
["Type"]=2,
["Desc"]="Fill alpha.",
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    if (unitFrame.healthMarker) then\
        unitFrame.healthMarker:Hide()\
        unitFrame.healthOverlay:Hide()\
    end\
end\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\health_indicator",
["Name"]="Unit - Health Markers [P]",
},
[24]={
["PlaterCore"]=1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (not Plater.IsPlayerTank()) then\
        return\
    end\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end    \
    \
    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\
    \
    --stop the camera shake\
    unitFrame:StopFrameShake (envTable.FrameShake)\
    \
    envTable.FullBarFlash:Stop()\
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
",
["url"]="",
["Author"]="Tercioo-Sylvanas",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --castbar color (when can be interrupted)\
    envTable.CastbarColor = scriptTable.config.castbarColor\
    \
    --flash duration\
    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\
    \
    --add this value to the cast bar height\
    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\
    \
    --create a fast flash above the cast bar\
    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --create a texture to use for a flash behind the cast bar\
    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\
    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \
    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\
    \
    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \
    \
    \
    \
    \
    \
end\
\
\
",
["Desc"]="Cast alert for abilities which only the tank can interrupt.",
["Enabled"]=true,
["Name"]="Cast - Tank Interrupt [P]",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (not Plater.IsPlayerTank()) then\
        return\
    end\
    \
    --don't execute on battlegrounds and arenas\
    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\
        return\
    end\
    \
    --play flash animations\
    envTable.FullBarFlash:Play()\
    \
    --envTable.currentHeight = unitFrame.castBar:GetHeight()\
    \
    --restoring the default size (not required since it already restore in the hide script)\
    if (envTable.OriginalHeight) then\
        self:SetHeight (envTable.OriginalHeight)\
    end\
    \
    --increase the cast bar size\
    local height = self:GetHeight()\
    envTable.OriginalHeight = height\
    \
    self:SetHeight (height + envTable.CastBarHeightAdd)\
    \
    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\
    \
    unitFrame:PlayFrameShake (envTable.FrameShake)\
    \
    --set the color of the cast bar to dark orange (only if can be interrupted)\
    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \
    if (envTable._CanInterrupt) then\
        if (scriptTable.config.useCastbarColor) then\
            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\
        end\
    end\
    \
    envTable.BackgroundFlash:Play()\
    \
    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\
    \
end\
\
\
\
\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_tank",
["Revision"]=843,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["NpcNames"]={
},
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Time"]=1618996775,
["SpellIds"]={
[1]=321828,
},
["version"]=-1,
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 3",
},
[4]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
},
[6]={
["Name"]="Cast Bar Color",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
["Type"]=1,
},
[7]={
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[8]={
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Name"]="Flash Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="flashDuration",
["Min"]=0.05,
["Fraction"]=true,
["Value"]=0.2,
},
[9]={
["Name"]="Cast Bar Height Mod",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Desc"]="Increases the cast bar height by this value",
["Min"]=0,
["Key"]="castBarHeight",
["Type"]=2,
["Fraction"]=false,
["Value"]=0,
},
[10]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Value"]=0.1,
["Name"]="Shake Duration",
["Key"]="shakeDuration",
["Max"]=1,
["Min"]=0.1,
["Fraction"]=true,
},
[11]={
["Type"]=2,
["Desc"]="How strong is the shake.",
["Min"]=10,
["Name"]="Shake Amplitude",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
["Max"]=200,
["Value"]=25,
},
[12]={
["Key"]="shakeFrequency",
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Name"]="Shake Frequency",
["Value"]=30,
["Fraction"]=false,
["Max"]=80,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
},
[25]={
["Desc"]="Highlight the target name",
["ScriptType"]=2,
["SpellIds"]={
[1]=354173,
},
["Name"]="Cast - Important Target [P]",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Time"]=1625696653,
["url"]="",
["Revision"]=836,
["PlaterCore"]=1,
["version"]=-1,
["Options"]={
[1]={
["Name"]="Option 1",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[2]={
["Type"]=5,
["Name"]="Option 2",
["Value"]="Shows the target name in a separate box",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
},
[4]={
["Name"]="Option 4",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[5]={
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Flash",
["Value"]="Flash:",
},
[6]={
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Max"]=1.2,
["Desc"]="How long is the flash played when the cast starts.",
["Fraction"]=true,
["Type"]=2,
["Min"]=0.1,
["Value"]=0.8,
},
[7]={
["Desc"]="Color of the Flash",
["Type"]=1,
["Name"]="Flash Color",
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="flashColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[8]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
},
[9]={
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Shake:",
},
[10]={
["Type"]=2,
["Fraction"]=true,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Duration",
["Max"]=0.5,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
["Key"]="shakeDuration",
},
[11]={
["Name"]="Shake Amplitude",
["Min"]=1,
["Key"]="shakeAmplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Value"]=5,
["Type"]=2,
["Max"]=10,
["Desc"]="How strong is the shake.",
},
[12]={
["Max"]=80,
["Min"]=1,
["Fraction"]=false,
["Key"]="shakeFrequency",
["Type"]=2,
["Value"]=40,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Frequency",
["Desc"]="How fast the shake moves.",
},
[13]={
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[14]={
["Value"]="Dot Animation:",
["Key"]="option14",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Dot Animation",
},
[15]={
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=0.56470588235294,
[2]=0.56470588235294,
[3]=0.56470588235294,
[4]=1,
},
["Key"]="dotColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Adjust the color of the dots around the nameplate",
},
[16]={
["Max"]=20,
["Name"]="Dot X Offset",
["Key"]="xOffset",
["Fraction"]=false,
["Type"]=2,
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Min"]=-10,
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[17]={
["Max"]=10,
["Min"]=-10,
["Fraction"]=false,
["Name"]="Dot Y Offset",
["Type"]=2,
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Key"]="yOffset",
["Value"]=3,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[18]={
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[19]={
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[20]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
},
[21]={
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[22]={
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[23]={
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[24]={
["Type"]=5,
["Name"]="Option 19",
["Value"]="Cast Bar",
["Key"]="option19",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[25]={
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Use cast bar color.",
["Type"]=4,
["Name"]="Use Cast Bar Color",
},
[26]={
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=0.41176470588235,
[2]=1,
[3]=0,
[4]=1,
},
["Key"]="castBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Cast bar color.",
},
[27]={
["Type"]=6,
["Key"]="option27",
["Value"]=0,
["Name"]="Option 27",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[28]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option28",
["Value"]="Target Options",
["Name"]="Option 28",
},
[29]={
["Value"]=14,
["Key"]="targetNameSize",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Text Size",
["Type"]=2,
["Max"]=32,
["Desc"]="",
["Min"]=8,
["Fraction"]=false,
},
[30]={
["Desc"]="",
["Type"]=4,
["Key"]="colorByClass",
["Value"]=true,
["Name"]="Use Class Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[31]={
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Name"]="Text Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="textColor",
},
[32]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="targetBgColor",
["Value"]={
[1]=0,
[2]=0,
[3]=0,
[4]=0.98467203229666,
},
["Name"]="Background Color",
},
[33]={
["Name"]="Border Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="targetBgBorderColor",
["Value"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
},
[34]={
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Frame Width",
["Type"]=2,
["Max"]=160,
["Min"]=30,
["Desc"]="",
["Value"]=90,
["Key"]="targetFrameWidth",
},
[35]={
["Key"]="targetFrameHeight",
["Min"]=8,
["Value"]=20,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=32,
["Desc"]="",
["Name"]="Frame Height",
},
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    Plater.StopDotAnimation(unitFrame.targetBox, envTable.dotAnimation)    \
    \
    envTable.BackgroundFlash:Stop()\
    \
    unitFrame:StopFrameShake (envTable.FrameShake)    \
    \
    unitFrame.targetBox:Hide()\
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.UpdateTargetBox(unitFrame, unitId) \
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_target",
["Enabled"]=true,
["semver"]="",
["Author"]="Bombad�o-Azralon",
["NpcNames"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    if (envTable.UpdateTargetBox(unitFrame, unitId)) then\
        \
        envTable.BackgroundFlash:Play()\
        \
        Plater.FlashNameplateBorder (unitFrame, 0.05)   \
        Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\
        \
        unitFrame:PlayFrameShake (envTable.FrameShake)\
        \
        if (envTable._CanInterrupt) then\
            if (scriptTable.config.useCastbarColor) then\
                self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\
            end\
        end\
        \
    end\
    \
end\
\
\
\
\
\
\
",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --create a texture to use for a flash behind the cast bar\
    \
    if (not unitFrame.backGroundFlashTextureImpTarget) then\
        unitFrame.backGroundFlashTextureImpTarget =  Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\
    end\
    \
    local backGroundFlashTexture = unitFrame.backGroundFlashTextureImpTarget\
    backGroundFlashTexture:SetBlendMode (\"ADD\")\
    backGroundFlashTexture:SetDrawLayer(\"OVERLAY\", 7)\
    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\
    backGroundFlashTexture:Hide()\
    \
    --create the animation hub to hold the flash animation sequence\
    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \
        function()\
            backGroundFlashTexture:Show()\
        end,\
        function()\
            backGroundFlashTexture:Hide()\
        end\
    )\
    \
    --create the flash animation sequence\
    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\
    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\
    \
    --create a camera shake for the nameplate\
    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\
    \
    --update the config for the flash here so it wont need a /reload\
    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\
    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\
    \
    --update the config for the skake here so it wont need a /reload\
    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\
    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\
    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\
    \
    --create the target unit name box\
    if (not unitFrame.targetBox) then\
        unitFrame.targetBox = CreateFrame(\"frame\", unitFrame:GetName() .. \"ScriptImportantTarget\", unitFrame, \"BackdropTemplate\")\
        unitFrame.targetBox:SetSize(80, 20)\
        unitFrame.targetBox:SetFrameStrata(\"TOOLTIP\")\
        unitFrame.targetBox:Hide()\
        unitFrame.targetBox:SetPoint(\"left\", unitFrame, \"right\", 0, 0)\
        \
        unitFrame.targetBox:SetBackdrop({edgeFile = [[Interface\\Buttons\\WHITE8X8]], edgeSize = 1, bgFile = [[Interface\\AddOns\\Details\\images\\background]], tile = true, tileSize = 16})\
        unitFrame.targetBox:SetBackdropColor(.2, .2, .2, .8)\
        unitFrame.targetBox:SetBackdropBorderColor(0, 0, 0, 1)\
        \
        unitFrame.targetBoxName = unitFrame.targetBox:CreateFontString(nil, \"artwork\", \"GameFontNormal\")\
        unitFrame.targetBoxName:SetPoint(\"center\")\
    end\
    \
    function envTable.UpdateTargetBox(unitFrame, unitId)\
        local targetUnitId = unitId .. \"target\"\
        local unitName = UnitName(targetUnitId)\
        \
        if (unitName) then\
            if (scriptTable.config.colorByClass) then\
                Plater:SetFontColor(unitFrame.targetBoxName, \"white\")\
                unitName = Plater.SetTextColorByClass(targetUnitId, unitName)\
            else\
                Plater:SetFontColor(unitFrame.targetBoxName, scriptTable.config.textColor)\
            end\
            \
            unitFrame.targetBoxName:SetText(unitName)\
            Plater:SetFontSize(unitFrame.targetBoxName, scriptTable.config.targetNameSize)\
            unitFrame.targetBox:SetBackdropColor(Plater:ParseColors(scriptTable.config.targetBgColor))\
            unitFrame.targetBox:SetBackdropBorderColor(Plater:ParseColors(scriptTable.config.targetBgBorderColor))\
            unitFrame.targetBox:Show()\
            \
            unitFrame.targetBox:SetWidth(scriptTable.config.targetFrameWidth)\
            unitFrame.targetBox:SetHeight(scriptTable.config.targetFrameHeight)\
            \
            if (not Plater.HasDotAnimationPlaying(unitFrame.targetBox)) then\
                envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.targetBox, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\
            end\
            \
            unitFrame.backGroundFlashTextureImpTarget:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\
            \
            return true\
            \
        end\
    end\
    \
end",
},
[26]={
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.CheckMark (unitId, unitFrame)\
end\
\
\
",
["url"]="",
["NpcNames"]={
[1]="163520",
[2]="163618",
[3]="164506",
},
["SpellIds"]={
},
["Revision"]=63,
["version"]=-1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    --check for marks\
    function  envTable.CheckMark (unitId, unitFrame)\
        if (not GetRaidTargetIndex(unitId)) then\
            if (scriptTable.config.onlyInCombat) then\
                if (not UnitAffectingCombat(unitId)) then\
                    return\
                end                \
            end\
            \
            SetRaidTarget(unitId, 8)\
        end       \
    end\
end\
\
\
--163520 - forsworn squad-leader\
--163618 - zolramus necromancer - The Necrotic Wake\
--164506 - anciet captain - theater of pain\
\
\
",
["Time"]=1604696441,
["Icon"]="Interface\\Worldmap\\GlowSkull_64Grey",
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Auto set skull marker",
["PlaterCore"]=1,
["ScriptType"]=3,
["Enabled"]=false,
["Author"]="Aelerolor-Torghast",
["Name"]="Auto Set Skull",
["Options"]={
[1]={
["Type"]=5,
["Key"]="option1",
["Value"]="Auto set a raid target Skull on the unit.",
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[2]={
["Key"]="option2",
["Value"]=0,
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[3]={
["Name"]="Only in Combat",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Set the mark only if the unit is in combat.",
["Type"]=4,
["Key"]="onlyInCombat",
["Value"]=false,
},
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.CheckMark (unitId, unitFrame)\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
},
[27]={
["Time"]=1604354364,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Name"]="Countdown",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    Plater.ClearAltCastBar(unitFrame.PlateFrame)\
end",
["url"]="",
["Enabled"]=true,
["semver"]="",
["Desc"]="Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    local npcInfo = envTable.npcInfo[envTable._NpcID]\
    \
    if (npcInfo and npcInfo.secondCastBar) then\
        if (npcInfo.debuffTimer) then\
            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\
                \
                local name = npcInfo.name\
                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\
                \
                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\
            else\
                if (unitFrame.castBar2:IsShown()) then\
                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\
                    if (altCastId == npcInfo.altCastId) then\
                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\
                    end                   \
                end                              \
            end\
        else\
            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\
        end\
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Revision"]=206,
["NpcNames"]={
[1]="164427",
[2]="164414",
[3]="164185",
[4]="164567",
[5]="165408",
},
["version"]=-1,
["Options"]={
},
["PlaterCore"]=1,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    envTable.npcInfo = {\
        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\
        \
        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\
        \
        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\
        \
        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\
        \
        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\
        \
        \
        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\
        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\
    }\
    \
    --set the castbar config\
    local config = {\
        iconTexture = \"\",\
        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\
        iconAlpha = 1,\
        iconSize = 14,\
        \
        text = \"Boom!\",\
        textSize = 9,\
        \
        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\
        color = \"silver\",\
        \
        isChanneling = false,\
        canInterrupt = false,\
        \
        height = 2,\
        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\
        \
        spellNameAnchor = {side = 3, x = 0, y = -2},\
        timerAnchor = {side = 5, x = 0, y = -2},\
    }    \
    \
    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\
        --show the cast bar\
        if (npcInfo.timerId) then\
            local barObject = Plater.GetBossTimer(npcInfo.timerId)\
            if (barObject) then\
                if (npcInfo.remaining) then\
                    local timeLeft = barObject.timer + barObject.start - GetTime()\
                    if (timeLeft > npcInfo.remaining) then\
                        return\
                    end\
                end\
                \
                config.text = npcInfo.name\
                \
                if (npcInfo.spellIcon) then\
                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\
                    config.iconTexture = iconTexture\
                else\
                    config.iconTexture = \"\"\
                end\
                \
                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\
            end\
        else\
            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \
        end\
        \
        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\
    end\
end",
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    local npcInfo = envTable.npcInfo[envTable._NpcID]\
    \
    if (npcInfo and npcInfo.secondCastBar) then\
        if (npcInfo.timerId) then\
            local barObject = Plater.GetBossTimer(npcInfo.timerId)\
            if (barObject) then\
                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\
                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\
                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\
                end\
            end \
            \
        elseif (npcInfo.debuffTimer) then\
            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\
                \
                --get the debuff timeleft\
                local name = npcInfo.name\
                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\
                local startTime = expirationTime - duration\
                \
                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\
                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\
                end\
                \
            else \
                if (unitFrame.castBar2:IsShown()) then\
                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\
                    if (altCastId == npcInfo.altCastId) then\
                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\
                    end                   \
                end                              \
            end\
        end\
    end\
end\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
["Author"]="Aelerolor-Torghast",
["SpellIds"]={
},
},
[28]={
["Revision"]=186,
["semver"]="",
["Author"]="Symantec-Azralon",
["NpcNames"]={
[1]="174773",
},
["PlaterCore"]=1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
["Enabled"]=true,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
["url"]="",
["Name"]="M+ Spiteful",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    if (unitFrame.spitefulTexture) then\
        unitFrame.spitefulText:Hide()\
        unitFrame.spitefulTexture:Hide()    \
        unitFrame.roleIcon:Hide()\
        unitFrame.targetName:Hide()\
    end\
end\
\
\
\
\
\
",
["Time"]=1611844883,
["SpellIds"]={
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
    if (not unitFrame.spitefulTexture) then\
        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\
        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\
        unitFrame.spitefulTexture:SetSize(27, 14)\
        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\
        \
        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\
        DetailsFramework:SetFontFace (unitFrame.spitefulText, \"2002\")\
        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\
        unitFrame.spitefulText:SetJustifyH(\"right\")\
        \
        unitFrame.roleIcon = unitFrame:CreateTexture(nil, \"overlay\")\
        unitFrame.roleIcon:SetPoint(\"left\", unitFrame.healthBar, \"left\", 2, 0)\
        unitFrame.targetName = unitFrame:CreateFontString(nil, \"overlay\", \"GameFontNormal\")\
        unitFrame.targetName:SetPoint(\"left\", unitFrame.roleIcon, \"right\", 2, 0)\
        \
        unitFrame.spitefulTexture:Hide()\
        unitFrame.spitefulText:Hide()\
    end\
    \
    function envTable.UpdateSpitefulWidget(unitFrame)\
        \
        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\
        unitFrame.spitefulTexture:SetColorTexture(r, g, b, a)\
        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \
        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\
        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\
        \
        local currentHealth = unitFrame.healthBar.CurrentHealth\
        local maxHealth = unitFrame.healthBar.CurrentHealthMax\
        \
        local healthPercent = currentHealth / maxHealth * 100\
        local timeToDie = format(\"%.1fs\", healthPercent / 8)\
        unitFrame.spitefulText:SetText(timeToDie)\
        \
        unitFrame.spitefulText:Show()\
        unitFrame.spitefulTexture:Show()\
        \
        if scriptTable.config.switchTargetName then\
            local plateFrame = unitFrame.PlateFrame\
            \
            local target = UnitName(unitFrame.namePlateUnitToken .. \"target\") or UnitName(unitFrame.namePlateUnitToken)\
            \
            if (target and target ~= \"\") then\
                local _, class = UnitClass(unitFrame.namePlateUnitToken .. \"target\")\
                if (class) then\
                    target = DetailsFramework:AddClassColorToText(target, class)\
                end\
                \
                local role = UnitGroupRolesAssigned(unitFrame.namePlateUnitToken .. \"target\")\
                if (role and role ~= \"NONE\") then\
                    target = DetailsFramework:AddRoleIconToText(target, role)\
                end\
                \
                plateFrame.namePlateUnitName = target\
                Plater.UpdateUnitName(plateFrame)\
            end\
        end\
        \
        if scriptTable.config.useTargetingColor then\
            local targeted = UnitIsUnit(unitFrame.namePlateUnitToken .. \"target\", \"player\")\
            if targeted then\
                Plater.SetNameplateColor (unitFrame, scriptTable.config.targetingColor)\
            else\
                Plater.RefreshNameplateColor(unitFrame)\
            end\
        end\
    end\
end",
["Icon"]=135945,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Time to die Spiteful affix",
["version"]=-1,
["Options"]={
[1]={
["Type"]=5,
["Key"]="option12",
["Value"]="Time to Die",
["Name"]="Time to Die",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[2]={
["Max"]=50,
["Min"]=10,
["Name"]="Width",
["Type"]=2,
["Key"]="bgWidth",
["Value"]=27,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="",
},
[3]={
["Type"]=1,
["Key"]="bgColor",
["Value"]={
[1]=0.50588235294118,
[2]=0.070588235294118,
[3]=1,
[4]=1,
},
["Name"]="Background Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[4]={
["Max"]=24,
["Min"]=7,
["Value"]=8,
["Fraction"]=false,
["Name"]="Text Size",
["Type"]=2,
["Desc"]="",
["Key"]="textSize",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[5]={
["Name"]="Text Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="textColor",
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
},
[6]={
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[7]={
["Value"]="Targeting",
["Name"]="Targeting",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option11",
},
[8]={
["Type"]=4,
["Name"]="Show Target instead of Name",
["Value"]=true,
["Key"]="switchTargetName",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
},
[9]={
["Key"]="useTargetingColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Name"]="Change Color if targeting You",
["Value"]=true,
},
[10]={
["Desc"]="",
["Type"]=1,
["Name"]="Color if targeting You",
["Value"]={
[1]=0.070588235294118,
[2]=0.61960784313725,
[3]=0,
[4]=1,
},
["Key"]="targetingColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[11]={
["Type"]=6,
["Key"]="option11",
["Value"]=0,
["Name"]="Option 11",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
},
["ScriptType"]=3,
},
[29]={
["Desc"]="Show the energy amount above the nameplate.",
["NpcNames"]={
[1]="164406",
[2]="164407",
[3]="162100",
[4]="162099",
[5]="162329",
[6]="164558",
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Hide()\
end\
\
\
",
["url"]="",
["Revision"]=233,
["Author"]="Celian-Sylvanas",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["ScriptType"]=3,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    local currentPower = UnitPower(unitId)\
    \
    if (currentPower and currentPower > 0) then\
        local maxPower = UnitPowerMax (unitId)\
        local percent = floor (currentPower / maxPower * 100)\
        \
        envTable.EnergyAmount.text = \"\" .. percent;\
        \
        if (scriptTable.config.showLater) then\
            local alpha = (percent -80) * 5\
            alpha = alpha / 100\
            alpha = max(0, alpha)\
            envTable.EnergyAmount:SetAlpha(alpha)\
            \
        else\
            envTable.EnergyAmount:SetAlpha(1.0)\
        end\
        \
        \
    else\
        envTable.EnergyAmount.text = \"\"\
    end\
end\
\
\
\
\
\
\
\
\
",
["SpellIds"]={
},
["version"]=-1,
["Icon"]=136048,
["Enabled"]=true,
["Name"]="Unit - Show Energy [Plater]",
["PlaterCore"]=1,
["Options"]={
[1]={
["Type"]=6,
["Key"]="option1",
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[2]={
["Type"]=5,
["Key"]="option3",
["Value"]="Show the power of the unit above the nameplate.",
["Name"]="script desc",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="add trigger",
["Value"]="Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
["Key"]="option3",
},
[4]={
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option2",
["Value"]=0,
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the energy won't start showing until the unit has 80% energy.",
["Type"]=4,
["Key"]="showLater",
["Value"]=true,
["Name"]="Show at 80% of Energy",
},
[6]={
["Value"]=0,
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 2",
},
[7]={
["Type"]=2,
["Desc"]="Text size.",
["Min"]=8,
["Key"]="fontSize",
["Fraction"]=false,
["Max"]=32,
["Name"]="Text Size",
["Value"]=16,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[8]={
["Key"]="fontColor",
["Value"]={
[1]=0.80392156862745,
[2]=0.80392156862745,
[3]=0.80392156862745,
[4]=1,
},
["Name"]="Font Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the text.",
["Type"]=1,
},
[9]={
["Type"]=4,
["Key"]="outline",
["Value"]=true,
["Name"]="Enable Text Outline",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the text uses outline.",
},
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\
    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \
    \
    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\
    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\
    envTable.EnergyAmount.outline = scriptTable.config.outline\
    \
    \
end\
\
--[=[\
\
164406 = Shriekwing\
164407 = Sludgefist\
162100 = kryxis the voracious\
162099 = general kaal - sanguine depths\
162329 = Xav the Unfallen - threater of pain\
--]=]",
["Time"]=1604357453,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
},
},
["npc_cache"]={
[131492]={
[1]="Devout Blood Priest",
[2]="The Underrot",
},
[134058]={
[1]="Galecaller Faye",
[2]="Shrine of the Storm",
},
[129529]={
[1]="Blacktooth Scrapper",
[2]="Freehold",
},
[122968]={
[1]="Yazma",
[2]="Atal'Dazar",
},
[144071]={
[1]="Irontide Waveshaper",
[2]="Siege of Boralus",
},
[136541]={
[1]="Bile Oozeling",
[2]="Waycrest Manor",
},
[122970]={
[1]="Shadowblade Stalker",
[2]="Atal'Dazar",
},
[134331]={
[1]="King Rahu'ai",
[2]="Kings' Rest",
},
[137484]={
[1]="King A'akul",
[2]="Kings' Rest",
},
[135971]={
[1]="Faithless Conscript",
[2]="Temple of Sethraliss",
},
[141565]={
[1]="Kul Tiran Footman",
[2]="Siege of Boralus",
},
[133361]={
[1]="Wasting Servant",
[2]="Waycrest Manor",
},
[130436]={
[1]="Off-Duty Laborer",
[2]="The MOTHERLODE!!",
},
[128651]={
[1]="Hadal Darkfathom",
[2]="Siege of Boralus",
},
[126969]={
[1]="Trothak",
[2]="Freehold",
},
[136186]={
[1]="Tidesage Spiritualist",
[2]="Shrine of the Storm",
},
[134024]={
[1]="Devouring Maggot",
[2]="Waycrest Manor",
},
[134284]={
[1]="Fallen Deathspeaker",
[2]="The Underrot",
},
[135245]={
[1]="Bilge Rat Demolisher",
[2]="Siege of Boralus",
},
[126983]={
[1]="Harlan Sweete",
[2]="Freehold",
},
[125828]={
[1]="Zetapally",
[2]="Atal'Dazar",
},
[134150]={
[1]="Runecarver Sorn",
[2]="Shrine of the Storm",
},
[136391]={
[1]="Heart Guardian",
[2]="Temple of Sethraliss",
},
[135052]={
[1]="Blight Toad",
[2]="Waycrest Manor",
},
[129758]={
[1]="Irontide Grenadier",
[2]="Freehold",
},
[131436]={
[1]="Chosen Blood Matron",
[2]="The Underrot",
},
[138019]={
[1]="Kul Tiran Vanguard",
[2]="Siege of Boralus",
},
[135474]={
[1]="Thistle Acolyte",
[2]="Waycrest Manor",
},
[128455]={
[1]="T'lonja",
[2]="Atal'Dazar",
},
[128967]={
[1]="Ashvane Sniper",
[2]="Siege of Boralus",
},
[122965]={
[1]="Vol'kaal",
[2]="Atal'Dazar",
},
[138064]={
[1]="Posh Vacationer",
[2]="The MOTHERLODE!!",
},
[139799]={
[1]="Ironhull Apprentice",
[2]="Shrine of the Storm",
},
[134828]={
[1]="Aqualing",
[2]="Shrine of the Storm",
},
[134739]={
[1]="Purification Construct",
[2]="Kings' Rest",
},
[144286]={
[1]="Asset Manager",
[2]="The MOTHERLODE!!",
},
[164929]={
[1]="仙木灵居民",
[2]="塞兹仙林的迷雾",
},
[131527]={
[1]="Lord Waycrest",
[2]="Waycrest Manor",
},
[137029]={
[1]="Ordnance Specialist",
[2]="The MOTHERLODE!!",
},
[137989]={
[1]="Embalming Fluid",
[2]="Kings' Rest",
},
[134616]={
[1]="Krolusk Pup",
[2]="Temple of Sethraliss",
},
[135258]={
[1]="Irontide Marauder",
[2]="Siege of Boralus",
},
[137516]={
[1]="Ashvane Invader",
[2]="Siege of Boralus",
},
[138048]={
[1]="Training Dummy",
[2]="Waycrest Manor",
},
[135322]={
[1]="The Golden Serpent",
[2]="Kings' Rest",
},
[135204]={
[1]="Spectral Hex Priest",
[2]="Kings' Rest",
},
[129370]={
[1]="Irontide Waveshaper",
[2]="Siege of Boralus",
},
[130488]={
[1]="Mech Jockey",
[2]="The MOTHERLODE!!",
},
[129788]={
[1]="Irontide Bonesaw",
[2]="Freehold",
},
[135475]={
[1]="Kula the Butcher",
[2]="Kings' Rest",
},
[130485]={
[1]="Mechanized Peacekeeper",
[2]="The MOTHERLODE!!",
},
[129208]={
[1]="Dread Captain Lockwood",
[2]="Siege of Boralus",
},
[141285]={
[1]="Kul Tiran Marksman",
[2]="Siege of Boralus",
},
[134069]={
[1]="Vol'zith the Whisperer",
[2]="Shrine of the Storm",
},
[136006]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[131858]={
[1]="Thornguard",
[2]="Waycrest Manor",
},
[174773]={
[1]="怨毒影魔",
[2]="塞兹仙林的迷雾",
},
[137626]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[129373]={
[1]="Dockhound Packmaster",
[2]="Siege of Boralus",
},
[134514]={
[1]="Abyssal Cultist",
[2]="Shrine of the Storm",
},
[129802]={
[1]="Earthrager",
[2]="The MOTHERLODE!!",
},
[131667]={
[1]="Soulbound Goliath",
[2]="Waycrest Manor",
},
[138063]={
[1]="Posh Vacationer",
[2]="The MOTHERLODE!!",
},
[137625]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[133963]={
[1]="Test Subject",
[2]="The MOTHERLODE!!",
},
[135329]={
[1]="Matron Bryndle",
[2]="Waycrest Manor",
},
[135263]={
[1]="Ashvane Spotter",
[2]="Siege of Boralus",
},
[137511]={
[1]="Bilge Rat Cutthroat",
[2]="Siege of Boralus",
},
[136984]={
[1]="Reban",
[2]="Kings' Rest",
},
[144232]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[141939]={
[1]="Ashvane Spotter",
[2]="Siege of Boralus",
},
[142199]={
[1]="Alpine Hawk",
[2]="Freehold",
},
[129517]={
[1]="Reanimated Raptor",
[2]="Atal'Dazar",
},
[136076]={
[1]="Agitated Nimbus",
[2]="Temple of Sethraliss",
},
[128434]={
[1]="Feasting Skyscreamer",
[2]="Atal'Dazar",
},
[133593]={
[1]="Expert Technician",
[2]="The MOTHERLODE!!",
},
[133384]={
[1]="Merektha",
[2]="Temple of Sethraliss",
},
[135048]={
[1]="Gorestained Piglet",
[2]="Waycrest Manor",
},
[130635]={
[1]="Stonefury",
[2]="The MOTHERLODE!!",
},
[138281]={
[1]="Faceless Corruptor",
[2]="The Underrot",
},
[128649]={
[1]="Sergeant Bainbridge",
[2]="Siege of Boralus",
},
[129366]={
[1]="Bilge Rat Buccaneer",
[2]="Siege of Boralus",
},
[131318]={
[1]="Elder Leaxa",
[2]="The Underrot",
},
[129527]={
[1]="Bilge Rat Buccaneer",
[2]="Freehold",
},
[127879]={
[1]="Shieldbearer of Zul",
[2]="Atal'Dazar",
},
[127019]={
[1]="Training Dummy",
[2]="Freehold",
},
[130661]={
[1]="Venture Co. Earthshaper",
[2]="The MOTHERLODE!!",
},
[129640]={
[1]="Snarling Dockhound",
[2]="Siege of Boralus",
},
[127757]={
[1]="Reanimated Honor Guard",
[2]="Atal'Dazar",
},
[129231]={
[1]="Rixxa Fluxflame",
[2]="The MOTHERLODE!!",
},
[137486]={
[1]="Queen Patlaa",
[2]="Kings' Rest",
},
[136353]={
[1]="Colossal Tentacle",
[2]="Shrine of the Storm",
},
[135472]={
[1]="Zanazal the Wise",
[2]="Kings' Rest",
},
[131819]={
[1]="Coven Diviner",
[2]="Waycrest Manor",
},
[137713]={
[1]="Big Money Crab",
[2]="The MOTHERLODE!!",
},
[135231]={
[1]="Spectral Brute",
[2]="Kings' Rest",
},
[141495]={
[1]="Kul Tiran Footman",
[2]="Siege of Boralus",
},
[135406]={
[1]="Animated Gold",
[2]="Kings' Rest",
},
[135846]={
[1]="Sand-Crusted Striker",
[2]="Temple of Sethraliss",
},
[141282]={
[1]="Kul Tiran Footman",
[2]="Siege of Boralus",
},
[142587]={
[1]="Devouring Maggot",
[2]="Waycrest Manor",
},
[133852]={
[1]="Living Rot",
[2]="The Underrot",
},
[136250]={
[1]="Hoodoo Hexer",
[2]="Temple of Sethraliss",
},
[131586]={
[1]="Banquet Steward",
[2]="Waycrest Manor",
},
[130653]={
[1]="Wanton Sapper",
[2]="The MOTHERLODE!!",
},
[141938]={
[1]="Ashvane Sniper",
[2]="Siege of Boralus",
},
[131666]={
[1]="Coven Thornshaper",
[2]="Waycrest Manor",
},
[134629]={
[1]="Scaled Krolusk Rider",
[2]="Temple of Sethraliss",
},
[136934]={
[1]="Weapons Tester",
[2]="The MOTHERLODE!!",
},
[133463]={
[1]="Venture Co. War Machine",
[2]="The MOTHERLODE!!",
},
[134364]={
[1]="Faithless Tender",
[2]="Temple of Sethraliss",
},
[129526]={
[1]="Bilge Rat Swabby",
[2]="Freehold",
},
[137969]={
[1]="Interment Construct",
[2]="Kings' Rest",
},
[132056]={
[1]="Venture Co. Skyscorcher",
[2]="The MOTHERLODE!!",
},
[131823]={
[1]="Sister Malady",
[2]="Waycrest Manor",
},
[141283]={
[1]="Kul Tiran Halberd",
[2]="Siege of Boralus",
},
[137517]={
[1]="Ashvane Destroyer",
[2]="Siege of Boralus",
},
[135169]={
[1]="Spirit Drain Totem",
[2]="The Underrot",
},
[135049]={
[1]="Dreadwing Raven",
[2]="Waycrest Manor",
},
[129548]={
[1]="Blacktooth Brute",
[2]="Freehold",
},
[131677]={
[1]="Heartsbane Runeweaver",
[2]="Waycrest Manor",
},
[134686]={
[1]="Mature Krolusk",
[2]="Temple of Sethraliss",
},
[133935]={
[1]="Animated Guardian",
[2]="Kings' Rest",
},
[134691]={
[1]="Static-charged Dervish",
[2]="Temple of Sethraliss",
},
[135765]={
[1]="Torrent Totem",
[2]="Kings' Rest",
},
[128652]={
[1]="Viq'Goth",
[2]="Siege of Boralus",
},
[135470]={
[1]="Aka'ali the Conqueror",
[2]="Kings' Rest",
},
[130435]={
[1]="Addled Thug",
[2]="The MOTHERLODE!!",
},
[138493]={
[1]="Minion of Zul",
[2]="Kings' Rest",
},
[137591]={
[1]="Healing Tide Totem",
[2]="Kings' Rest",
},
[134012]={
[1]="Taskmaster Askari",
[2]="The MOTHERLODE!!",
},
[136249]={
[1]="Guardian Elemental",
[2]="Shrine of the Storm",
},
[132126]={
[1]="Gilded Priestess",
[2]="Atal'Dazar",
},
[129214]={
[1]="Coin-Operated Crowd Pummeler",
[2]="The MOTHERLODE!!",
},
[135989]={
[1]="Shieldbearer of Zul",
[2]="Atal'Dazar",
},
[131009]={
[1]="Spirit of Gold",
[2]="Atal'Dazar",
},
[129553]={
[1]="Dinomancer Kish'o",
[2]="Atal'Dazar",
},
[137940]={
[1]="Safety Shark",
[2]="The MOTHERLODE!!",
},
[129371]={
[1]="Riptide Shredder",
[2]="Siege of Boralus",
},
[130522]={
[1]="Freehold Shipmate",
[2]="Freehold",
},
[137521]={
[1]="Irontide Powdershot",
[2]="Siege of Boralus",
},
[139946]={
[1]="Heart Guardian",
[2]="Temple of Sethraliss",
},
[144231]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[135552]={
[1]="Deathtouched Slaver",
[2]="Waycrest Manor",
},
[135562]={
[1]="Venomous Ophidian",
[2]="Temple of Sethraliss",
},
[138254]={
[1]="Irontide Powdershot",
[2]="Siege of Boralus",
},
[132481]={
[1]="Kul Tiran Vanguard",
[2]="Siege of Boralus",
},
[140447]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[139626]={
[1]="Dredged Sailor",
[2]="Shrine of the Storm",
},
[126918]={
[1]="Irontide Crackshot",
[2]="Freehold",
},
[131847]={
[1]="Waycrest Reveler",
[2]="Waycrest Manor",
},
[134417]={
[1]="Deepsea Ritualist",
[2]="Shrine of the Storm",
},
[136083]={
[1]="Forgotten Denizen",
[2]="Shrine of the Storm",
},
[136214]={
[1]="Windspeaker Heldis",
[2]="Shrine of the Storm",
},
[137103]={
[1]="Blood Visage",
[2]="The Underrot",
},
[130012]={
[1]="Irontide Ravager",
[2]="Freehold",
},
[130400]={
[1]="Irontide Crusher",
[2]="Freehold",
},
[133944]={
[1]="Aspix",
[2]="Temple of Sethraliss",
},
[134144]={
[1]="Living Current",
[2]="Shrine of the Storm",
},
[131864]={
[1]="Gorak Tul",
[2]="Waycrest Manor",
},
[129552]={
[1]="Monzumi",
[2]="Atal'Dazar",
},
[138247]={
[1]="Irontide Marauder",
[2]="Siege of Boralus",
},
[133836]={
[1]="Reanimated Guardian",
[2]="The Underrot",
},
[136139]={
[1]="Mechanized Peacekeeper",
[2]="The MOTHERLODE!!",
},
[130437]={
[1]="Mine Rat",
[2]="The MOTHERLODE!!",
},
[129699]={
[1]="Ludwig Von Tortollan",
[2]="Freehold",
},
[138489]={
[1]="Shadow of Zul",
[2]="Kings' Rest",
},
[135239]={
[1]="Spectral Witch Doctor",
[2]="Kings' Rest",
},
[122971]={
[1]="Dazar'ai Juggernaut",
[2]="Atal'Dazar",
},
[127315]={
[1]="Reanimation Totem",
[2]="Atal'Dazar",
},
[136470]={
[1]="Refreshment Vendor",
[2]="The MOTHERLODE!!",
},
[133379]={
[1]="Adderis",
[2]="Temple of Sethraliss",
},
[134139]={
[1]="Shrine Templar",
[2]="Shrine of the Storm",
},
[133663]={
[1]="Fanatical Headhunter",
[2]="The Underrot",
},
[136330]={
[1]="Soul Thorns",
[2]="Waycrest Manor",
},
[135007]={
[1]="Orb Guardian",
[2]="Temple of Sethraliss",
},
[134060]={
[1]="Lord Stormsong",
[2]="Shrine of the Storm",
},
[131402]={
[1]="Underrot Tick",
[2]="The Underrot",
},
[134600]={
[1]="Sandswept Marksman",
[2]="Temple of Sethraliss",
},
[136264]={
[1]="Half-Finished Mummy",
[2]="Kings' Rest",
},
[129559]={
[1]="Cutwater Duelist",
[2]="Freehold",
},
[138465]={
[1]="Ashvane Cannoneer",
[2]="Siege of Boralus",
},
[139110]={
[1]="Spark Channeler",
[2]="Temple of Sethraliss",
},
[122969]={
[1]="Zanchuli Witch-Doctor",
[2]="Atal'Dazar",
},
[138740]={
[1]="Musashitake",
[2]="The Underrot",
},
[135235]={
[1]="Spectral Beastmaster",
[2]="Kings' Rest",
},
[142454]={
[1]="Ashtail Bandicoon",
[2]="Freehold",
},
[129227]={
[1]="Azerokk",
[2]="The MOTHERLODE!!",
},
[131817]={
[1]="Cragmaw the Infested",
[2]="The Underrot",
},
[132491]={
[1]="Kul Tiran Marksman",
[2]="Siege of Boralus",
},
[134423]={
[1]="Abyss Dweller",
[2]="Shrine of the Storm",
},
[132530]={
[1]="Kul Tiran Vanguard",
[2]="Siege of Boralus",
},
[134418]={
[1]="Drowned Depthbringer",
[2]="Shrine of the Storm",
},
[134338]={
[1]="Tidesage Enforcer",
[2]="Shrine of the Storm",
},
[130011]={
[1]="Irontide Buccaneer",
[2]="Freehold",
},
[136552]={
[1]="Kao-Tien Marauder",
[2]="Atal'Dazar",
},
[133685]={
[1]="Befouled Spirit",
[2]="The Underrot",
},
[129602]={
[1]="Irontide Enforcer",
[2]="Freehold",
},
[136005]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[129232]={
[1]="Mogul Razdunk",
[2]="The MOTHERLODE!!",
},
[134612]={
[1]="Grasping Tentacles",
[2]="Shrine of the Storm",
},
[137233]={
[1]="Plague Toad",
[2]="Temple of Sethraliss",
},
[164926]={
[1]="德鲁斯特碎枝者",
[2]="塞兹仙林的迷雾",
},
[130404]={
[1]="Vermin Trapper",
[2]="Freehold",
},
[135365]={
[1]="Matron Alma",
[2]="Waycrest Manor",
},
[134993]={
[1]="Mchimba the Embalmer",
[2]="Kings' Rest",
},
[131825]={
[1]="Sister Briar",
[2]="Waycrest Manor",
},
[134173]={
[1]="Animated Droplet",
[2]="Shrine of the Storm",
},
[137485]={
[1]="Bloodsworn Agent",
[2]="Kings' Rest",
},
[128435]={
[1]="Toxic Saurid",
[2]="Atal'Dazar",
},
[130909]={
[1]="Fetid Maggot",
[2]="The Underrot",
},
[127111]={
[1]="Irontide Oarsman",
[2]="Freehold",
},
[135903]={
[1]="Manifestation of the Deep",
[2]="Shrine of the Storm",
},
[136643]={
[1]="Azerite Extractor",
[2]="The MOTHERLODE!!",
},
[136549]={
[1]="Ashvane Cannoneer",
[2]="Siege of Boralus",
},
[135234]={
[1]="Diseased Mastiff",
[2]="Waycrest Manor",
},
[134994]={
[1]="Spectral Headhunter",
[2]="Kings' Rest",
},
[139425]={
[1]="Crazed Incubator",
[2]="Temple of Sethraliss",
},
[138255]={
[1]="Ashvane Spotter",
[2]="Siege of Boralus",
},
[129598]={
[1]="Freehold Pack Mule",
[2]="Freehold",
},
[133432]={
[1]="Venture Co. Alchemist",
[2]="The MOTHERLODE!!",
},
[131818]={
[1]="Marked Sister",
[2]="Waycrest Manor",
},
[134063]={
[1]="Brother Ironhull",
[2]="Shrine of the Storm",
},
[134390]={
[1]="Sand-crusted Striker",
[2]="Temple of Sethraliss",
},
[126919]={
[1]="Irontide Stormcaller",
[2]="Freehold",
},
[137716]={
[1]="Bottom Feeder",
[2]="The MOTHERLODE!!",
},
[131685]={
[1]="Runic Disciple",
[2]="Waycrest Manor",
},
[129369]={
[1]="Irontide Raider",
[2]="Siege of Boralus",
},
[134232]={
[1]="Hired Assassin",
[2]="The MOTHERLODE!!",
},
[122963]={
[1]="Rezan",
[2]="Atal'Dazar",
},
[134617]={
[1]="Krolusk Hatchling",
[2]="Temple of Sethraliss",
},
[134599]={
[1]="Imbued Stormcaller",
[2]="Temple of Sethraliss",
},
[134251]={
[1]="Seneschal M'bara",
[2]="Kings' Rest",
},
[135167]={
[1]="Spectral Berserker",
[2]="Kings' Rest",
},
[134157]={
[1]="Shadow-Borne Warrior",
[2]="Kings' Rest",
},
[127799]={
[1]="Dazar'ai Honor Guard",
[2]="Atal'Dazar",
},
[139800]={
[1]="Galecaller Apprentice",
[2]="Shrine of the Storm",
},
[135761]={
[1]="Thundering Totem",
[2]="Kings' Rest",
},
[135764]={
[1]="Explosive Totem",
[2]="Kings' Rest",
},
[140038]={
[1]="Abyssal Eel",
[2]="Shrine of the Storm",
},
[129367]={
[1]="Bilge Rat Tempest",
[2]="Siege of Boralus",
},
[141284]={
[1]="Kul Tiran Wavetender",
[2]="Siege of Boralus",
},
[139949]={
[1]="Plague Doctor",
[2]="Temple of Sethraliss",
},
[128551]={
[1]="Irontide Mastiff",
[2]="Freehold",
},
[134158]={
[1]="Shadow-Borne Champion",
[2]="Kings' Rest",
},
[122973]={
[1]="Dazar'ai Confessor",
[2]="Atal'Dazar",
},
[164920]={
[1]="德鲁斯特斩魂者",
[2]="塞兹仙林的迷雾",
},
[131850]={
[1]="Maddened Survivalist",
[2]="Waycrest Manor",
},
[134056]={
[1]="Aqu'sirr",
[2]="Shrine of the Storm",
},
[126848]={
[1]="Captain Eudora",
[2]="Freehold",
},
[129600]={
[1]="Bilge Rat Brinescale",
[2]="Freehold",
},
[131849]={
[1]="Crazed Marksman",
[2]="Waycrest Manor",
},
[122967]={
[1]="Priestess Alun'za",
[2]="Atal'Dazar",
},
[134174]={
[1]="Shadow-Borne Witch Doctor",
[2]="Kings' Rest",
},
[137830]={
[1]="Pallid Gorger",
[2]="Waycrest Manor",
},
[134701]={
[1]="Blood Effigy",
[2]="The Underrot",
},
[127106]={
[1]="Irontide Officer",
[2]="Freehold",
},
[129599]={
[1]="Cutwater Knife Juggler",
[2]="Freehold",
},
[129547]={
[1]="Blacktooth Knuckleduster",
[2]="Freehold",
},
[130896]={
[1]="Blackout Barrel",
[2]="Freehold",
},
[130521]={
[1]="Freehold Deckhand",
[2]="Freehold",
},
[136160]={
[1]="King Dazar",
[2]="Kings' Rest",
},
[133482]={
[1]="Crawler Mine",
[2]="The MOTHERLODE!!",
},
[122986]={
[1]="Wild Skyscreamer",
[2]="Atal'Dazar",
},
[133436]={
[1]="Venture Co. Skyscorcher",
[2]="The MOTHERLODE!!",
},
[122972]={
[1]="Dazar'ai Augur",
[2]="Atal'Dazar",
},
[126023]={
[1]="Harbor Saurid",
[2]="The Underrot",
},
[132532]={
[1]="Kul Tiran Marksman",
[2]="Siege of Boralus",
},
[138187]={
[1]="Grotesque Horror",
[2]="The Underrot",
},
[137614]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[137487]={
[1]="Skeletal Hunting Raptor",
[2]="Kings' Rest",
},
[135192]={
[1]="Honored Raptor",
[2]="Kings' Rest",
},
[137478]={
[1]="Queen Wasi",
[2]="Kings' Rest",
},
[136976]={
[1]="T'zala",
[2]="Kings' Rest",
},
[129372]={
[1]="Blacktar Bomber",
[2]="Siege of Boralus",
},
[134005]={
[1]="Shalebiter",
[2]="The MOTHERLODE!!",
},
[128969]={
[1]="Ashvane Commander",
[2]="Siege of Boralus",
},
[135241]={
[1]="Bilge Rat Pillager",
[2]="Siege of Boralus",
},
[131670]={
[1]="Heartsbane Vinetwister",
[2]="Waycrest Manor",
},
[131545]={
[1]="Lady Waycrest",
[2]="Waycrest Manor",
},
[125977]={
[1]="Reanimation Totem",
[2]="Atal'Dazar",
},
[136295]={
[1]="Sunken Denizen",
[2]="Shrine of the Storm",
},
[133943]={
[1]="Minion of Zul",
[2]="Kings' Rest",
},
[134137]={
[1]="Temple Attendant",
[2]="Shrine of the Storm",
},
[134990]={
[1]="Charged Dust Devil",
[2]="Temple of Sethraliss",
},
[139422]={
[1]="Scaled Krolusk Tamer",
[2]="Temple of Sethraliss",
},
[127119]={
[1]="Freehold Deckhand",
[2]="Freehold",
},
[134041]={
[1]="Infected Peasant",
[2]="Waycrest Manor",
},
[131863]={
[1]="Raal the Gluttonous",
[2]="Waycrest Manor",
},
[131383]={
[1]="Sporecaller Zancha",
[2]="The Underrot",
},
[131587]={
[1]="Bewitched Captain",
[2]="Waycrest Manor",
},
[133912]={
[1]="Bloodsworn Defiler",
[2]="The Underrot",
},
[131824]={
[1]="Sister Solena",
[2]="Waycrest Manor",
},
[137405]={
[1]="Gripping Terror",
[2]="Siege of Boralus",
},
[1860]={
[1]="Graz'krast",
[2]="Shrine of the Storm",
},
[135240]={
[1]="Soul Essence",
[2]="Waycrest Manor",
},
[139269]={
[1]="Gloom Horror",
[2]="Waycrest Manor",
},
[129550]={
[1]="Bilge Rat Padfoot",
[2]="Freehold",
},
[136347]={
[1]="Tidesage Initiate",
[2]="Shrine of the Storm",
},
[135975]={
[1]="Off-Duty Laborer",
[2]="The MOTHERLODE!!",
},
[133835]={
[1]="Feral Bloodswarmer",
[2]="The Underrot",
},
[127124]={
[1]="Freehold Barhand",
[2]="Freehold",
},
[133007]={
[1]="Unbound Abomination",
[2]="The Underrot",
},
[126928]={
[1]="Irontide Corsair",
[2]="Freehold",
},
[133430]={
[1]="Venture Co. Mastermind",
[2]="The MOTHERLODE!!",
},
[132051]={
[1]="Blood Tick",
[2]="The Underrot",
},
[134991]={
[1]="Sandfury Stonefist",
[2]="Temple of Sethraliss",
},
[133345]={
[1]="Feckless Assistant",
[2]="The MOTHERLODE!!",
},
[164921]={
[1]="德鲁斯特收割者",
[2]="塞兹仙林的迷雾",
},
[130024]={
[1]="Soggy Shiprat",
[2]="Freehold",
},
[165111]={
[1]="德鲁斯特恶爪者",
[2]="塞兹仙林的迷雾",
},
[139097]={
[1]="Sandswept Marksman",
[2]="Temple of Sethraliss",
},
[136297]={
[1]="Forgotten Denizen",
[2]="Shrine of the Storm",
},
[136483]={
[1]="Ashvane Deckhand",
[2]="Siege of Boralus",
},
[131585]={
[1]="Enthralled Guard",
[2]="Waycrest Manor",
},
[131669]={
[1]="Jagged Hound",
[2]="Waycrest Manor",
},
[138061]={
[1]="Venture Co. Longshoreman",
[2]="The MOTHERLODE!!",
},
[132713]={
[1]="Mogul Razdunk",
[2]="The MOTHERLODE!!",
},
[126847]={
[1]="Captain Raoul",
[2]="Freehold",
},
[138464]={
[1]="Ashvane Deckhand",
[2]="Siege of Boralus",
},
[122984]={
[1]="Dazar'ai Colossus",
[2]="Atal'Dazar",
},
[137204]={
[1]="Hoodoo Hexer",
[2]="Temple of Sethraliss",
},
[137473]={
[1]="Guard Captain Atu",
[2]="Kings' Rest",
},
[137474]={
[1]="King Timalji",
[2]="Kings' Rest",
},
[138369]={
[1]="Footbomb Hooligan",
[2]="The MOTHERLODE!!",
},
[141566]={
[1]="Scrimshaw Gutter",
[2]="Siege of Boralus",
},
[133870]={
[1]="Diseased Lasher",
[2]="The Underrot",
},
[130489]={
[1]="Dazarian Stalker",
[2]="Freehold",
},
[130575]={
[1]="Wandering Axebeak",
[2]="Atal'Dazar",
},
},
["health_selection_overlay_alpha"]=0.29999998211861,
["first_run2"]=true,
["aura_alpha"]=1,
},
},
["captured_spells"]={
[264667]={
["event"]="SPELL_AURA_APPLIED",
["type"]="BUFF",
["source"]="未知目标",
["npcID"]=165189,
},
[205644]={
["source"]="树人",
["npcID"]=103822,
["event"]="SPELL_AURA_APPLIED",
["type"]="DEBUFF",
},
[322765]={
["source"]="野枝符文牡鹿",
["type"]="BUFF",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=172934,
},
[322745]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=172934,
["source"]="野枝符文牡鹿",
},
},
["captured_casts"]={
[322745]={
["npcID"]=172934,
},
[323229]={
["npcID"]=172934,
},
},
["profileKeys"]={
["Magiccream - 格雷迈恩"]="MyNewProfile",
["Magiccreamdk - 格雷迈恩"]="MyNewProfile",
},
}