
PlaterDB = {
["captured_casts"]={
[322745]={
["npcID"]=172934,
},
[323229]={
["npcID"]=172934,
},
},
["profileKeys"]={
["芃芃其麦 - 格雷迈恩"]="MyNewProfile",
["Magiccream - 格雷迈恩"]="MyNewProfile",
["Magiccreamdk - 格雷迈恩"]="MyNewProfile",
},
["profiles"]={
["Default"]={
["aura_timer"]=false,
["number_region_first_run"]=true,
["aura_y_offset"]=5,
["aura2_x_offset"]=0,
["aura2_y_offset"]=5,
["script_data"]={
[1]={
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
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
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
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
["Desc"]="",
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
},
[6]={
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
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
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
["Name"]="Dots Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="dotsColor",
},
},
["Author"]="Tercioo-Sylvanas",
["NpcNames"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
    \
end",
["Time"]=1605214963,
["Revision"]=607,
["semver"]="",
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
["Desc"]="Add the buff name in the trigger box.",
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
["ScriptType"]=1,
["url"]="",
["Enabled"]=true,
["PlaterCore"]=1,
},
[2]={
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
["url"]="",
["Icon"]=2175503,
["SpellIds"]={
[1]=240446,
},
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
["Value"]="Plays a special animation showing the explosion time.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
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
["Value"]=3,
["Max"]=6,
["Min"]=0,
["Desc"]="Increases the cast bar height by this value",
},
[5]={
["Desc"]="Changes the cast bar color to this one.",
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
["Type"]=5,
["Key"]="option6",
["Value"]="Arrow:",
["Name"]="Arrow:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[8]={
["Value"]=true,
["Name"]="Show Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show an arrow above the nameplate showing the cast bar progress.",
["Type"]=4,
["Key"]="showArrow",
},
[9]={
["Min"]=0,
["Key"]="arrowAlpha",
["Type"]=2,
["Desc"]="Arrow alpha.",
["Max"]=1,
["Name"]="Arrow Alpha",
["Fraction"]=true,
["Value"]=0.5,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Min"]=4,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Arrow Width",
["Type"]=2,
["Desc"]="Arrow Width.",
["Key"]="arrowWidth",
["Max"]=12,
["Value"]=8,
["Fraction"]=false,
},
[11]={
["Max"]=12,
["Min"]=4,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Fraction"]=false,
["Name"]="Arrow Height",
["Key"]="arrowHeight",
["Desc"]="Arrow Height.",
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
["Value"]="Dot Animation:",
["Name"]="Dot Animation:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option12",
},
[14]={
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
["Key"]="dotColor",
},
[15]={
["Value"]=4,
["Max"]=10,
["Key"]="xOffset",
["Desc"]="Dot X Offset",
["Name"]="Dot X Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Min"]=-10,
},
[16]={
["Fraction"]=false,
["Name"]="Dot Y Offset",
["Max"]=10,
["Desc"]="Dot Y Offset",
["Key"]="yOffset",
["Value"]=3,
["Type"]=2,
["Min"]=-10,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["ScriptType"]=2,
["Name"]="Explosion Affix M+ [Plater]",
["Desc"]="Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
["Time"]=1604698647,
["Enabled"]=true,
["Revision"]=462,
["NpcNames"]={
},
["Author"]="Bombad�o-Azralon",
["version"]=-1,
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
},
[3]={
["NpcNames"]={
},
["Author"]="Tercioo-Sylvanas",
["Options"]={
[1]={
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option1",
},
[2]={
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
},
[3]={
["Type"]=6,
["Key"]="option3",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
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
["Desc"]="",
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
["Key"]="dotsEnabled",
["Value"]=true,
["Name"]="Dots Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
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
["Time"]=1604454032,
["url"]="",
["Enabled"]=true,
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
end\
\
\
",
["semver"]="",
["Revision"]=351,
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
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Name"]="Aura - Debuff Alert [Plater]",
["ScriptType"]=1,
["PlaterCore"]=1,
},
[4]={
["OptionsValues"]={
},
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["version"]=-1,
["PlaterCore"]=1,
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
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Cast start animation settings",
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
["Key"]="flashDuration",
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Fraction"]=true,
["Name"]="Flash Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=1,
},
[8]={
["Type"]=2,
["Name"]="Cast Bar Height Mod",
["Value"]=5,
["Desc"]="Increases the cast bar height by this value",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="castBarHeight",
["Max"]=10,
["Min"]=0,
},
[9]={
["Name"]="Shake Duration",
["Min"]=0.1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
["Max"]=1,
["Value"]=0.2,
["Key"]="shakeDuration",
["Type"]=2,
},
[10]={
["Max"]=100,
["Desc"]="How strong is the shake.",
["Value"]=8,
["Fraction"]=false,
["Key"]="shakeAmplitude",
["Min"]=2,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
},
[11]={
["Max"]=80,
["Key"]="shakeFrequency",
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Value"]=40,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=1,
["Name"]="Shake Frequency",
},
[12]={
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
[1]="355571",
[2]="14",
},
},
["Name"]="Timer (Key is SpellId and Value is Time)",
},
},
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
["semver"]="",
["url"]="",
["Time"]=1625698948,
["SpellIds"]={
[1]=350421,
[2]=355571,
[3]=355787,
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
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
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["NpcNames"]={
},
["Name"]="Cast - Alert + Timer [P]",
["Revision"]=1138,
["Author"]="Tercioo-Sylvanas",
["ScriptType"]=2,
["Enabled"]=true,
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_red",
["SpellIds"]={
[1]=332329,
[2]=320103,
[3]=321406,
[4]=335817,
[5]=321061,
[6]=320141,
[7]=326171,
},
["Revision"]=513,
["semver"]="",
["ScriptType"]=2,
["Author"]="Bombad�o-Azralon",
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
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
["Desc"]="",
["Type"]=6,
["Name"]="Option 3",
["Value"]=0,
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[4]={
["Type"]=2,
["Max"]=6,
["Desc"]="Increases the health bar height by this value",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0,
["Fraction"]=false,
["Value"]=3,
["Key"]="castBarHeight",
["Name"]="Health Bar Height Mod",
},
[5]={
["Desc"]="Changes the health bar color to this one.",
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
},
[6]={
["Type"]=6,
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Value"]="Arrow:",
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Arrow:",
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
["Value"]=0.5,
["Name"]="Arrow Alpha",
["Key"]="arrowAlpha",
["Type"]=2,
["Desc"]="Arrow alpha.",
["Min"]=0,
["Fraction"]=true,
["Max"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=12,
["Min"]=4,
["Key"]="arrowWidth",
["Name"]="Arrow Width",
["Fraction"]=false,
["Type"]=2,
["Desc"]="Arrow Width.",
},
[11]={
["Max"]=12,
["Fraction"]=false,
["Desc"]="Arrow Height.",
["Min"]=4,
["Value"]=8,
["Name"]="Arrow Height",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Key"]="arrowHeight",
},
[12]={
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
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
["Max"]=10,
["Desc"]="Dot X Offset",
["Value"]=4,
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=-10,
["Name"]="Dot X Offset",
["Fraction"]=false,
["Key"]="xOffset",
},
[16]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Dot Y Offset",
["Max"]=10,
["Min"]=-10,
["Value"]=3,
["Name"]="Dot Y Offset",
["Key"]="yOffset",
["Fraction"]=false,
["Type"]=2,
},
},
["NpcNames"]={
},
["version"]=-1,
["Enabled"]=true,
["PlaterCore"]=1,
["Time"]=1604617977,
["Desc"]="Used on casts that make the mob explode or transform if the cast passes.",
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
["Name"]="Cast - Ultra Important [P]",
["url"]="",
},
[6]={
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
["ScriptType"]=2,
["Revision"]=595,
["Author"]="Tercioo-Sylvanas",
["Time"]=1604617585,
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["NpcNames"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    \
    \
end\
\
\
",
["url"]="",
["PlaterCore"]=1,
["Name"]="Cast - Small Alert [Plater]",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
["semver"]="",
["Enabled"]=true,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Play()\
    \
end\
\
\
",
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
["Value"]=0.6,
["Type"]=2,
["Key"]="flashDuration",
["Name"]="Flash Duration",
["Desc"]="How long is the flash played when the cast starts.",
["Fraction"]=true,
["Min"]=0.1,
["Max"]=1.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
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
},
[7]={
["Author"]="Izimode-Azralon",
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
["NpcNames"]={
[1]="156212",
[2]="168098",
[3]=179124,
},
["url"]="",
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
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 6",
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
["Fraction"]=false,
["Max"]=6,
["Value"]=0,
["Name"]="Nameplate Size Offset",
["Type"]=2,
["Min"]=0,
["Key"]="nameplateSizeOffset",
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
["Desc"]="",
["Type"]=1,
["Name"]="Dot Color",
["Value"]={
[1]=1,
[2]=0.71372549019608,
[3]=0,
[4]=1,
},
["Key"]="dotsColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[9]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
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
["Enabled"]=true,
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["PlaterCore"]=1,
["SpellIds"]={
},
["version"]=-1,
["semver"]="",
["Name"]="Unit - Main Target [P]",
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
["Revision"]=406,
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
},
[8]={
["Name"]="Aura - Blink by Time Left [Plater]",
["version"]=-1,
["Author"]="Izimode-Azralon",
["PlaterCore"]=1,
["semver"]="",
["ScriptType"]=1,
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option10",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
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
["Key"]="glowEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable glows",
["Type"]=4,
["Name"]="Glow Enabled",
["Value"]=true,
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
["Value"]=3,
["Type"]=2,
["Max"]=20,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="timeleftToBlink",
["Desc"]="in seconds, affects the blink effect only",
["Min"]=1,
["Name"]="Timeleft to Blink",
["Fraction"]=true,
},
[8]={
["Key"]="blinkSpeed",
["Type"]=2,
["Name"]="Blink Speed",
["Value"]=1,
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0.5,
["Max"]=3,
["Desc"]="time to complete a blink loop",
},
[9]={
["Max"]=1,
["Fraction"]=true,
["Key"]="blinkMaxAlpha",
["Min"]=0.1,
["Name"]="Blink Max Alpha",
["Value"]=0.6,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="max transparency in the animation loop (1.0 is full opaque)",
},
[10]={
["Name"]="Blink Color",
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
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option10",
["Value"]=0,
},
[13]={
["Value"]=true,
["Key"]="timerColorEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable changes in the color of the time left text",
["Type"]=4,
["Name"]="Timer Color Enabled",
},
[14]={
["Max"]=20,
["Fraction"]=true,
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="timeLeftWarning",
["Min"]=1,
["Type"]=2,
["Desc"]="in seconds, affects the color of the text",
["Name"]="Time Left Warning",
},
[15]={
["Max"]=10,
["Min"]=1,
["Fraction"]=true,
["Value"]=3,
["Key"]="timeLeftCritical",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="in seconds, affects the color of the text",
["Type"]=2,
["Name"]="Time Left Critical",
},
[16]={
["Value"]={
[1]=1,
[2]=0.87058823529412,
[3]=0,
[4]=1,
},
["Key"]="warningColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color when the time left entered in a warning zone",
["Type"]=1,
["Name"]="Warning Color",
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["SpellIds"]={
},
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
["Time"]=1611856720,
["Enabled"]=true,
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
["Revision"]=369,
["url"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_blink",
["Desc"]="Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
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
},
[9]={
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["Name"]="Unit - Health Markers [P]",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Enabled"]=true,
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
["SpellIds"]={
},
["ScriptType"]=3,
["Revision"]=109,
["NpcNames"]={
[1]="164451",
[2]="164463",
[3]="164461",
[4]="165946",
[5]="164501",
[6]="164218",
},
["semver"]="",
["version"]=-1,
["Options"]={
[1]={
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 1",
["Value"]="Add markers into the health bar to remind you about boss abilities at life percent.",
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
["Type"]=1,
},
[4]={
["Desc"]="Indicator alpha.",
["Value"]=0.79,
["Key"]="indicatorAlpha",
["Fraction"]=true,
["Name"]="Vertical Line Alpha",
["Type"]=2,
["Max"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0.1,
},
[5]={
["Type"]=6,
["Key"]="",
["Value"]=0,
["Name"]="blank line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
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
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Fill Alpha",
["Type"]=2,
["Max"]=1,
["Key"]="fillAlpha",
["Desc"]="Fill alpha.",
["Value"]=0.2,
["Fraction"]=true,
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
["Icon"]="Interface\\AddOns\\Plater\\images\\health_indicator",
["Desc"]="Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["url"]="",
["Author"]="Aelerolor-Torghast",
["PlaterCore"]=1,
},
[10]={
["version"]=-1,
["Author"]="Tercioo-Sylvanas",
["NpcNames"]={
},
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
["Desc"]="Cast alert for abilities which only the tank can interrupt.",
["SpellIds"]={
[1]=321828,
},
["ScriptType"]=2,
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
["semver"]="",
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
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
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
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[5]={
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
},
[6]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
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
},
[7]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
},
[8]={
["Value"]=0.2,
["Name"]="Flash Duration",
["Type"]=2,
["Fraction"]=true,
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[9]={
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Cast Bar Height Mod",
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Fraction"]=false,
["Key"]="castBarHeight",
["Max"]=10,
["Value"]=0,
},
[10]={
["Min"]=0.1,
["Key"]="shakeDuration",
["Value"]=0.1,
["Name"]="Shake Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
},
[11]={
["Fraction"]=false,
["Type"]=2,
["Name"]="Shake Amplitude",
["Min"]=10,
["Value"]=25,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
["Max"]=200,
["Desc"]="How strong is the shake.",
},
[12]={
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Name"]="Shake Frequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=30,
["Key"]="shakeFrequency",
["Max"]=80,
["Fraction"]=false,
},
},
["Name"]="Cast - Tank Interrupt [P]",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["Time"]=1618996775,
["Enabled"]=true,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Revision"]=843,
},
[11]={
["ScriptType"]=2,
["PlaterCore"]=1,
["Author"]="Bombad�o-Azralon",
["version"]=-1,
["semver"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_target",
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
["NpcNames"]={
},
["Time"]=1625696653,
["Revision"]=836,
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
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
["Desc"]="",
["Type"]=6,
["Name"]="Option 4",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
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
["Value"]=0.8,
["Key"]="flashDuration",
["Desc"]="How long is the flash played when the cast starts.",
["Type"]=2,
["Max"]=1.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Min"]=0.1,
["Fraction"]=true,
},
[7]={
["Key"]="flashColor",
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
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[10]={
["Type"]=2,
["Max"]=0.5,
["Name"]="Shake Duration",
["Min"]=0.1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Fraction"]=true,
["Value"]=0.2,
["Key"]="shakeDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[11]={
["Name"]="Shake Amplitude",
["Fraction"]=false,
["Value"]=5,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=1,
["Key"]="shakeAmplitude",
["Max"]=10,
["Desc"]="How strong is the shake.",
["Type"]=2,
},
[12]={
["Fraction"]=false,
["Value"]=40,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Key"]="shakeFrequency",
["Desc"]="How fast the shake moves.",
["Name"]="Shake Frequency",
["Max"]=80,
["Min"]=1,
},
[13]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
},
[14]={
["Desc"]="",
["Type"]=5,
["Name"]="Dot Animation",
["Value"]="Dot Animation:",
["Key"]="option14",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
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
["Type"]=2,
["Max"]=20,
["Key"]="xOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Min"]=-10,
["Fraction"]=false,
["Name"]="Dot X Offset",
["Value"]=8,
},
[17]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Name"]="Dot Y Offset",
["Value"]=3,
["Fraction"]=false,
["Type"]=2,
["Min"]=-10,
["Key"]="yOffset",
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
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
},
[20]={
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
},
[21]={
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
},
[22]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
["Key"]="option18",
},
[23]={
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[24]={
["Value"]="Cast Bar",
["Key"]="option19",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 19",
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
["Value"]={
[1]=0.41176470588235,
[2]=1,
[3]=0,
[4]=1,
},
["Key"]="castBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Cast bar color.",
["Type"]=1,
["Name"]="Cast Bar Color",
},
[27]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option27",
["Value"]=0,
["Name"]="Option 27",
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
["Key"]="targetNameSize",
["Name"]="Text Size",
["Max"]=32,
["Desc"]="",
["Min"]=8,
["Value"]=14,
["Type"]=2,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[30]={
["Key"]="colorByClass",
["Value"]=true,
["Name"]="Use Class Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
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
["Type"]=1,
["Key"]="targetBgColor",
["Value"]={
[1]=0,
[2]=0,
[3]=0,
[4]=0.98467203229666,
},
["Name"]="Background Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
},
[33]={
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
["Name"]="Border Color",
},
[34]={
["Type"]=2,
["Min"]=30,
["Fraction"]=false,
["Desc"]="",
["Value"]=90,
["Name"]="Frame Width",
["Max"]=160,
["Key"]="targetFrameWidth",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[35]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Frame Height",
["Value"]=20,
["Max"]=32,
["Desc"]="",
["Min"]=8,
["Fraction"]=false,
["Type"]=2,
["Key"]="targetFrameHeight",
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
["Enabled"]=true,
["SpellIds"]={
[1]=354173,
},
["Desc"]="Highlight the target name",
},
[12]={
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
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 4",
["Value"]=0,
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
["Desc"]="How long is the flash played when the cast starts.",
["Value"]=0.8,
["Type"]=2,
["Name"]="Flash Duration",
["Key"]="flashDuration",
["Max"]=1.2,
["Min"]=0.1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
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
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
},
[10]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Fraction"]=true,
["Name"]="Shake Duration",
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
["Type"]=2,
["Max"]=0.5,
["Value"]=0.2,
},
[11]={
["Fraction"]=false,
["Value"]=5,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="How strong is the shake.",
["Max"]=10,
["Min"]=1,
["Key"]="shakeAmplitude",
},
[12]={
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Name"]="Shake Frequency",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=80,
["Fraction"]=false,
["Value"]=40,
["Key"]="shakeFrequency",
},
[13]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
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
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=-10,
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Name"]="Dot X Offset",
["Key"]="xOffset",
["Type"]=2,
["Max"]=20,
["Value"]=8,
},
[17]={
["Type"]=2,
["Max"]=10,
["Value"]=3,
["Name"]="Dot Y Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="yOffset",
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
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[20]={
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
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
["Value"]=0,
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 19",
["Value"]="Cast Bar",
["Key"]="option19",
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
["semver"]="",
["version"]=-1,
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
["Author"]="Bombad�o-Azralon",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["ScriptType"]=2,
["NpcNames"]={
},
["Revision"]=717,
["url"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
["Desc"]="Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["PlaterCore"]=1,
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
["Time"]=1618996917,
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
},
[13]={
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.CheckMark (unitId, unitFrame)\
end\
\
\
",
["Author"]="Aelerolor-Torghast",
["url"]="",
["Desc"]="Auto set skull marker",
["PlaterCore"]=1,
["Icon"]="Interface\\Worldmap\\GlowSkull_64Grey",
["NpcNames"]={
[1]="163520",
[2]="163618",
[3]="164506",
},
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
["Name"]="Auto Set Skull",
["SpellIds"]={
},
["ScriptType"]=3,
["Enabled"]=false,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Revision"]=63,
["semver"]="",
["version"]=-1,
["Time"]=1604696441,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Options"]={
[1]={
["Desc"]="",
["Type"]=5,
["Key"]="option1",
["Value"]="Auto set a raid target Skull on the unit.",
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[2]={
["Value"]=0,
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option2",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Set the mark only if the unit is in combat.",
["Type"]=4,
["Key"]="onlyInCombat",
["Value"]=false,
["Name"]="Only in Combat",
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
[14]={
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
["Desc"]="",
["Type"]=5,
["Key"]="option6",
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Name"]="Option 6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="change to true to change the color",
["Type"]=4,
["Key"]="changeNameplateColor",
["Value"]=true,
["Name"]="Change Nameplate Color",
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
["Key"]="nameplateSizeOffset",
["Type"]=2,
["Min"]=0,
["Max"]=6,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Value"]=3,
["Name"]="Nameplate Size Offset",
["Desc"]="increase the nameplate height by this value",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
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
["Name"]="Skull Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="skullColor",
["Value"]={
[1]=1,
[2]=0.46274509803922,
[3]=0,
[4]=1,
},
},
[12]={
["Max"]=1,
["Name"]="Alpha",
["Key"]="skullAlpha",
["Value"]=0.2,
["Type"]=2,
["Desc"]="",
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
},
[13]={
["Value"]=0.6,
["Min"]=0.4,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Scale",
["Type"]=2,
["Max"]=2,
["Desc"]="",
["Key"]="skullScale",
["Fraction"]=true,
},
},
["Revision"]=355,
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
["Enabled"]=true,
["SpellIds"]={
},
["ScriptType"]=3,
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["version"]=-1,
["Time"]=1604599472,
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
["Author"]="Izimode-Azralon",
["semver"]="",
["NpcNames"]={
[1]="164362",
[2]="168882",
[3]="168988",
[4]="170234",
[5]="165905",
[6]="170452",
},
["Name"]="Unit - Important [Plater]",
["url"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
},
[15]={
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Name"]="Countdown",
["Time"]=1604354364,
["NpcNames"]={
[1]="164427",
[2]="164414",
[3]="164185",
[4]="164567",
[5]="165408",
},
["SpellIds"]={
},
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
["Author"]="Aelerolor-Torghast",
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
["PlaterCore"]=1,
["Enabled"]=true,
["url"]="",
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
["semver"]="",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    Plater.ClearAltCastBar(unitFrame.PlateFrame)\
end",
["version"]=-1,
["Options"]={
},
["ScriptType"]=3,
["Revision"]=206,
["Icon"]="Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
["Desc"]="Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
},
[16]={
["Name"]="Cast - Frontal Cone [Plater]",
["version"]=-1,
["Time"]=1604599443,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["url"]="",
["Enabled"]=true,
["Author"]="Izimode-Azralon",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
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
["ScriptType"]=2,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end",
["Options"]={
[1]={
["Value"]=0,
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option1",
},
[2]={
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Produces an effect to indicate the spell will hit players in front of the enemy.",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
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
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[5]={
["Max"]=1,
["Name"]="Arrow Alpha",
["Key"]="arrowAlpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=0.275,
["Fraction"]=true,
["Desc"]="Set the alpha of the moving arrow",
["Min"]=0,
},
[6]={
["Key"]="animSpeed",
["Fraction"]=true,
["Name"]="Animation Speed",
["Max"]=1,
["Desc"]="Time that takes for an arrow to travel from the to right.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Min"]=0,
["Value"]=0.2,
},
[7]={
["Type"]=4,
["Key"]="desaturateArrow",
["Value"]=false,
["Name"]="Use White Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the arrow color will be desaturated.",
},
},
["Desc"]="Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
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
["Revision"]=460,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
},
[17]={
["Options"]={
},
["Desc"]="Show above the nameplate who is the player fixated",
["SpellIds"]={
},
["NpcNames"]={
[1]="165560",
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["version"]=-1,
["Icon"]=1029718,
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
["url"]="",
["Time"]=1604239880,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["PlaterCore"]=1,
["Name"]="Fixate [Plater]",
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
["Author"]="Celian-Sylvanas",
["semver"]="",
["Enabled"]=true,
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
},
[18]={
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
["PlaterCore"]=1,
["version"]=-1,
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Author"]="Tercioo-Sylvanas",
["Revision"]=1060,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["Time"]=1618996691,
["NpcNames"]={
},
["Name"]="Cast - Big Alert [Plater]",
["url"]="",
["Enabled"]=true,
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
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
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
},
[5]={
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
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
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Value"]=0.4,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Fraction"]=true,
["Min"]=0.05,
["Max"]=1,
},
[9]={
["Type"]=2,
["Max"]=10,
["Key"]="castBarHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Increases the cast bar height by this value",
["Value"]=5,
["Name"]="Cast Bar Height Mod",
["Fraction"]=false,
["Min"]=0,
},
[10]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Min"]=0.1,
["Value"]=0.2,
["Name"]="Shake Duration",
["Fraction"]=true,
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
},
[11]={
["Type"]=2,
["Max"]=100,
["Desc"]="How strong is the shake.",
["Min"]=2,
["Key"]="shakeAmplitude",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=8,
["Name"]="Shake Amplitude",
},
[12]={
["Name"]="Shake Frequency",
["Max"]=80,
["Value"]=40,
["Desc"]="How fast the shake moves.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeFrequency",
["Fraction"]=false,
["Type"]=2,
["Min"]=1,
},
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["semver"]="",
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
["PlaterCore"]=1,
["ScriptType"]=3,
["Time"]=1611844883,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
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
["Enabled"]=true,
["Desc"]="Time to die Spiteful affix",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
["Options"]={
[1]={
["Name"]="Time to Die",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option12",
["Value"]="Time to Die",
},
[2]={
["Desc"]="",
["Key"]="bgWidth",
["Name"]="Width",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Max"]=50,
["Min"]=10,
["Value"]=27,
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
["Max"]=24,
["Desc"]="",
["Name"]="Text Size",
["Min"]=7,
["Key"]="textSize",
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=8,
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
["Name"]="Option 7",
["Value"]=0,
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[7]={
["Key"]="option11",
["Value"]="Targeting",
["Name"]="Targeting",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[8]={
["Key"]="switchTargetName",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Name"]="Show Target instead of Name",
["Value"]=true,
},
[9]={
["Value"]=true,
["Key"]="useTargetingColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Name"]="Change Color if targeting You",
},
[10]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
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
},
[11]={
["Desc"]="",
["Type"]=6,
["Key"]="option11",
["Value"]=0,
["Name"]="Option 11",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
},
["url"]="",
["SpellIds"]={
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
["semver"]="",
["NpcNames"]={
[1]="174773",
},
["Author"]="Symantec-Azralon",
["version"]=-1,
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
["Name"]="M+ Spiteful",
},
[20]={
["Revision"]=233,
["SpellIds"]={
},
["Name"]="Unit - Show Energy [Plater]",
["version"]=-1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Hide()\
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
["Icon"]=136048,
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
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["Time"]=1604357453,
["semver"]="",
["NpcNames"]={
[1]="164406",
[2]="164407",
[3]="162100",
[4]="162099",
[5]="162329",
[6]="164558",
},
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Show the energy amount above the nameplate.",
["PlaterCore"]=1,
["Author"]="Celian-Sylvanas",
["ScriptType"]=3,
["url"]="",
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
["Key"]="option3",
["Value"]="Show the power of the unit above the nameplate.",
["Name"]="script desc",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Type"]=5,
["Name"]="add trigger",
["Value"]="Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
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
["Type"]=6,
["Name"]="Option 2",
["Value"]=0,
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[7]={
["Fraction"]=false,
["Max"]=32,
["Min"]=8,
["Desc"]="Text size.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Value"]=16,
["Key"]="fontSize",
["Name"]="Text Size",
},
[8]={
["Name"]="Font Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the text.",
["Type"]=1,
["Key"]="fontColor",
["Value"]={
[1]=0.80392156862745,
[2]=0.80392156862745,
[3]=0.80392156862745,
[4]=1,
},
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
["Enabled"]=true,
},
[21]={
["PlaterCore"]=1,
["Enabled"]=true,
["Time"]=1604087921,
["Author"]="Tecno-Azralon",
["version"]=-1,
["ScriptType"]=3,
["Revision"]=266,
["Desc"]="When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
["Name"]="Fixate On You [Plater]",
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
["url"]="",
["semver"]="",
["Options"]={
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
["Icon"]=841383,
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
},
},
["saved_cvars"]={
["nameplateShowFriendlyGuardians"]="0",
["NamePlateHorizontalScale"]="1",
["nameplateMinScale"]="1",
["nameplateMotionSpeed"]="0.05",
["NamePlateClassificationScale"]="1",
["nameplateShowEnemyMinions"]="1",
["nameplateShowFriendlyNPCs"]="0",
["nameplateLargeTopInset"]="0.085",
["NamePlateVerticalScale"]="1",
["nameplatePersonalHideDelaySeconds"]="0.2",
["nameplateOtherTopInset"]="0.085",
["nameplateShowAll"]="1",
["nameplateShowFriendlyMinions"]="0",
["nameplateResourceOnTarget"]="0",
["nameplateMaxDistance"]="100",
["nameplateShowEnemyMinus"]="1",
["nameplateTargetBehindMaxDistance"]="30",
["nameplateSelectedScale"]="1.15",
["clampTargetNameplateToScreen"]="1",
["nameplateShowFriendlyPets"]="0",
["ShowNamePlateLoseAggroFlash"]="1",
["nameplateSelectedAlpha"]="1",
["ShowClassColorInNameplate"]="1",
["nameplateShowFriendlyTotems"]="0",
["nameplateTargetRadialPosition"]="1",
},
["aura_tracker"]={
["buff_tracked"]={
[209859]=true,
},
},
["ui_parent_scale_tune"]=1.2500000745058,
["hook_auto_imported"]={
["Execute Range"]=1,
["Target Color"]=3,
["Cast Bar Icon Config"]=2,
["Combo Points"]=6,
["Dont Have Aura"]=1,
["Color Automation"]=1,
["Hide Neutral Units"]=1,
["Extra Border"]=2,
["Attacking Specific Unit"]=2,
["Reorder Nameplate"]=4,
["Players Targetting Amount"]=4,
["Aura Reorder"]=3,
},
["first_run3"]=true,
["plate_config"]={
["global_health_width"]=112,
["global_health_height"]=12,
},
["hook_data"]={
[1]={
["semver"]="",
["Time"]=1547392935,
["Author"]="Kastfall-Azralon",
["Revision"]=50,
["Name"]="Color Automation [Plater]",
["Desc"]="Easy way to change the color of an unit. Open the constructor script and follow the examples.",
["url"]="",
["HooksTemp"]={
},
["version"]=-1,
["Enabled"]=false,
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
["LoadConditions"]={
["group"]={
},
["race"]={
},
["talent"]={
},
["role"]={
},
["affix"]={
},
["encounter_ids"]={
},
["class"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["spec"]={
},
},
["Icon"]="Interface\\AddOns\\Plater\\images\\color_bar",
["LastHookEdited"]="",
["PlaterCore"]=1,
},
[2]={
["Time"]=1541606242,
["PlaterCore"]=1,
["Icon"]=1990989,
["LoadConditions"]={
["affix"]={
},
["race"]={
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
["encounter_ids"]={
},
["group"]={
},
["map_ids"]={
},
},
["Hooks"]={
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
},
["semver"]="",
["Name"]="Hide Neutral Units [Plater]",
["url"]="",
["Enabled"]=false,
["Desc"]="Hide neutral units, show when selected, see the constructor script for options.",
["Revision"]=73,
["HooksTemp"]={
},
["Author"]="Izimode-Azralon",
["LastHookEdited"]="",
["version"]=-1,
},
[3]={
["LastHookEdited"]="",
["Name"]="Reorder Nameplate [Plater]",
["Time"]=1596791840,
["Revision"]=93,
["Icon"]=574574,
["semver"]="",
["url"]="",
["Author"]="Kastfall-Azralon",
["Options"]={
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
["version"]=-1,
["HooksTemp"]={
},
["LoadConditions"]={
["role"]={
},
["pvptalent"]={
},
["spec"]={
},
["talent"]={
},
["class"]={
},
["encounter_ids"]={
},
["group"]={
},
["race"]={
},
["map_ids"]={
},
["affix"]={
},
},
["PlaterCore"]=1,
["Enabled"]=false,
},
[4]={
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
["PlaterCore"]=1,
["Revision"]=60,
["OptionsValues"]={
},
["Prio"]=99,
["Name"]="Don't Have Aura [Plater]",
["Author"]="Izimode-Azralon",
["Desc"]="Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
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
["LoadConditions"]={
["class"]={
},
["race"]={
},
["talent"]={
},
["pvptalent"]={
},
["role"]={
},
["affix"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
["encounter_ids"]={
},
},
["LastHookEdited"]="",
["Time"]=1627307023,
["Icon"]=136207,
["Enabled"]=false,
["Options"]={
},
["version"]=-1,
},
[5]={
["version"]=-1,
["PlaterCore"]=1,
["Time"]=1548278227,
["Name"]="Players Targeting a Target [Plater]",
["Desc"]="Show how many raid members are targeting the unit",
["url"]="",
["HooksTemp"]={
},
["LastHookEdited"]="",
["Enabled"]=false,
["Revision"]=182,
["LoadConditions"]={
["spec"]={
},
["role"]={
},
["class"]={
},
["map_ids"]={
},
["encounter_ids"]={
},
["talent"]={
},
["group"]={
},
["race"]={
},
["pvptalent"]={
},
["affix"]={
},
},
["Author"]="Izimode-Azralon",
["Icon"]=1966587,
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
["semver"]="",
},
[6]={
["LastHookEdited"]="",
["PlaterCore"]=1,
["Name"]="Extra Border [Plater]",
["Desc"]="Add another border with more customizations. This border can also be manipulated by other scripts.",
["url"]="",
["Icon"]=133689,
["version"]=-1,
["Enabled"]=false,
["Time"]=1547409079,
["Author"]="Tecno-Azralon",
["semver"]="",
["HooksTemp"]={
},
["LoadConditions"]={
["talent"]={
},
["spec"]={
},
["class"]={
},
["map_ids"]={
},
["encounter_ids"]={
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
},
["Hooks"]={
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
},
["Revision"]=176,
},
[7]={
["LoadConditions"]={
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
["group"]={
},
["role"]={
},
["talent"]={
},
["class"]={
},
["spec"]={
},
["race"]={
},
["encounter_ids"]={
},
},
["Revision"]=93,
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
["Desc"]="Changes the target color to the color set in the constructor script.",
["url"]="",
["Icon"]=878211,
["semver"]="",
["Time"]=1552354619,
["Name"]="Current Target Color [Plater]",
["PlaterCore"]=1,
["Author"]="Izimode-Azralon",
["Enabled"]=false,
["version"]=-1,
["LastHookEdited"]="",
["HooksTemp"]={
},
},
[8]={
["Options"]={
},
["Time"]=1608663128,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
["PlaterCore"]=1,
["Revision"]=356,
["version"]=-1,
["Author"]="Ditador-Azralon",
["Enabled"]=false,
["Name"]="Aura Reorder [Plater]",
["HooksTemp"]={
},
["url"]="",
["semver"]="",
["Desc"]="Reorder buffs and debuffs following the settings set in the constructor.",
["LoadConditions"]={
["race"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["map_ids"]={
},
["spec"]={
},
["encounter_ids"]={
},
["talent"]={
},
["group"]={
},
["class"]={
},
},
["LastHookEdited"]="",
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
},
[9]={
["Options"]={
[1]={
["Name"]="Icon Settings",
["Value"]="Icon Settings:",
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
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
["Desc"]="If enabled it anchor the icon on the left side, right otherwise",
["Type"]=4,
["Name"]="Icon on Left Side",
["Value"]=true,
["Key"]="iconOnLeftSide",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=0,
["Max"]=5,
["Name"]="Icon Size Offset",
["Min"]=0,
["Fraction"]=true,
["Key"]="iconSizeOffset",
["Type"]=2,
["Desc"]="Fine tune the icon size",
},
[6]={
["Max"]=5,
["Desc"]="Space between the icon and the cast bar",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=-5,
["Type"]=2,
["Fraction"]=false,
["Name"]="Icon Padding",
["Value"]=0,
["Key"]="iconPadding",
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
["Type"]=5,
["Name"]="Interrupt Texture",
["Value"]="Can't Interrupt Texture:",
["Key"]="option5",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[9]={
["Desc"]="If enabled show a texture to tell the cast can't be interrupted",
["Type"]=4,
["Name"]="Show Texture",
["Value"]=true,
["Key"]="showTexture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enbaled, texture is shown in black & white",
["Type"]=4,
["Name"]="Texture Desaturated",
["Value"]=true,
["Key"]="desaturatedTexture",
},
[12]={
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
["Type"]=1,
},
[13]={
["Desc"]="Adjust the texture width",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Texture Width",
["Value"]=10,
["Type"]=2,
["Key"]="textureWidth",
["Max"]=32,
["Min"]=1,
["Fraction"]=false,
},
[14]={
["Min"]=-16,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="The texture is set to be the same size as the cast bar, fine tune the height as wanted",
["Key"]="textureHeightMod",
["Type"]=2,
["Fraction"]=true,
["Name"]="Texture Height Mod",
["Value"]=0,
["Max"]=16,
},
[15]={
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Texture Position",
["Key"]="texturePosition",
["Max"]=32,
["Value"]=0,
["Min"]=-32,
["Type"]=2,
["Desc"]="Adjust the texture position",
},
[16]={
["Fraction"]=true,
["Desc"]="Adjust the texture transparency",
["Value"]=1,
["Type"]=2,
["Max"]=1,
["Min"]=0,
["Key"]="textureAlpha",
["Name"]="Texture Alpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["Icon"]="Interface\\AddOns\\Plater\\images\\castbar_icon",
["LastHookEdited"]="",
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
["map_ids"]={
},
["race"]={
},
["affix"]={
},
["class"]={
},
["role"]={
},
["pvptalent"]={
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
["url"]="",
["Name"]="Cast Bar Icon Settings [P]",
["Desc"]="Move the icon of the spell cast to the left or right side of the nameplate.",
["Enabled"]=false,
["HooksTemp"]={
},
["version"]=-1,
["Revision"]=348,
["Author"]="Ditador-Azralon",
["Time"]=1597097268,
["semver"]="",
["PlaterCore"]=1,
},
[10]={
["PlaterCore"]=1,
["url"]="",
["Desc"]="Add extra effects to execute range. See the constructor script for options.",
["Author"]="Ahwa-Azralon",
["version"]=-1,
["Icon"]=135358,
["Enabled"]=false,
["LastHookEdited"]="",
["LoadConditions"]={
["spec"]={
},
["group"]={
},
["race"]={
},
["class"]={
},
["pvptalent"]={
},
["role"]={
},
["map_ids"]={
},
["affix"]={
},
["encounter_ids"]={
},
["talent"]={
},
},
["Revision"]=84,
["HooksTemp"]={
},
["Name"]="Execute Range [Plater]",
["semver"]="",
["Time"]=1547406548,
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
},
[11]={
["Time"]=1620377377,
["LoadConditions"]={
["pvptalent"]={
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
["talent"]={
},
["role"]={
},
["race"]={
},
},
["Revision"]=363,
["Hooks"]={
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
},
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
["Desc"]="",
["Type"]=4,
["Key"]="changeBorderColor",
["Value"]=false,
["Name"]="Change Border Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
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
["PlaterCore"]=1,
["semver"]="",
["LastHookEdited"]="",
["version"]=-1,
["Enabled"]=false,
["Author"]="Kastfall-Azralon",
["Name"]="Attacking Specific Unit [Plater]",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
["url"]="",
["HooksTemp"]={
},
},
[12]={
["Prio"]=99,
["LastHookEdited"]="",
["HooksTemp"]={
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
},
["Hooks"]={
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
["Player Power Update"]="function (self, unitId, unitFrame, envTable, modTable, ...)\
    local powerType = ...\
    \
    if (powerType and powerType == \"COMBO_POINTS\" and unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\
        envTable.UpdateComboPoints()\
    end\
    \
    \
end",
},
["LoadConditions"]={
["map_ids"]={
},
["race"]={
},
["spec"]={
["103"]=true,
["Enabled"]=true,
},
["encounter_ids"]={
},
["talent"]={
},
["class"]={
["DRUID"]=true,
["ROGUE"]=true,
["Enabled"]=true,
},
["role"]={
},
["affix"]={
},
["group"]={
},
["pvptalent"]={
},
},
["url"]="",
["Desc"]="Show combo points above the nameplate for Druid Feral and Rogues.",
["semver"]="",
["Options"]={
},
["OptionsValues"]={
},
["Name"]="Combo Points [Plater]",
["Time"]=1627307022,
["Author"]="Izimode-Azralon",
["Revision"]=285,
["version"]=-1,
["PlaterCore"]=1,
["Icon"]=135426,
["Enabled"]=false,
},
},
["script_data_trash"]={
[1]={
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
["Revision"]=1154,
["SpellIds"]={
[1]=350421,
[2]=355787,
[3]=348513,
},
["OptionsValues"]={
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
["__TrashAt"]=1627306963,
["Name"]="Cast - Alert + Timer [P]",
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
["PlaterCore"]=1,
["url"]="",
["Time"]=1625793282,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["Enabled"]=true,
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Key"]="useCastbarColor",
["Value"]=true,
["Name"]="Cast Bar Color Enabled",
},
[5]={
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
["Name"]="Cast Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
["Type"]=1,
["Key"]="castbarColor",
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
["Max"]=1,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Value"]=0.4,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="flashDuration",
["Fraction"]=true,
["Name"]="Flash Duration",
["Type"]=2,
},
[8]={
["Max"]=10,
["Min"]=0,
["Name"]="Cast Bar Height Mod",
["Desc"]="Increases the cast bar height by this value",
["Value"]=5,
["Fraction"]=false,
["Type"]=2,
["Key"]="castBarHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[9]={
["Type"]=2,
["Max"]=1,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Duration",
["Min"]=0.1,
["Key"]="shakeDuration",
["Value"]=0.2,
["Fraction"]=true,
},
[10]={
["Type"]=2,
["Max"]=100,
["Desc"]="How strong is the shake.",
["Key"]="shakeAmplitude",
["Min"]=2,
["Value"]=8,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
},
[11]={
["Value"]=40,
["Name"]="Shake Frequency",
["Fraction"]=false,
["Key"]="shakeFrequency",
["Min"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Max"]=80,
},
[12]={
["Key"]="timerList",
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
},
},
["semver"]="",
["ScriptType"]=2,
["NpcNames"]={
},
["version"]=-1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
},
},
["OptionsPanelDB"]={
["PlaterOptionsPanelFrame"]={
["scale"]=1,
},
},
["patch_version"]=16,
["use_ui_parent"]=true,
["number_region"]="eastasia",
["login_counter"]=1,
["script_auto_imported"]={
["Countdown"]=11,
["Cast - Very Important"]=12,
["Aura - Buff Alert"]=13,
["Explosion Affix M+"]=11,
["Cast - Small Alert"]=11,
["Aura - Debuff Alert"]=11,
["Cast - Castbar is Timer [P]"]=2,
["Cast - Important Target [P]"]=1,
["Unit - Health Markers"]=12,
["Aura - Blink Time Left"]=12,
["Cast - Alert + Timer [P]"]=1,
["Unit - Show Energy"]=11,
["Cast - Frontal Cone"]=11,
["Cast - Tank Interrupt"]=12,
["Spiteful Affix"]=3,
["Fixate On You"]=11,
["Auto Set Skull"]=11,
["Unit - Main Target"]=11,
["Fixate"]=11,
["Unit - Important"]=11,
["Cast - Big Alert"]=12,
["Cast - Ultra Important"]=11,
},
["aura_x_offset"]=0,
},
["MyNewProfile"]={
["ui_parent_buff_level"]=10,
["extra_icon_auras_mine"]={
["224991"]=true,
},
["extra_icon_show_enrage"]=true,
["indicator_raidmark_scale"]=0.69999998807907,
["no_spellname_length_limit"]=true,
["healthbar_framelevel"]=0,
["castbar_target_show"]=true,
["update_throttle"]=0.099999994039535,
["captured_spells"]={
[122]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[2139]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[325381]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[104316]={
["npcID"]=0,
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
},
[343594]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[686]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[48518]={
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[330943]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
},
[342814]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="Magiccream",
},
[205636]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[89751]={
["source"]="齐兹-萨克",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
["type"]="BUFF",
},
[1449]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[768]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[340162]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[323764]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[6789]={
["npcID"]=0,
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
},
[322968]={
["npcID"]=165111,
["source"]="德鲁斯特恶爪者",
["event"]="SPELL_CAST_SUCCESS",
},
[352498]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[50334]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[139]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[326319]={
["npcID"]=164921,
["source"]="德鲁斯特收割者",
["event"]="SPELL_CAST_SUCCESS",
},
[321507]={
["npcID"]=0,
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
},
[213708]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[6795]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="小越的司机-黄金之路",
},
[45334]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
},
[339848]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
["type"]="BUFF",
["source"]="齐兹-萨克",
},
[108366]={
["npcID"]=0,
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
},
[153626]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[30213]={
["npcID"]=58965,
["source"]="齐兹-萨克",
["event"]="SPELL_CAST_SUCCESS",
},
[339784]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[774]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
},
[453]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[337948]={
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
[77764]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[340158]={
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[212653]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[45242]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[328908]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[307443]={
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
[596]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[190984]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="Magiccream",
},
[325640]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[267972]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[5215]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[192081]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[33076]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[205644]={
["type"]="DEBUFF",
["source"]="树人",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=103822,
},
[77758]={
["npcID"]=0,
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[322938]={
["npcID"]=164921,
["type"]="BUFF",
["source"]="德鲁斯特收割者",
["event"]="SPELL_AURA_APPLIED",
},
[78674]={
["npcID"]=0,
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
},
[334067]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[321968]={
["npcID"]=164929,
["source"]="仙木灵居民",
["event"]="SPELL_CAST_SUCCESS",
},
[30451]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[108446]={
["type"]="BUFF",
["source"]="齐兹-萨克",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
},
[343553]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=174773,
["type"]="BUFF",
["source"]="怨毒影魔",
},
[350209]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
},
[8921]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[236298]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[210824]={
["type"]="DEBUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[331718]={
["source"]="纱雾防御者",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=171772,
["type"]="BUFF",
},
[337716]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
},
[324736]={
["type"]="BUFF",
["source"]="未知目标",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=163058,
},
[116014]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[355044]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[78675]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[164815]={
["npcID"]=0,
["type"]="DEBUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
},
[339946]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[205146]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[14914]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="美丽小药-黄金之路",
},
[110959]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[527]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[321952]={
["npcID"]=164929,
["type"]="BUFF",
["source"]="仙木灵居民",
["event"]="SPELL_AURA_APPLIED",
},
[330132]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[89766]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=17252,
["source"]="恶魔卫士",
},
[322569]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=172991,
["type"]="BUFF",
["source"]="未知目标",
},
[345228]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[330131]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[322967]={
["npcID"]=165111,
["type"]="BUFF",
["source"]="德鲁斯特恶爪者",
["event"]="SPELL_AURA_APPLIED",
},
[345209]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
},
[307454]={
["type"]="DEBUFF",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[322486]={
["source"]="仙木灵居民",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164929,
},
[2060]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="美丽小药-黄金之路",
},
[33917]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[264178]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[203975]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[17]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="美丽小药-黄金之路",
},
[213771]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[332777]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[77489]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
},
[34861]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[41635]={
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[337299]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[333889]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[164812]={
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
},
[265187]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[6788]={
["npcID"]=0,
["type"]="DEBUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
},
[322767]={
["source"]="德鲁斯特收割者",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164921,
},
[265273]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[322557]={
["type"]="BUFF",
["source"]="德鲁斯特斩魂者",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=172991,
},
[204883]={
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
[321010]={
["source"]="英格拉·马洛克",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=164567,
},
[89753]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=58965,
["source"]="齐兹-萨克",
},
[93402]={
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[194223]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[1459]={
["npcID"]=0,
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
},
[22812]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[322939]={
["type"]="DEBUFF",
["source"]="德鲁斯特收割者",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=164921,
},
[112870]={
["npcID"]=0,
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
},
[328900]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[102359]={
["npcID"]=0,
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
},
[330730]={
["npcID"]=0,
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
},
[263725]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
},
[342774]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[5487]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
},
[345801]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[65081]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
},
[114255]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[323629]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
},
[202770]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[194153]={
["npcID"]=0,
["source"]="Magiccream",
["event"]="SPELL_CAST_SUCCESS",
},
[110960]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[324748]={
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[5143]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="冰脉-无尽之海",
},
[48438]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[44425]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[192090]={
["type"]="DEBUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[33702]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[323020]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=165111,
["source"]="德鲁斯特恶爪者",
},
[99]={
["npcID"]=0,
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[334713]={
["npcID"]=98035,
["source"]="恐惧猎犬",
["event"]="SPELL_CAST_SUCCESS",
},
[32379]={
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[235450]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[206151]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="DEBUFF",
["source"]="美丽小药-黄金之路",
},
[113862]={
["npcID"]=0,
["type"]="BUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
},
[108416]={
["npcID"]=0,
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
},
[345048]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[93622]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[345499]={
["type"]="BUFF",
["source"]="美丽小药-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[236299]={
["type"]="DEBUFF",
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[111898]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[331623]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[30151]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=58965,
["type"]="BUFF",
["source"]="齐兹-萨克",
},
[321519]={
["type"]="DEBUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[270481]={
["npcID"]=135002,
["source"]="恶魔暴君",
["event"]="SPELL_CAST_SUCCESS",
},
[48517]={
["type"]="BUFF",
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[353203]={
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[16979]={
["npcID"]=0,
["source"]="小越的司机-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[350163]={
["source"]="怨毒影魔",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=174773,
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
[12042]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[116011]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[264173]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[8936]={
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
["source"]="小越的司机-黄金之路",
},
[353477]={
["type"]="BUFF",
["source"]="马桶制造者-黑铁",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
},
[323043]={
["source"]="德鲁斯特恶爪者",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=165111,
},
[10060]={
["npcID"]=0,
["source"]="美丽小药-黄金之路",
["event"]="SPELL_CAST_SUCCESS",
},
[105174]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[348139]={
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
[300155]={
["npcID"]=164929,
["source"]="仙木灵居民",
["event"]="SPELL_CAST_SUCCESS",
},
[30283]={
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
["source"]="马桶制造者-黑铁",
},
[324260]={
["source"]="马桶制造者-黑铁",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[30449]={
["source"]="冰脉-无尽之海",
["event"]="SPELL_CAST_SUCCESS",
["npcID"]=0,
},
[191034]={
["source"]="Magiccream",
["event"]="SPELL_AURA_APPLIED",
["npcID"]=0,
["type"]="BUFF",
},
},
["range_check_in_range_or_target_alpha"]=0.79999995231628,
["use_ui_parent"]=true,
["cast_statusbar_fadeout_time"]=0.49999997019768,
["semver"]="1.0.4",
["number_region"]="eastasia",
["cast_statusbar_spark_alpha"]=0.71999996900559,
["health_statusbar_bgcolor"]={
[1]=0.0431372,
[2]=0.0431372,
[3]=0.0431372,
[4]=1,
},
["aura_width2"]=22,
["aura_y_offset"]=9,
["health_animation_time_dilatation"]=2.8699998855591,
["aura_alpha"]=1,
["cast_statusbar_spark_offset"]=-13,
["hover_highlight_alpha"]=0.29999998211861,
["target_indicator"]="NONE",
["pet_height_scale"]=0.99999994039536,
["aura_height"]=15,
["aura_cooldown_reverse"]=false,
["target_highlight_height"]=18,
["extra_icon_anchor"]={
["x"]=4,
},
["cast_statusbar_bgcolor"]={
[1]=0,
[2]=0,
[3]=0,
[4]=0.79781,
},
["target_highlight_alpha"]=1,
["click_space"]={
[1]=115,
},
["castbar_framelevel"]=0,
["script_data_trash"]={
[1]={
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Hide()\
    \
end",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
["__TrashAt"]=1627309681,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Hide()\
    \
end",
["Enabled"]=true,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\
    \
end",
["Name"]="Aura - Buff Alert [Plater]",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\
    \
end",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
["ScriptType"]=1,
["Options"]={
},
["Desc"]="Add the buff name in the trigger box.",
["NpcNames"]={
},
["OptionsValues"]={
},
["SpellIds"]={
[1]=275826,
[2]=272888,
[3]=272659,
[4]=267901,
[5]=267830,
[6]=265393,
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Show()\
    \
end",
["Time"]=1551467254,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.buffIconGlow:Show()\
    \
end",
["Revision"]=432,
["Author"]="Tercioo-Sylvanas",
["PlaterCore"]=1,
},
[2]={
["Time"]=1550589212,
["ScriptType"]=2,
["OptionsValues"]={
},
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
["Name"]="Explosion Affix M+ [Plater]",
["SpellIds"]={
[1]=240446,
[2]=273577,
},
["NpcNames"]={
},
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
["Icon"]=2175503,
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
["PlaterCore"]=1,
["Desc"]="Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
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
["Revision"]=335,
["__TrashAt"]=1627309681,
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
["Enabled"]=true,
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
["Options"]={
},
},
[3]={
["PlaterCore"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Author"]="Tercioo-Sylvanas",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --creates a glow around the icon\
    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\
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
["SpellIds"]={
},
["Enabled"]=true,
["NpcNames"]={
},
["Name"]="Aura - Debuff Alert [Plater]",
["OptionsValues"]={
},
["Desc"]="Add the debuff name in the trigger box.",
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
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.debuffIconGlow:Show()\
    \
end\
\
\
",
["ScriptType"]=1,
["__TrashAt"]=1627309681,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
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
},
[4]={
["Revision"]=387,
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
["Options"]={
},
["__TrashAt"]=1627309681,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
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
["ScriptType"]=2,
["PlaterCore"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["OptionsValues"]={
},
["Desc"]="Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
end\
\
\
",
["Time"]=1548349245,
["Author"]="Tercioo-Sylvanas",
["Enabled"]=true,
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
["Name"]="Cast - Small Alert [Plater]",
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
["ScriptType"]=1,
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
["Revision"]=164,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_blink",
["Time"]=1549120808,
["Name"]="Aura - Blink by Time Left [Plater]",
["SpellIds"]={
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
["Desc"]="Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
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
["Author"]="Izimode-Azralon",
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
["Options"]={
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.blinkTexture:SetSize (self:GetSize())\
    \
end\
\
\
",
["OptionsValues"]={
},
["PlaterCore"]=1,
["__TrashAt"]=1627309681,
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
},
[6]={
["NpcNames"]={
},
["Author"]="Bombad�o-Azralon",
["PlaterCore"]=1,
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
["__TrashAt"]=1627309681,
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
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["ScriptType"]=2,
["Desc"]="Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Enabled"]=true,
},
[7]={
["ScriptType"]=2,
["__TrashAt"]=1627309681,
["SpellIds"]={
[1]=350421,
[2]=355787,
[3]=348513,
},
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["Options"]={
[1]={
["Value"]=0,
["Name"]="Blank Line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option1",
},
[2]={
["Type"]=5,
["Key"]="option2",
["Value"]="Cast start animation settings",
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[3]={
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option4",
["Value"]=0,
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
["Desc"]="",
["Type"]=6,
["Key"]="option7",
["Value"]=0,
["Name"]="Blank Line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[7]={
["Value"]=0.4,
["Min"]=0.05,
["Max"]=1,
["Type"]=2,
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Key"]="flashDuration",
["Name"]="Flash Duration",
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[8]={
["Fraction"]=false,
["Desc"]="Increases the cast bar height by this value",
["Max"]=10,
["Value"]=5,
["Name"]="Cast Bar Height Mod",
["Type"]=2,
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="castBarHeight",
},
[9]={
["Min"]=0.1,
["Value"]=0.2,
["Name"]="Shake Duration",
["Type"]=2,
["Max"]=1,
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
},
[10]={
["Min"]=2,
["Key"]="shakeAmplitude",
["Fraction"]=false,
["Max"]=100,
["Name"]="Shake Amplitude",
["Desc"]="How strong is the shake.",
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
},
[11]={
["Max"]=80,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="How fast the shake moves.",
["Key"]="shakeFrequency",
["Name"]="Shake Frequency",
["Type"]=2,
["Fraction"]=false,
["Min"]=1,
["Value"]=40,
},
[12]={
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_list",
["Desc"]="Key is the spellId and value is the amount of time of the Timer",
},
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
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
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["PlaterCore"]=1,
["version"]=-1,
["OptionsValues"]={
},
["NpcNames"]={
},
["Name"]="Cast - Alert + Timer [P]",
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
["Enabled"]=true,
["Revision"]=1154,
["Time"]=1625793282,
},
[8]={
["Revision"]=162,
["Enabled"]=true,
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
["Time"]=1548957216,
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
["PlaterCore"]=1,
["Name"]="Unit - Important [Plater]",
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
["Author"]="Izimode-Azralon",
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
["__TrashAt"]=1627309681,
["OptionsValues"]={
},
["ScriptType"]=3,
["Options"]={
},
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
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
["Icon"]=135996,
},
[9]={
["Options"]={
},
["Temp_UpdateCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["OptionsValues"]={
},
["PlaterCore"]=1,
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
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
["Revision"]=192,
["Enabled"]=true,
["Time"]=1548349245,
["NpcNames"]={
},
["Name"]="Cast - Frontal Cone [Plater]",
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
["Author"]="Izimode-Azralon",
["ScriptType"]=2,
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
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["Desc"]="Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
["__TrashAt"]=1627309681,
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["UpdateCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
},
[10]={
["Revision"]=197,
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
["Name"]="Fixate [Plater]",
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
["ScriptType"]=1,
["Enabled"]=true,
["Author"]="Celian-Sylvanas",
["NpcNames"]={
},
["__TrashAt"]=1627309681,
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
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
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Show();\
    envTable.FixateIcon:Show();\
    \
end\
\
\
",
["Desc"]="Show above the nameplate who is the player fixated",
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
},
[11]={
["PlaterCore"]=1,
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
["Author"]="Tercioo-Sylvanas",
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
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
["Options"]={
},
["OptionsValues"]={
},
["Revision"]=581,
["ScriptType"]=2,
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
["Time"]=1551892410,
["NpcNames"]={
},
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
["__TrashAt"]=1627309681,
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
["Name"]="Cast - Big Alert [Plater]",
["Enabled"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
},
[12]={
["Name"]="Fixate On You [Plater]",
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
["ScriptType"]=3,
["Options"]={
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
["PlaterCore"]=1,
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
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
["Enabled"]=true,
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
["OptionsValues"]={
},
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
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
},
},
["aura_cooldown_edge_texture"]="Interface\\GLUES\\loadingOld",
["aura_show_crowdcontrol"]=true,
["indicator_raidmark_anchor"]={
["x"]=-40,
},
["last_news_time"]=1551553489,
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
["health_statusbar_bgtexture"]="You Are Beautiful!",
["news_frame"]={
["PlaterNewsFrame"]={
["scale"]=1,
},
},
["quick_hide"]=true,
["cast_statusbar_bgtexture"]="PlaterBackground",
["aura_frame1_anchor"]={
["y"]=9,
["side"]=1,
},
["url"]="https://wago.io/g-jp-v2zw/5",
["aura_timer"]=false,
["aura_padding"]=2,
["aura_show_buff_by_the_unit"]=false,
["aura2_grow_direction"]=1,
["extra_icon_width"]=22,
["castbar_target_anchor"]={
["side"]=11,
},
["version"]=5,
["aura_cooldown_show_swipe"]=false,
["hook_data_trash"]={
[1]={
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
["Author"]="Kastfall-Azralon",
["OptionsValues"]={
},
["Time"]=1551825364,
["PlaterCore"]=1,
["Enabled"]=false,
["Name"]="Reorder Nameplate [Plater]",
["Options"]={
},
["LastHookEdited"]="Nameplate Added",
["LoadConditions"]={
["race"]={
},
["affix"]={
},
["group"]={
},
["map_ids"]={
},
["role"]={
},
["talent"]={
},
["class"]={
},
["pvptalent"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["__TrashAt"]=1627309681,
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
["Revision"]=90,
},
[2]={
["Revision"]=273,
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
["Options"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
["LastHookEdited"]="Constructor",
["LoadConditions"]={
["pvptalent"]={
},
["talent"]={
},
["group"]={
},
["spec"]={
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
},
["Time"]=1559665989,
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
["Author"]="Ditador-Azralon",
["__TrashAt"]=1627309681,
["PlaterCore"]=1,
["OptionsValues"]={
},
["Name"]="Aura Reorder [Plater]",
["Enabled"]=false,
["Desc"]="Reorder buffs and debuffs following the settings set in the constructor.",
},
[3]={
["Enabled"]=false,
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
["LoadConditions"]={
["encounter_ids"]={
},
["spec"]={
},
["race"]={
},
["map_ids"]={
},
["pvptalent"]={
},
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
},
["Revision"]=274,
["__TrashAt"]=1627309681,
["Name"]="Attacking Specific Unit [Plater]",
["Desc"]="Change the color if a unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
["Options"]={
},
["LastHookEdited"]="Constructor",
["Time"]=1551825291,
["Author"]="Kastfall-Azralon",
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
["PlaterCore"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
},
[4]={
["Author"]="Izimode-Azralon",
["PlaterCore"]=1,
["Icon"]=135426,
["Revision"]=190,
["OptionsValues"]={
},
["Enabled"]=false,
["HooksTemp"]={
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
["__TrashAt"]=1627309681,
["Desc"]="Show combo points above the nameplate for Druid Feral and Rogues.",
["Name"]="Combo Points [Plater]",
["LoadConditions"]={
["encounter_ids"]={
},
["spec"]={
["103"]=true,
["Enabled"]=true,
},
["talent"]={
},
["class"]={
["Enabled"]=true,
["DRUID"]=true,
["ROGUE"]=true,
},
["role"]={
},
["map_ids"]={
},
["race"]={
},
["affix"]={
},
["group"]={
},
["pvptalent"]={
},
},
["Time"]=1551825317,
["LastHookEdited"]="Constructor",
["Hooks"]={
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
},
["Options"]={
},
},
},
["aura_stack_font"]="Accidental Presidency",
["cast_statusbar_color_nointerrupt"]={
[1]=0.49411764705882,
[2]=0.49803921568628,
[3]=0.50196078431373,
[4]=0.96000000089407,
},
["OptionsPanelDB"]={
["PlaterOptionsPanelFrame"]={
["scale"]=1,
},
},
["saved_cvars"]={
["nameplateShowEnemyMinus"]="1",
["nameplatePersonalShowInCombat"]="1",
["NamePlateHorizontalScale"]="1",
["nameplateShowFriendlyMinions"]="0",
["nameplateMinScale"]="1",
["nameplateShowFriendlyNPCs"]="0",
["nameplateShowEnemies"]="1",
["ShowNamePlateLoseAggroFlash"]="1",
["nameplateShowFriendlyGuardians"]="0",
["nameplateMotion"]="1",
["nameplateOccludedAlphaMult"]="1",
["nameplateResourceOnTarget"]="0",
["nameplateShowEnemyMinions"]="1",
["nameplateShowFriends"]="0",
["nameplateSelectedAlpha"]="1",
["nameplateMotionSpeed"]="0.05",
["nameplateMaxDistance"]="55",
["nameplateSelfTopInset"]="0.57687740325928",
["nameplateSelfAlpha"]="1",
["nameplatePersonalShowAlways"]="1",
["nameplateShowAll"]="1",
["nameplateShowFriendlyPets"]="0",
["nameplateSelfScale"]="1",
["nameplatePersonalShowWithTarget"]="0",
["nameplateGlobalScale"]="1",
["nameplateOverlapV"]="1.1",
["nameplatePersonalHideDelaySeconds"]="0.2",
["nameplateSelectedScale"]="1.15",
["nameplateOtherTopInset"]="0.085",
["ShowClassColorInNameplate"]="1",
["NamePlateVerticalScale"]="1",
["nameplateShowFriendlyTotems"]="0",
["nameplateShowSelf"]="1",
["nameplateSelfBottomInset"]="0.32596862792969",
},
["first_run2"]=true,
["health_selection_overlay"]="Smooth",
["health_selection_overlay_alpha"]=0.29999998211861,
["aura_grow_direction"]=3,
["aura2_x_offset"]=0,
["script_data"]={
[1]={
["OptionsValues"]={
},
["Time"]=1604617585,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Stop()\
    \
end\
\
\
",
["Author"]="Tercioo-Sylvanas",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Name"]="Cast - Small Alert [Plater]",
["Revision"]=595,
["PlaterCore"]=1,
["Desc"]="Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
["url"]="",
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.SmallFlashAnimationHub:Play()\
    \
end\
\
\
",
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
["NpcNames"]={
},
["version"]=-1,
["ScriptType"]=2,
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
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    \
    \
end\
\
\
",
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
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Plays a small animation when the cast start.",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option2",
},
[4]={
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
},
[5]={
["Fraction"]=true,
["Desc"]="How long is the flash played when the cast starts.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0.1,
["Value"]=0.6,
["Key"]="flashDuration",
["Name"]="Flash Duration",
["Type"]=2,
["Max"]=1.2,
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
},
[2]={
["OptionsValues"]={
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Time"]=1541263726,
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --color to set the nameplate\
    envTable.NameplateColor = \"gray\"\
    \
end\
\
\
",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_invalid",
["Enabled"]=true,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
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
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --color to set the nameplate\
    envTable.NameplateColor = \"gray\"\
    \
end\
\
\
",
["Author"]="Izimode-Azralon",
["SpellIds"]={
[1]=261265,
[2]=261266,
[3]=271590,
},
["ScriptType"]=1,
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
["PlaterCore"]=1,
["Revision"]=108,
["Name"]="Aura - Invalidate Unit [Plater]",
["Options"]={
},
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
},
[3]={
["Name"]="Aura - Buff Alert [Plater]",
["OptionsValues"]={
},
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
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["Options"]={
[1]={
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[2]={
["Name"]="Option 2",
["Value"]="Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[3]={
["Value"]=0,
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
},
[4]={
["Name"]="Glow Enabled",
["Value"]=false,
["Key"]="glowEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Name"]="Glow Color",
["Value"]={
[1]=0.40392156862745,
[2]=0.003921568627451,
[3]=0,
[4]=1,
},
["Key"]="glowColor",
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
["Key"]="dotsEnabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Name"]="Dots Enabled",
["Value"]=true,
},
[8]={
["Name"]="Dots Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="dotsColor",
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
},
},
["Revision"]=607,
["Author"]="Tercioo-Sylvanas",
["ScriptType"]=1,
["Enabled"]=true,
["semver"]="",
["PlaterCore"]=1,
["SpellIds"]={
[1]=323149,
[2]=324392,
[3]=340544,
[4]=342189,
[5]=333227,
},
["url"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["NpcNames"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    \
    \
    \
end",
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
["Desc"]="Add the buff name in the trigger box.",
["Time"]=1605214963,
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
    \
end",
},
[4]={
["NpcNames"]={
},
["PlaterCore"]=1,
["Author"]="Bombad�o-Azralon",
["version"]=-1,
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
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Enabled"]=true,
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
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
["Time"]=1618996917,
["Revision"]=717,
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
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
["url"]="",
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
["Name"]="Option 2",
["Value"]="Plays a big animation when the cast start.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
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
["Name"]="Option 4",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Flash",
["Value"]="Flash:",
["Key"]="option2",
},
[6]={
["Min"]=0.1,
["Key"]="flashDuration",
["Desc"]="How long is the flash played when the cast starts.",
["Fraction"]=true,
["Value"]=0.8,
["Type"]=2,
["Max"]=1.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
},
[7]={
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="flashColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the Flash",
["Type"]=1,
["Name"]="Flash Color",
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
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
},
[10]={
["Name"]="Shake Duration",
["Key"]="shakeDuration",
["Fraction"]=true,
["Min"]=0.1,
["Max"]=0.5,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Value"]=0.2,
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[11]={
["Max"]=10,
["Desc"]="How strong is the shake.",
["Type"]=2,
["Fraction"]=false,
["Min"]=1,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
["Value"]=5,
},
[12]={
["Name"]="Shake Frequency",
["Key"]="shakeFrequency",
["Type"]=2,
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=80,
["Fraction"]=false,
["Value"]=40,
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
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Type"]=2,
["Key"]="xOffset",
["Max"]=20,
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=-10,
},
[17]={
["Fraction"]=false,
["Max"]=10,
["Type"]=2,
["Min"]=-10,
["Key"]="yOffset",
["Name"]="Dot Y Offset",
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=3,
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
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
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
["ScriptType"]=2,
},
[5]={
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
["Enabled"]=true,
["Author"]="Tercioo-Sylvanas",
["NpcNames"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Revision"]=351,
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
["Time"]=1604454032,
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
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
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
["Value"]={
[1]=1,
[2]=0.32156862745098,
[3]=0,
[4]=1,
},
["Key"]="dotsColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Name"]="Dots Color",
},
},
["ScriptType"]=1,
["OptionsValues"]={
},
["Desc"]="Add the debuff name in the trigger box.",
["SpellIds"]={
[1]=337220,
[2]=337253,
[3]=337251,
},
["PlaterCore"]=1,
["Name"]="Aura - Debuff Alert [Plater]",
["version"]=-1,
["url"]="",
["ConstructorCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    --creates a glow around the icon\
    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\
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
["OptionsValues"]={
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Stop()\
end\
\
\
",
["semver"]="",
["Name"]="Cast - Frontal Cone [Plater]",
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
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Produces an effect to indicate the spell will hit players in front of the enemy.",
},
[3]={
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Name"]="Option 4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option4",
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
["Min"]=0,
["Key"]="arrowAlpha",
["Fraction"]=true,
["Max"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="Set the alpha of the moving arrow",
["Name"]="Arrow Alpha",
["Value"]=0.275,
},
[6]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Animation Speed",
["Type"]=2,
["Max"]=1,
["Min"]=0,
["Value"]=0.2,
["Key"]="animSpeed",
["Fraction"]=true,
["Desc"]="Time that takes for an arrow to travel from the to right.",
},
[7]={
["Key"]="desaturateArrow",
["Value"]=false,
["Name"]="Use White Arrow",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the arrow color will be desaturated.",
["Type"]=4,
},
},
["Enabled"]=true,
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.movingAnimation:Play()\
end\
\
\
",
["NpcNames"]={
},
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
["Author"]="Izimode-Azralon",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
["Time"]=1604599443,
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
["Revision"]=460,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["PlaterCore"]=1,
["ScriptType"]=2,
},
[7]={
["Name"]="Fixate [Plater]",
["version"]=-1,
["url"]="",
["Enabled"]=true,
["Desc"]="Show above the nameplate who is the player fixated",
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
["NpcNames"]={
[1]="165560",
},
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["Time"]=1604239880,
["PlaterCore"]=1,
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
["Revision"]=269,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.FixateTarget:Hide()\
    envTable.FixateIcon:Hide()\
end\
\
\
",
["SpellIds"]={
},
["Options"]={
},
["OptionsValues"]={
},
["Icon"]=1029718,
["Author"]="Celian-Sylvanas",
["semver"]="",
},
[8]={
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Hide()\
end\
\
\
",
["Revision"]=135,
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\
end\
\
\
",
["ScriptType"]=3,
["Options"]={
},
["Author"]="Celian-Sylvanas",
["Name"]="UnitPower [Plater]",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["Time"]=1547158828,
["PlaterCore"]=1,
["SpellIds"]={
},
["OptionsValues"]={
},
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Hide()\
end\
\
\
",
["Icon"]=136048,
["Desc"]="Show the energy amount above the nameplate",
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
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
["NpcNames"]={
[1]="Guardian of Yogg-Saron",
},
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\
    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\
end\
\
--[=[\
\
\
--]=]",
},
[9]={
["Author"]="Izimode-Azralon",
["PlaterCore"]=1,
["url"]="",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option6",
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Name"]="Option 6",
},
[3]={
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
},
[4]={
["Key"]="changeNameplateColor",
["Value"]=true,
["Name"]="Change Nameplate Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="change to true to change the color",
["Type"]=4,
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0,
["Fraction"]=false,
["Max"]=6,
["Desc"]="increase the nameplate height by this value",
["Value"]=3,
["Key"]="nameplateSizeOffset",
["Name"]="Nameplate Size Offset",
["Type"]=2,
},
[7]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
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
["Key"]="option4",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
},
[10]={
["Key"]="option10",
["Value"]="Skull Texture",
["Name"]="Skull Texture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[11]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
["Type"]=1,
["Key"]="skullColor",
["Value"]={
[1]=1,
[2]=0.46274509803922,
[3]=0,
[4]=1,
},
["Name"]="Skull Color",
},
[12]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Name"]="Alpha",
["Type"]=2,
["Desc"]="",
["Min"]=0,
["Value"]=0.2,
["Key"]="skullAlpha",
["Max"]=1,
},
[13]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=2,
["Min"]=0.4,
["Desc"]="",
["Name"]="Scale",
["Value"]=0.6,
["Fraction"]=true,
["Key"]="skullScale",
["Type"]=2,
},
},
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
["semver"]="",
["SpellIds"]={
},
["version"]=-1,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
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
["Enabled"]=true,
["OptionsValues"]={
},
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
["Revision"]=355,
["Time"]=1604599472,
["Name"]="Unit - Important [Plater]",
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["ScriptType"]=3,
["NpcNames"]={
[1]="164362",
[2]="168882",
[3]="168988",
[4]="170234",
[5]="165905",
[6]="170452",
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
},
[10]={
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
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
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 3",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option3",
},
[4]={
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
},
[5]={
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
},
[6]={
["Key"]="castbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the cast bar.",
["Type"]=1,
["Name"]="Cast Bar Color",
["Value"]={
[1]=1,
[2]=0.43137254901961,
[3]=0,
[4]=1,
},
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
["Max"]=1,
["Fraction"]=true,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Min"]=0.05,
["Key"]="flashDuration",
["Type"]=2,
["Value"]=0.4,
},
[9]={
["Desc"]="Increases the cast bar height by this value",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0,
["Key"]="castBarHeight",
["Type"]=2,
["Value"]=5,
["Name"]="Cast Bar Height Mod",
["Max"]=10,
["Fraction"]=false,
},
[10]={
["Fraction"]=true,
["Type"]=2,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Name"]="Shake Duration",
["Key"]="shakeDuration",
["Max"]=1,
["Min"]=0.1,
},
[11]={
["Key"]="shakeAmplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Shake Amplitude",
["Desc"]="How strong is the shake.",
["Type"]=2,
["Max"]=100,
["Fraction"]=false,
["Min"]=2,
["Value"]=8,
},
[12]={
["Name"]="Shake Frequency",
["Min"]=1,
["Key"]="shakeFrequency",
["Value"]=40,
["Type"]=2,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=80,
["Desc"]="How fast the shake moves.",
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
["Revision"]=1060,
["Enabled"]=true,
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
["ScriptType"]=2,
["PlaterCore"]=1,
["Author"]="Tercioo-Sylvanas",
["OptionsValues"]={
},
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
["semver"]="",
["url"]="",
["NpcNames"]={
},
["Time"]=1618996691,
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
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["version"]=-1,
},
[11]={
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
["ScriptType"]=3,
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
["PlaterCore"]=1,
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
["Enabled"]=true,
["Icon"]=841383,
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
["semver"]="",
["Name"]="Fixate On You [Plater]",
["OptionsValues"]={
},
["url"]="",
["Author"]="Tecno-Azralon",
["Revision"]=266,
},
[12]={
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
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
["NpcNames"]={
},
["ScriptType"]=1,
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    \
end\
\
\
",
["Author"]="抹了油的大叔-白银之手",
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
    Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\
    \
end\
\
\
",
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
["ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
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
["SpellIds"]={
[1]=277242,
},
["PlaterCore"]=1,
["Enabled"]=false,
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
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
["OptionsValues"]={
},
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["PlaterCore"]=1,
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
["Author"]="Bombad�o-Azralon",
["Revision"]=462,
["SpellIds"]={
[1]=240446,
[2]=273577,
},
["Icon"]=2175503,
["NpcNames"]={
},
["version"]=-1,
["ScriptType"]=2,
["Time"]=1604698647,
["url"]="",
["Enabled"]=true,
["semver"]="",
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
["Desc"]="",
["Type"]=6,
["Key"]="option3",
["Value"]=0,
["Name"]="Option 3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[4]={
["Key"]="castBarHeight",
["Type"]=2,
["Desc"]="Increases the cast bar height by this value",
["Fraction"]=false,
["Name"]="Cast Bar Height Mod",
["Max"]=6,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0,
["Value"]=3,
},
[5]={
["Desc"]="Changes the cast bar color to this one.",
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
},
[6]={
["Name"]="Option 7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option7",
["Value"]=0,
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
["Type"]=2,
["Min"]=0,
["Fraction"]=true,
["Value"]=0.5,
["Key"]="arrowAlpha",
["Desc"]="Arrow alpha.",
["Name"]="Arrow Alpha",
["Max"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
["Max"]=12,
["Desc"]="Arrow Width.",
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Fraction"]=false,
["Key"]="arrowWidth",
["Name"]="Arrow Width",
["Min"]=4,
},
[11]={
["Key"]="arrowHeight",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=4,
["Name"]="Arrow Height",
["Type"]=2,
["Desc"]="Arrow Height.",
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
["Name"]="Dot Animation:",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option12",
["Value"]="Dot Animation:",
},
[14]={
["Desc"]="Adjust the color of the dot animation.",
["Type"]=1,
["Key"]="dotColor",
["Value"]={
[1]=1,
[2]=0.6156862745098,
[3]=0,
[4]=1,
},
["Name"]="Dot Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[15]={
["Max"]=10,
["Desc"]="Dot X Offset",
["Min"]=-10,
["Name"]="Dot X Offset",
["Fraction"]=false,
["Type"]=2,
["Value"]=4,
["Key"]="xOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[16]={
["Name"]="Dot Y Offset",
["Max"]=10,
["Key"]="yOffset",
["Min"]=-10,
["Value"]=3,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="Dot Y Offset",
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
["Name"]="Explosion Affix M+ [Plater]",
["Desc"]="Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
},
[14]={
["NpcNames"]={
[1]="141851",
},
["ScriptType"]=3,
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
["Revision"]=67,
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
["Enabled"]=true,
["Name"]="Color Change [Plater]",
["OptionsValues"]={
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
["PlaterCore"]=1,
["Author"]="Izimode-Azralon",
["Desc"]="Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
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
["Time"]=1548349253,
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
["Icon"]=135024,
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
["Options"]={
},
},
[15]={
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
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --reset the border color\
    self:SetBackdropBorderColor (0, 0, 0, 0)\
    \
end\
\
\
",
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
["Revision"]=46,
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
["Name"]="Aura - Border Color [Plater]",
["PlaterCore"]=1,
["ScriptType"]=1,
["Author"]="Izimode-Azralon",
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
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    \
    --reset the border color\
    self:SetBackdropBorderColor (0, 0, 0, 0)\
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
["Desc"]="Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
["Icon"]=133006,
["NpcNames"]={
},
["Enabled"]=false,
},
[16]={
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
["PlaterCore"]=1,
["OptionsValues"]={
},
["version"]=-1,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.blinkTexture:SetSize (self:GetSize())\
    \
end\
\
\
",
["Name"]="Aura - Blink by Time Left [Plater]",
["semver"]="",
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
["NpcNames"]={
},
["Enabled"]=true,
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
["SpellIds"]={
},
["Desc"]="Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
["Author"]="Izimode-Azralon",
["Options"]={
[1]={
["Type"]=6,
["Key"]="option10",
["Value"]=0,
["Name"]="Blank Space",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
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
["Value"]=0,
["Key"]="option10",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
},
[4]={
["Key"]="blinkEnabled",
["Value"]=true,
["Name"]="Blink Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'false' to disable blink",
["Type"]=4,
},
[5]={
["Desc"]="set to 'false' to disable glows",
["Type"]=4,
["Key"]="glowEnabled",
["Value"]=true,
["Name"]="Glow Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[6]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="set to 'true' to enable nameplate color change",
["Type"]=4,
["Key"]="changeNameplateColor",
["Value"]=false,
["Name"]="Change NamePlate Color",
},
[7]={
["Value"]=3,
["Name"]="Timeleft to Blink",
["Max"]=20,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Desc"]="in seconds, affects the blink effect only",
["Min"]=1,
["Fraction"]=true,
["Key"]="timeleftToBlink",
},
[8]={
["Name"]="Blink Speed",
["Type"]=2,
["Desc"]="time to complete a blink loop",
["Fraction"]=true,
["Key"]="blinkSpeed",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=3,
["Min"]=0.5,
["Value"]=1,
},
[9]={
["Fraction"]=true,
["Name"]="Blink Max Alpha",
["Value"]=0.6,
["Desc"]="max transparency in the animation loop (1.0 is full opaque)",
["Max"]=1,
["Min"]=0.1,
["Key"]="blinkMaxAlpha",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[10]={
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
["Type"]=1,
},
[11]={
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
["Name"]="Nameplate Color",
},
[12]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option10",
},
[13]={
["Desc"]="set to 'false' to disable changes in the color of the time left text",
["Type"]=4,
["Key"]="timerColorEnabled",
["Value"]=true,
["Name"]="Timer Color Enabled",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[14]={
["Key"]="timeLeftWarning",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Min"]=1,
["Fraction"]=true,
["Desc"]="in seconds, affects the color of the text",
["Max"]=20,
["Name"]="Time Left Warning",
["Value"]=8,
},
[15]={
["Max"]=10,
["Type"]=2,
["Min"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
["Name"]="Time Left Critical",
["Value"]=3,
["Key"]="timeLeftCritical",
["Desc"]="in seconds, affects the color of the text",
},
[16]={
["Name"]="Warning Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="color when the time left entered in a warning zone",
["Type"]=1,
["Key"]="warningColor",
["Value"]={
[1]=1,
[2]=0.87058823529412,
[3]=0,
[4]=1,
},
},
[17]={
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
["Desc"]="color when the time left is critical",
},
},
["Revision"]=375,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Time"]=1626382829,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_blink",
},
[17]={
["OnShowCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
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
["Time"]=1550589160,
["Enabled"]=false,
["ScriptType"]=3,
["SpellIds"]={
},
["Author"]="Kastfall-Azralon",
["Desc"]="",
["NpcNames"]={
[1]="surf darter",
},
["Temp_OnShowCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
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
["Revision"]=5,
["PlaterCore"]=1,
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
["OnHideCode"]="\9\9function (self, unitId, unitFrame, envTable)\
\9\9\9\
\9\9end\
\9",
["Temp_ConstructorCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
},
[18]={
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
["OptionsValues"]={
},
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
["PlaterCore"]=1,
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
["Options"]={
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    \
end\
\
\
",
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
["Enabled"]=false,
["Revision"]=1382,
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
["Desc"]="Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
["Time"]=1548957952,
["Author"]="Tercioo-Sylvanas",
["Name"]="M+ Important Spells [Plater]",
["ScriptType"]=2,
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
["Icon"]="INTERFACE\\ICONS\\Spell_Fire_FelFlameStrike",
},
[19]={
["Enabled"]=true,
["PlaterCore"]=1,
["OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Hide() \
end\
\
\
",
["Options"]={
},
["Desc"]="Alert when the unit has the Fire Shield to be broken.",
["Icon"]=132221,
["SpellIds"]={
[1]=286425,
},
["Temp_OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Show() \
end\
\
\
",
["Revision"]=33,
["Temp_UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\
end\
\
\
",
["Author"]="Kastfall-Azralon",
["NpcNames"]={
},
["Name"]="Jadefire [BOD] - Fire Shield",
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
["UpdateCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:SetAlpha (.5)\
end\
\
\
",
["Temp_OnHideCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Hide() \
end\
\
\
",
["OnShowCode"]="function (self, unitId, unitFrame, envTable)\
    unitFrame.JadeFireGlowEffect:Show() \
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
},
[20]={
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_orange",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
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
["Revision"]=1162,
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
["Options"]={
[1]={
["Value"]=0,
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
},
[2]={
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Cast start animation settings",
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[3]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[4]={
["Key"]="useCastbarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="When enabled, changes the cast bar color,",
["Type"]=4,
["Name"]="Cast Bar Color Enabled",
["Value"]=true,
},
[5]={
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
[6]={
["Key"]="option7",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
},
[7]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Value"]=0.4,
["Fraction"]=true,
["Key"]="flashDuration",
["Type"]=2,
["Max"]=1,
["Min"]=0.05,
["Name"]="Flash Duration",
},
[8]={
["Key"]="castBarHeight",
["Value"]=5,
["Min"]=0,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Name"]="Cast Bar Height Mod",
["Fraction"]=false,
["Desc"]="Increases the cast bar height by this value",
["Type"]=2,
},
[9]={
["Type"]=2,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Max"]=1,
["Min"]=0.1,
["Fraction"]=true,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeDuration",
["Name"]="Shake Duration",
},
[10]={
["Max"]=100,
["Min"]=2,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=8,
["Key"]="shakeAmplitude",
["Desc"]="How strong is the shake.",
["Type"]=2,
["Fraction"]=false,
},
[11]={
["Key"]="shakeFrequency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
["Max"]=80,
["Name"]="Shake Frequency",
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Value"]=40,
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
[1]="348513",
[2]="14",
},
[4]={
[1]="348513",
[2]="14",
},
},
["Name"]="Timer (Key is SpellId and Value is Time)",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_list",
["Desc"]="Key is the spellId and value is the amount of time of the Timer",
["Type"]=7,
},
},
["ScriptType"]=2,
["Time"]=1626467946,
["Desc"]="Player an animation when the cast start. Start a timer when the cast finishes. Set the time in the options.",
["OptionsValues"]={
},
["semver"]="",
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
["PlaterCore"]=1,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["Author"]="Tercioo-Sylvanas",
["SpellIds"]={
[1]=350421,
[2]=355787,
[3]=348513,
},
["Enabled"]=true,
["Name"]="Cast - Alert + Timer [P]",
["version"]=-1,
},
[21]={
["semver"]="",
["Author"]="Bombad�o-Azralon",
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
["Options"]={
[1]={
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 1",
["Value"]=0,
},
[2]={
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Plays a special animation showing the explosion time.",
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
["Name"]="Health Bar Height Mod",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=0,
["Fraction"]=false,
["Type"]=2,
["Value"]=3,
["Key"]="castBarHeight",
},
[5]={
["Key"]="healthBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Changes the health bar color to this one.",
["Type"]=1,
["Name"]="Health Bar Color",
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
["Type"]=5,
["Name"]="Arrow:",
["Value"]="Arrow:",
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[8]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Show an arrow above the nameplate showing the cast bar progress.",
["Type"]=4,
["Name"]="Show Arrow",
["Value"]=true,
["Key"]="showArrow",
},
[9]={
["Key"]="arrowAlpha",
["Min"]=0,
["Name"]="Arrow Alpha",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Arrow alpha.",
["Type"]=2,
["Fraction"]=true,
["Value"]=0.5,
["Max"]=1,
},
[10]={
["Name"]="Arrow Width",
["Key"]="arrowWidth",
["Type"]=2,
["Max"]=12,
["Desc"]="Arrow Width.",
["Value"]=8,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=4,
},
[11]={
["Key"]="arrowHeight",
["Min"]=4,
["Max"]=12,
["Desc"]="Arrow Height.",
["Value"]=8,
["Name"]="Arrow Height",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=false,
["Type"]=2,
},
[12]={
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[13]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Dot Animation:",
["Value"]="Dot Animation:",
["Key"]="option12",
},
[14]={
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
},
[15]={
["Desc"]="Dot X Offset",
["Name"]="Dot X Offset",
["Value"]=4,
["Key"]="xOffset",
["Max"]=10,
["Type"]=2,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=-10,
},
[16]={
["Type"]=2,
["Max"]=10,
["Fraction"]=false,
["Min"]=-10,
["Value"]=3,
["Name"]="Dot Y Offset",
["Key"]="yOffset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Dot Y Offset",
},
},
["ScriptType"]=2,
["PlaterCore"]=1,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_red",
["version"]=-1,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
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
["url"]="",
["NpcNames"]={
},
["Time"]=1604617977,
["Revision"]=513,
["Name"]="Cast - Ultra Important [P]",
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
["SpellIds"]={
[1]=332329,
[2]=320103,
[3]=321406,
[4]=335817,
[5]=321061,
[6]=320141,
[7]=326171,
},
["Enabled"]=true,
},
[22]={
["SpellIds"]={
},
["Name"]="Unit - Main Target [P]",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Desc"]="Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
["Revision"]=406,
["NpcNames"]={
[1]="156212",
[2]="168098",
[3]=179124,
},
["Time"]=1604607993,
["PlaterCore"]=1,
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
["url"]="",
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
["version"]=-1,
["Icon"]="Interface\\AddOns\\Plater\\media\\skullbones_64",
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
["semver"]="",
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
["Desc"]="",
["Type"]=5,
["Name"]="Option 6",
["Value"]="Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
["Key"]="option6",
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
["Name"]="Change Nameplate Color",
["Value"]=true,
["Key"]="changeNameplateColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="change to true to change the color",
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
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
},
[6]={
["Fraction"]=false,
["Max"]=6,
["Value"]=0,
["Key"]="nameplateSizeOffset",
["Type"]=2,
["Name"]="Nameplate Size Offset",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="increase the nameplate height by this value",
["Min"]=0,
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
["Author"]="Izimode-Azralon",
},
[23]={
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["url"]="",
["Revision"]=109,
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
["Author"]="Aelerolor-Torghast",
["NpcNames"]={
[1]="164451",
[2]="164463",
[3]="164461",
[4]="165946",
[5]="164501",
[6]="164218",
},
["semver"]="",
["SpellIds"]={
},
["Enabled"]=true,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Name"]="Unit - Health Markers [P]",
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
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateMarkers(unitFrame)\
end\
\
\
",
["Time"]=1606506781,
["version"]=-1,
["Desc"]="Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
["Options"]={
[1]={
["Name"]="Option 1",
["Value"]="Add markers into the health bar to remind you about boss abilities at life percent.",
["Key"]="option1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[2]={
["Desc"]="",
["Type"]=6,
["Name"]="blank line",
["Value"]=0,
["Key"]="",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
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
["Name"]="Vertical Line Alpha",
["Desc"]="Indicator alpha.",
["Min"]=0.1,
["Fraction"]=true,
["Value"]=0.79,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Key"]="indicatorAlpha",
["Max"]=1,
},
[5]={
["Type"]=6,
["Key"]="",
["Value"]=0,
["Name"]="blank line",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
},
[6]={
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
["Desc"]="Fill color.",
},
[7]={
["Desc"]="Fill alpha.",
["Min"]=0,
["Max"]=1,
["Key"]="fillAlpha",
["Name"]="Fill Alpha",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=0.2,
["Fraction"]=true,
},
},
},
[24]={
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
["NpcNames"]={
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 3",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
["Key"]="option3",
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Blank Line",
["Value"]=0,
["Key"]="option7",
},
[8]={
["Desc"]="When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
["Key"]="flashDuration",
["Min"]=0.05,
["Value"]=0.2,
["Type"]=2,
["Max"]=1,
["Name"]="Flash Duration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
},
[9]={
["Fraction"]=false,
["Value"]=0,
["Name"]="Cast Bar Height Mod",
["Max"]=10,
["Min"]=0,
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Desc"]="Increases the cast bar height by this value",
["Key"]="castBarHeight",
},
[10]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Name"]="Shake Duration",
["Key"]="shakeDuration",
["Fraction"]=true,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Value"]=0.1,
["Max"]=1,
["Min"]=0.1,
},
[11]={
["Type"]=2,
["Desc"]="How strong is the shake.",
["Name"]="Shake Amplitude",
["Max"]=200,
["Value"]=25,
["Min"]=10,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="shakeAmplitude",
},
[12]={
["Key"]="shakeFrequency",
["Desc"]="How fast the shake moves.",
["Min"]=1,
["Fraction"]=false,
["Type"]=2,
["Name"]="Shake Frequency",
["Value"]=30,
["Max"]=80,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
},
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_tank",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
end\
\
\
",
["SpellIds"]={
[1]=321828,
},
["PlaterCore"]=1,
["url"]="",
["Enabled"]=true,
["semver"]="",
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end",
["ScriptType"]=2,
["Time"]=1618996775,
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
},
[25]={
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 2",
["Value"]="Shows the target name in a separate box",
["Key"]="option2",
},
[3]={
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
},
[4]={
["Value"]=0,
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 4",
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
["Value"]=0.8,
["Key"]="flashDuration",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Flash Duration",
["Max"]=1.2,
["Desc"]="How long is the flash played when the cast starts.",
["Type"]=2,
["Min"]=0.1,
["Fraction"]=true,
},
[7]={
["Value"]={
[1]=1,
[2]=1,
[3]=1,
[4]=1,
},
["Key"]="flashColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Color of the Flash",
["Type"]=1,
["Name"]="Flash Color",
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
["Desc"]="",
["Type"]=5,
["Key"]="option2",
["Value"]="Shake:",
["Name"]="Shake",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
},
[10]={
["Name"]="Shake Duration",
["Max"]=0.5,
["Desc"]="When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
["Min"]=0.1,
["Key"]="shakeDuration",
["Type"]=2,
["Value"]=0.2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Fraction"]=true,
},
[11]={
["Desc"]="How strong is the shake.",
["Min"]=1,
["Key"]="shakeAmplitude",
["Fraction"]=false,
["Type"]=2,
["Max"]=10,
["Name"]="Shake Amplitude",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=5,
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
["Key"]="option13",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 13",
["Value"]=0,
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
["Desc"]="Adjust the width of the dots to better fit in your nameplate.",
["Min"]=-10,
["Value"]=8,
["Name"]="Dot X Offset",
["Key"]="xOffset",
["Type"]=2,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=20,
["Fraction"]=false,
},
[17]={
["Min"]=-10,
["Fraction"]=false,
["Name"]="Dot Y Offset",
["Key"]="yOffset",
["Value"]=3,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=10,
["Desc"]="Adjust the height of the dots to better fit in your nameplate.",
["Type"]=2,
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
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[20]={
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
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
["Key"]="option18",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="blank",
["Value"]=0,
},
[23]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option18",
["Value"]=0,
["Name"]="blank",
},
[24]={
["Value"]="Cast Bar",
["Key"]="option19",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Name"]="Option 19",
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
["Value"]={
[1]=0.41176470588235,
[2]=1,
[3]=0,
[4]=1,
},
["Key"]="castBarColor",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="Cast bar color.",
["Type"]=1,
["Name"]="Cast Bar Color",
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
["Value"]="Target Options",
["Name"]="Option 28",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option28",
},
[29]={
["Fraction"]=false,
["Value"]=14,
["Name"]="Text Size",
["Type"]=2,
["Max"]=32,
["Desc"]="",
["Key"]="targetNameSize",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=8,
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
["Name"]="Frame Width",
["Type"]=2,
["Max"]=160,
["Value"]=90,
["Key"]="targetFrameWidth",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=30,
["Desc"]="",
["Fraction"]=false,
},
[35]={
["Fraction"]=false,
["Max"]=32,
["Desc"]="",
["Key"]="targetFrameHeight",
["Min"]=8,
["Value"]=20,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Name"]="Frame Height",
},
},
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    \
    envTable.UpdateTargetBox(unitFrame, unitId) \
    \
end\
\
\
",
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
["ScriptType"]=2,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["url"]="",
["SpellIds"]={
[1]=354173,
},
["Time"]=1625696653,
["Revision"]=836,
["Icon"]="Interface\\AddOns\\Plater\\images\\cast_bar_target",
["semver"]="",
["Author"]="Bombad�o-Azralon",
["PlaterCore"]=1,
["version"]=-1,
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
["Desc"]="Highlight the target name",
["Name"]="Cast - Important Target [P]",
["Enabled"]=true,
},
[26]={
["Time"]=1604696441,
["semver"]="",
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.CheckMark (unitId, unitFrame)\
end\
\
\
",
["SpellIds"]={
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
["url"]="",
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
["version"]=-1,
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
["Author"]="Aelerolor-Torghast",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Revision"]=63,
["Enabled"]=false,
["Name"]="Auto Set Skull",
["Options"]={
[1]={
["Key"]="option1",
["Value"]="Auto set a raid target Skull on the unit.",
["Name"]="Option 1",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
},
[2]={
["Desc"]="",
["Type"]=6,
["Key"]="option2",
["Value"]=0,
["Name"]="Option 2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
[3]={
["Value"]=false,
["Name"]="Only in Combat",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="Set the mark only if the unit is in combat.",
["Type"]=4,
["Key"]="onlyInCombat",
},
},
["NpcNames"]={
[1]="163520",
[2]="163618",
[3]="164506",
},
["Icon"]="Interface\\Worldmap\\GlowSkull_64Grey",
},
[27]={
["Author"]="Aelerolor-Torghast",
["SpellIds"]={
},
["Time"]=1604354364,
["Enabled"]=true,
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
["Name"]="Countdown",
["url"]="",
["version"]=-1,
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
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    Plater.ClearAltCastBar(unitFrame.PlateFrame)\
end",
["Desc"]="Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
["semver"]="",
["NpcNames"]={
[1]="164427",
[2]="164414",
[3]="164185",
[4]="164567",
[5]="165408",
},
["Icon"]="Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
},
[28]={
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
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
["Author"]="Symantec-Azralon",
["Enabled"]=true,
["UpdateCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    --insert code here\
    envTable.UpdateSpitefulWidget(unitFrame)\
end\
\
\
",
["SpellIds"]={
},
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["Options"]={
[1]={
["Value"]="Time to Die",
["Name"]="Time to Die",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option12",
},
[2]={
["Min"]=10,
["Type"]=2,
["Key"]="bgWidth",
["Desc"]="",
["Max"]=50,
["Value"]=27,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Width",
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
["Fraction"]=false,
["Name"]="Text Size",
["Type"]=2,
["Desc"]="",
["Key"]="textSize",
["Max"]=24,
["Value"]=8,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Min"]=7,
},
[5]={
["Type"]=1,
["Key"]="textColor",
["Value"]={
[1]=1,
[2]=0.5843137254902,
[3]=0,
[4]=1,
},
["Name"]="Text Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_color",
["Desc"]="",
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
["Key"]="option11",
["Value"]="Targeting",
["Name"]="Targeting",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
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
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Name"]="Change Color if targeting You",
["Value"]=true,
["Key"]="useTargetingColor",
},
[10]={
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
["Type"]=1,
},
[11]={
["Desc"]="",
["Type"]=6,
["Key"]="option11",
["Value"]=0,
["Name"]="Option 11",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
},
},
["Revision"]=186,
["PlaterCore"]=1,
["Desc"]="Time to die Spiteful affix",
["NpcNames"]={
[1]="174773",
},
["url"]="",
["Name"]="M+ Spiteful",
["Time"]=1611844883,
["version"]=-1,
["ScriptType"]=3,
["semver"]="",
},
[29]={
["OnHideCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Hide()\
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
["SpellIds"]={
},
["Icon"]=136048,
["semver"]="",
["Desc"]="Show the energy amount above the nameplate.",
["PlaterCore"]=1,
["Initialization"]="function (scriptTable)\
    --insert code here\
    \
end\
\
\
",
["version"]=-1,
["Revision"]=233,
["OnShowCode"]="function (self, unitId, unitFrame, envTable, scriptTable)\
    envTable.EnergyAmount:Show()\
end\
\
\
",
["Enabled"]=true,
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
["Time"]=1604357453,
["url"]="",
["Author"]="Celian-Sylvanas",
["ScriptType"]=3,
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
["Value"]="Show the power of the unit above the nameplate.",
["Name"]="script desc",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
["Key"]="option3",
},
[3]={
["Type"]=5,
["Name"]="add trigger",
["Value"]="Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
["Key"]="option3",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
},
[4]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Key"]="option2",
["Value"]=0,
["Name"]="Option 2",
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
["Key"]="option2",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
["Type"]=6,
["Name"]="Option 2",
["Value"]=0,
},
[7]={
["Name"]="Text Size",
["Value"]=16,
["Type"]=2,
["Desc"]="Text size.",
["Min"]=8,
["Key"]="fontSize",
["Fraction"]=false,
["Max"]=32,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
},
[8]={
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
["Key"]="fontColor",
},
[9]={
["Name"]="Enable Text Outline",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled, the text uses outline.",
["Type"]=4,
["Key"]="outline",
["Value"]=true,
},
},
["NpcNames"]={
[1]="164406",
[2]="164407",
[3]="162100",
[4]="162099",
[5]="162329",
[6]="164558",
},
},
},
["castbar_target_text_size"]=8,
["aura_timer_text_font"]="Accidental Presidency",
["extra_icon_show_timer"]=false,
["extra_icon_auras"]={
[1]=277242,
},
["npc_cache"]={
[131545]={
[1]="Lady Waycrest",
[2]="Waycrest Manor",
},
[134024]={
[1]="Devouring Maggot",
[2]="Waycrest Manor",
},
[131586]={
[1]="Banquet Steward",
[2]="Waycrest Manor",
},
[136139]={
[1]="Mechanized Peacekeeper",
[2]="The MOTHERLODE!!",
},
[136347]={
[1]="Tidesage Initiate",
[2]="Shrine of the Storm",
},
[135975]={
[1]="Off-Duty Laborer",
[2]="The MOTHERLODE!!",
},
[132051]={
[1]="Blood Tick",
[2]="The Underrot",
},
[135971]={
[1]="Faithless Conscript",
[2]="Temple of Sethraliss",
},
[129553]={
[1]="Dinomancer Kish'o",
[2]="Atal'Dazar",
},
[138247]={
[1]="Irontide Marauder",
[2]="Siege of Boralus",
},
[129227]={
[1]="Azerokk",
[2]="The MOTHERLODE!!",
},
[131817]={
[1]="Cragmaw the Infested",
[2]="The Underrot",
},
[141565]={
[1]="Kul Tiran Footman",
[2]="Siege of Boralus",
},
[134739]={
[1]="Purification Construct",
[2]="Kings' Rest",
},
[131667]={
[1]="Soulbound Goliath",
[2]="Waycrest Manor",
},
[137713]={
[1]="Big Money Crab",
[2]="The MOTHERLODE!!",
},
[134012]={
[1]="Taskmaster Askari",
[2]="The MOTHERLODE!!",
},
[139269]={
[1]="Gloom Horror",
[2]="Waycrest Manor",
},
[136250]={
[1]="Hoodoo Hexer",
[2]="Temple of Sethraliss",
},
[129371]={
[1]="Riptide Shredder",
[2]="Siege of Boralus",
},
[129552]={
[1]="Monzumi",
[2]="Atal'Dazar",
},
[137233]={
[1]="Plague Toad",
[2]="Temple of Sethraliss",
},
[135258]={
[1]="Irontide Marauder",
[2]="Siege of Boralus",
},
[129548]={
[1]="Blacktooth Brute",
[2]="Freehold",
},
[135562]={
[1]="Venomous Ophidian",
[2]="Temple of Sethraliss",
},
[131864]={
[1]="Gorak Tul",
[2]="Waycrest Manor",
},
[138489]={
[1]="Shadow of Zul",
[2]="Kings' Rest",
},
[122969]={
[1]="Zanchuli Witch-Doctor",
[2]="Atal'Dazar",
},
[137517]={
[1]="Ashvane Destroyer",
[2]="Siege of Boralus",
},
[129232]={
[1]="Mogul Razdunk",
[2]="The MOTHERLODE!!",
},
[136643]={
[1]="Azerite Extractor",
[2]="The MOTHERLODE!!",
},
[137487]={
[1]="Skeletal Hunting Raptor",
[2]="Kings' Rest",
},
[134058]={
[1]="Galecaller Faye",
[2]="Shrine of the Storm",
},
[136264]={
[1]="Half-Finished Mummy",
[2]="Kings' Rest",
},
[129600]={
[1]="Bilge Rat Brinescale",
[2]="Freehold",
},
[122967]={
[1]="Priestess Alun'za",
[2]="Atal'Dazar",
},
[165111]={
[1]="德鲁斯特恶爪者",
[2]="塞兹仙林的迷雾",
},
[133361]={
[1]="Wasting Servant",
[2]="Waycrest Manor",
},
[135761]={
[1]="Thundering Totem",
[2]="Kings' Rest",
},
[126969]={
[1]="Trothak",
[2]="Freehold",
},
[125828]={
[1]="Zetapally",
[2]="Atal'Dazar",
},
[137485]={
[1]="Bloodsworn Agent",
[2]="Kings' Rest",
},
[142587]={
[1]="Devouring Maggot",
[2]="Waycrest Manor",
},
[135470]={
[1]="Aka'ali the Conqueror",
[2]="Kings' Rest",
},
[135552]={
[1]="Deathtouched Slaver",
[2]="Waycrest Manor",
},
[164920]={
[1]="德鲁斯特斩魂者",
[2]="塞兹仙林的迷雾",
},
[128455]={
[1]="T'lonja",
[2]="Atal'Dazar",
},
[130661]={
[1]="Venture Co. Earthshaper",
[2]="The MOTHERLODE!!",
},
[135231]={
[1]="Spectral Brute",
[2]="Kings' Rest",
},
[122984]={
[1]="Dazar'ai Colossus",
[2]="Atal'Dazar",
},
[134284]={
[1]="Fallen Deathspeaker",
[2]="The Underrot",
},
[131858]={
[1]="Thornguard",
[2]="Waycrest Manor",
},
[132126]={
[1]="Gilded Priestess",
[2]="Atal'Dazar",
},
[135764]={
[1]="Explosive Totem",
[2]="Kings' Rest",
},
[164926]={
[1]="德鲁斯特碎枝者",
[2]="塞兹仙林的迷雾",
},
[129529]={
[1]="Blacktooth Scrapper",
[2]="Freehold",
},
[134150]={
[1]="Runecarver Sorn",
[2]="Shrine of the Storm",
},
[127879]={
[1]="Shieldbearer of Zul",
[2]="Atal'Dazar",
},
[131823]={
[1]="Sister Malady",
[2]="Waycrest Manor",
},
[140447]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[131847]={
[1]="Waycrest Reveler",
[2]="Waycrest Manor",
},
[136005]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[122963]={
[1]="Rezan",
[2]="Atal'Dazar",
},
[135240]={
[1]="Soul Essence",
[2]="Waycrest Manor",
},
[133835]={
[1]="Feral Bloodswarmer",
[2]="The Underrot",
},
[130488]={
[1]="Mech Jockey",
[2]="The MOTHERLODE!!",
},
[133463]={
[1]="Venture Co. War Machine",
[2]="The MOTHERLODE!!",
},
[126918]={
[1]="Irontide Crackshot",
[2]="Freehold",
},
[136083]={
[1]="Forgotten Denizen",
[2]="Shrine of the Storm",
},
[134232]={
[1]="Hired Assassin",
[2]="The MOTHERLODE!!",
},
[134005]={
[1]="Shalebiter",
[2]="The MOTHERLODE!!",
},
[137484]={
[1]="King A'akul",
[2]="Kings' Rest",
},
[133852]={
[1]="Living Rot",
[2]="The Underrot",
},
[141283]={
[1]="Kul Tiran Halberd",
[2]="Siege of Boralus",
},
[135765]={
[1]="Torrent Totem",
[2]="Kings' Rest",
},
[136249]={
[1]="Guardian Elemental",
[2]="Shrine of the Storm",
},
[134994]={
[1]="Spectral Headhunter",
[2]="Kings' Rest",
},
[134251]={
[1]="Seneschal M'bara",
[2]="Kings' Rest",
},
[129527]={
[1]="Bilge Rat Buccaneer",
[2]="Freehold",
},
[129640]={
[1]="Snarling Dockhound",
[2]="Siege of Boralus",
},
[127757]={
[1]="Reanimated Honor Guard",
[2]="Atal'Dazar",
},
[131685]={
[1]="Runic Disciple",
[2]="Waycrest Manor",
},
[134157]={
[1]="Shadow-Borne Warrior",
[2]="Kings' Rest",
},
[134137]={
[1]="Temple Attendant",
[2]="Shrine of the Storm",
},
[129517]={
[1]="Reanimated Raptor",
[2]="Atal'Dazar",
},
[127019]={
[1]="Training Dummy",
[2]="Freehold",
},
[133379]={
[1]="Adderis",
[2]="Temple of Sethraliss",
},
[139800]={
[1]="Galecaller Apprentice",
[2]="Shrine of the Storm",
},
[129547]={
[1]="Blacktooth Knuckleduster",
[2]="Freehold",
},
[137625]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[135048]={
[1]="Gorestained Piglet",
[2]="Waycrest Manor",
},
[135239]={
[1]="Spectral Witch Doctor",
[2]="Kings' Rest",
},
[135235]={
[1]="Spectral Beastmaster",
[2]="Kings' Rest",
},
[134056]={
[1]="Aqu'sirr",
[2]="Shrine of the Storm",
},
[125977]={
[1]="Reanimation Totem",
[2]="Atal'Dazar",
},
[128434]={
[1]="Feasting Skyscreamer",
[2]="Atal'Dazar",
},
[129699]={
[1]="Ludwig Von Tortollan",
[2]="Freehold",
},
[139425]={
[1]="Crazed Incubator",
[2]="Temple of Sethraliss",
},
[133430]={
[1]="Venture Co. Mastermind",
[2]="The MOTHERLODE!!",
},
[139097]={
[1]="Sandswept Marksman",
[2]="Temple of Sethraliss",
},
[141566]={
[1]="Scrimshaw Gutter",
[2]="Siege of Boralus",
},
[135263]={
[1]="Ashvane Spotter",
[2]="Siege of Boralus",
},
[129214]={
[1]="Coin-Operated Crowd Pummeler",
[2]="The MOTHERLODE!!",
},
[138369]={
[1]="Footbomb Hooligan",
[2]="The MOTHERLODE!!",
},
[135475]={
[1]="Kula the Butcher",
[2]="Kings' Rest",
},
[138254]={
[1]="Irontide Powdershot",
[2]="Siege of Boralus",
},
[137103]={
[1]="Blood Visage",
[2]="The Underrot",
},
[133482]={
[1]="Crawler Mine",
[2]="The MOTHERLODE!!",
},
[132532]={
[1]="Kul Tiran Marksman",
[2]="Siege of Boralus",
},
[134338]={
[1]="Tidesage Enforcer",
[2]="Shrine of the Storm",
},
[134331]={
[1]="King Rahu'ai",
[2]="Kings' Rest",
},
[136391]={
[1]="Heart Guardian",
[2]="Temple of Sethraliss",
},
[129208]={
[1]="Dread Captain Lockwood",
[2]="Siege of Boralus",
},
[137626]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[138493]={
[1]="Minion of Zul",
[2]="Kings' Rest",
},
[130400]={
[1]="Irontide Crusher",
[2]="Freehold",
},
[133836]={
[1]="Reanimated Guardian",
[2]="The Underrot",
},
[122972]={
[1]="Dazar'ai Augur",
[2]="Atal'Dazar",
},
[131492]={
[1]="Devout Blood Priest",
[2]="The Underrot",
},
[136006]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[138740]={
[1]="Musashitake",
[2]="The Underrot",
},
[134418]={
[1]="Drowned Depthbringer",
[2]="Shrine of the Storm",
},
[129550]={
[1]="Bilge Rat Padfoot",
[2]="Freehold",
},
[135204]={
[1]="Spectral Hex Priest",
[2]="Kings' Rest",
},
[129788]={
[1]="Irontide Bonesaw",
[2]="Freehold",
},
[141938]={
[1]="Ashvane Sniper",
[2]="Siege of Boralus",
},
[131666]={
[1]="Coven Thornshaper",
[2]="Waycrest Manor",
},
[133935]={
[1]="Animated Guardian",
[2]="Kings' Rest",
},
[122971]={
[1]="Dazar'ai Juggernaut",
[2]="Atal'Dazar",
},
[129369]={
[1]="Irontide Raider",
[2]="Siege of Boralus",
},
[133007]={
[1]="Unbound Abomination",
[2]="The Underrot",
},
[135474]={
[1]="Thistle Acolyte",
[2]="Waycrest Manor",
},
[134364]={
[1]="Faithless Tender",
[2]="Temple of Sethraliss",
},
[130012]={
[1]="Irontide Ravager",
[2]="Freehold",
},
[138465]={
[1]="Ashvane Cannoneer",
[2]="Siege of Boralus",
},
[127111]={
[1]="Irontide Oarsman",
[2]="Freehold",
},
[136186]={
[1]="Tidesage Spiritualist",
[2]="Shrine of the Storm",
},
[133593]={
[1]="Expert Technician",
[2]="The MOTHERLODE!!",
},
[134139]={
[1]="Shrine Templar",
[2]="Shrine of the Storm",
},
[136976]={
[1]="T'zala",
[2]="Kings' Rest",
},
[136483]={
[1]="Ashvane Deckhand",
[2]="Siege of Boralus",
},
[138019]={
[1]="Kul Tiran Vanguard",
[2]="Siege of Boralus",
},
[130485]={
[1]="Mechanized Peacekeeper",
[2]="The MOTHERLODE!!",
},
[131402]={
[1]="Underrot Tick",
[2]="The Underrot",
},
[132530]={
[1]="Kul Tiran Vanguard",
[2]="Siege of Boralus",
},
[134612]={
[1]="Grasping Tentacles",
[2]="Shrine of the Storm",
},
[135365]={
[1]="Matron Alma",
[2]="Waycrest Manor",
},
[127119]={
[1]="Freehold Deckhand",
[2]="Freehold",
},
[131318]={
[1]="Elder Leaxa",
[2]="The Underrot",
},
[135406]={
[1]="Animated Gold",
[2]="Kings' Rest",
},
[129526]={
[1]="Bilge Rat Swabby",
[2]="Freehold",
},
[131818]={
[1]="Marked Sister",
[2]="Waycrest Manor",
},
[128551]={
[1]="Irontide Mastiff",
[2]="Freehold",
},
[129372]={
[1]="Blacktar Bomber",
[2]="Siege of Boralus",
},
[133943]={
[1]="Minion of Zul",
[2]="Kings' Rest",
},
[139949]={
[1]="Plague Doctor",
[2]="Temple of Sethraliss",
},
[137486]={
[1]="Queen Patlaa",
[2]="Kings' Rest",
},
[136214]={
[1]="Windspeaker Heldis",
[2]="Shrine of the Storm",
},
[139110]={
[1]="Spark Channeler",
[2]="Temple of Sethraliss",
},
[136552]={
[1]="Kao-Tien Marauder",
[2]="Atal'Dazar",
},
[135903]={
[1]="Manifestation of the Deep",
[2]="Shrine of the Storm",
},
[126919]={
[1]="Irontide Stormcaller",
[2]="Freehold",
},
[127799]={
[1]="Dazar'ai Honor Guard",
[2]="Atal'Dazar",
},
[128969]={
[1]="Ashvane Commander",
[2]="Siege of Boralus",
},
[137405]={
[1]="Gripping Terror",
[2]="Siege of Boralus",
},
[138281]={
[1]="Faceless Corruptor",
[2]="The Underrot",
},
[141495]={
[1]="Kul Tiran Footman",
[2]="Siege of Boralus",
},
[137969]={
[1]="Interment Construct",
[2]="Kings' Rest",
},
[134060]={
[1]="Lord Stormsong",
[2]="Shrine of the Storm",
},
[131825]={
[1]="Sister Briar",
[2]="Waycrest Manor",
},
[136984]={
[1]="Reban",
[2]="Kings' Rest",
},
[130435]={
[1]="Addled Thug",
[2]="The MOTHERLODE!!",
},
[139626]={
[1]="Dredged Sailor",
[2]="Shrine of the Storm",
},
[131587]={
[1]="Bewitched Captain",
[2]="Waycrest Manor",
},
[137204]={
[1]="Hoodoo Hexer",
[2]="Temple of Sethraliss",
},
[135052]={
[1]="Blight Toad",
[2]="Waycrest Manor",
},
[130909]={
[1]="Fetid Maggot",
[2]="The Underrot",
},
[138255]={
[1]="Ashvane Spotter",
[2]="Siege of Boralus",
},
[131850]={
[1]="Maddened Survivalist",
[2]="Waycrest Manor",
},
[139422]={
[1]="Scaled Krolusk Tamer",
[2]="Temple of Sethraliss",
},
[128651]={
[1]="Hadal Darkfathom",
[2]="Siege of Boralus",
},
[133944]={
[1]="Aspix",
[2]="Temple of Sethraliss",
},
[133663]={
[1]="Fanatical Headhunter",
[2]="The Underrot",
},
[135234]={
[1]="Diseased Mastiff",
[2]="Waycrest Manor",
},
[131383]={
[1]="Sporecaller Zancha",
[2]="The Underrot",
},
[131527]={
[1]="Lord Waycrest",
[2]="Waycrest Manor",
},
[174773]={
[1]="怨毒影魔",
[2]="塞兹仙林的迷雾",
},
[133384]={
[1]="Merektha",
[2]="Temple of Sethraliss",
},
[130653]={
[1]="Wanton Sapper",
[2]="The MOTHERLODE!!",
},
[130437]={
[1]="Mine Rat",
[2]="The MOTHERLODE!!",
},
[136330]={
[1]="Soul Thorns",
[2]="Waycrest Manor",
},
[129598]={
[1]="Freehold Pack Mule",
[2]="Freehold",
},
[129370]={
[1]="Irontide Waveshaper",
[2]="Siege of Boralus",
},
[134514]={
[1]="Abyssal Cultist",
[2]="Shrine of the Storm",
},
[136470]={
[1]="Refreshment Vendor",
[2]="The MOTHERLODE!!",
},
[134390]={
[1]="Sand-crusted Striker",
[2]="Temple of Sethraliss",
},
[137474]={
[1]="King Timalji",
[2]="Kings' Rest",
},
[138063]={
[1]="Posh Vacationer",
[2]="The MOTHERLODE!!",
},
[134616]={
[1]="Krolusk Pup",
[2]="Temple of Sethraliss",
},
[133963]={
[1]="Test Subject",
[2]="The MOTHERLODE!!",
},
[135169]={
[1]="Spirit Drain Totem",
[2]="The Underrot",
},
[134417]={
[1]="Deepsea Ritualist",
[2]="Shrine of the Storm",
},
[136160]={
[1]="King Dazar",
[2]="Kings' Rest",
},
[135241]={
[1]="Bilge Rat Pillager",
[2]="Siege of Boralus",
},
[130024]={
[1]="Soggy Shiprat",
[2]="Freehold",
},
[130011]={
[1]="Irontide Buccaneer",
[2]="Freehold",
},
[134993]={
[1]="Mchimba the Embalmer",
[2]="Kings' Rest",
},
[134991]={
[1]="Sandfury Stonefist",
[2]="Temple of Sethraliss",
},
[129758]={
[1]="Irontide Grenadier",
[2]="Freehold",
},
[135329]={
[1]="Matron Bryndle",
[2]="Waycrest Manor",
},
[135846]={
[1]="Sand-Crusted Striker",
[2]="Temple of Sethraliss",
},
[129602]={
[1]="Irontide Enforcer",
[2]="Freehold",
},
[133912]={
[1]="Bloodsworn Defiler",
[2]="The Underrot",
},
[134600]={
[1]="Sandswept Marksman",
[2]="Temple of Sethraliss",
},
[134599]={
[1]="Imbued Stormcaller",
[2]="Temple of Sethraliss",
},
[131669]={
[1]="Jagged Hound",
[2]="Waycrest Manor",
},
[134629]={
[1]="Scaled Krolusk Rider",
[2]="Temple of Sethraliss",
},
[134686]={
[1]="Mature Krolusk",
[2]="Temple of Sethraliss",
},
[137591]={
[1]="Healing Tide Totem",
[2]="Kings' Rest",
},
[137940]={
[1]="Safety Shark",
[2]="The MOTHERLODE!!",
},
[139946]={
[1]="Heart Guardian",
[2]="Temple of Sethraliss",
},
[126848]={
[1]="Captain Eudora",
[2]="Freehold",
},
[135192]={
[1]="Honored Raptor",
[2]="Kings' Rest",
},
[127124]={
[1]="Freehold Barhand",
[2]="Freehold",
},
[130436]={
[1]="Off-Duty Laborer",
[2]="The MOTHERLODE!!",
},
[129802]={
[1]="Earthrager",
[2]="The MOTHERLODE!!",
},
[142199]={
[1]="Alpine Hawk",
[2]="Freehold",
},
[127315]={
[1]="Reanimation Totem",
[2]="Atal'Dazar",
},
[128435]={
[1]="Toxic Saurid",
[2]="Atal'Dazar",
},
[127106]={
[1]="Irontide Officer",
[2]="Freehold",
},
[130896]={
[1]="Blackout Barrel",
[2]="Freehold",
},
[138464]={
[1]="Ashvane Deckhand",
[2]="Siege of Boralus",
},
[130522]={
[1]="Freehold Shipmate",
[2]="Freehold",
},
[134173]={
[1]="Animated Droplet",
[2]="Shrine of the Storm",
},
[138187]={
[1]="Grotesque Horror",
[2]="The Underrot",
},
[131585]={
[1]="Enthralled Guard",
[2]="Waycrest Manor",
},
[122965]={
[1]="Vol'kaal",
[2]="Atal'Dazar",
},
[137521]={
[1]="Irontide Powdershot",
[2]="Siege of Boralus",
},
[134174]={
[1]="Shadow-Borne Witch Doctor",
[2]="Kings' Rest",
},
[138048]={
[1]="Training Dummy",
[2]="Waycrest Manor",
},
[141939]={
[1]="Ashvane Spotter",
[2]="Siege of Boralus",
},
[131819]={
[1]="Coven Diviner",
[2]="Waycrest Manor",
},
[136934]={
[1]="Weapons Tester",
[2]="The MOTHERLODE!!",
},
[134691]={
[1]="Static-charged Dervish",
[2]="Temple of Sethraliss",
},
[141285]={
[1]="Kul Tiran Marksman",
[2]="Siege of Boralus",
},
[131677]={
[1]="Heartsbane Runeweaver",
[2]="Waycrest Manor",
},
[133685]={
[1]="Befouled Spirit",
[2]="The Underrot",
},
[131824]={
[1]="Sister Solena",
[2]="Waycrest Manor",
},
[129373]={
[1]="Dockhound Packmaster",
[2]="Siege of Boralus",
},
[141282]={
[1]="Kul Tiran Footman",
[2]="Siege of Boralus",
},
[132481]={
[1]="Kul Tiran Vanguard",
[2]="Siege of Boralus",
},
[130404]={
[1]="Vermin Trapper",
[2]="Freehold",
},
[132713]={
[1]="Mogul Razdunk",
[2]="The MOTHERLODE!!",
},
[144071]={
[1]="Irontide Waveshaper",
[2]="Siege of Boralus",
},
[126983]={
[1]="Harlan Sweete",
[2]="Freehold",
},
[144232]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[136076]={
[1]="Agitated Nimbus",
[2]="Temple of Sethraliss",
},
[128649]={
[1]="Sergeant Bainbridge",
[2]="Siege of Boralus",
},
[129231]={
[1]="Rixxa Fluxflame",
[2]="The MOTHERLODE!!",
},
[134617]={
[1]="Krolusk Hatchling",
[2]="Temple of Sethraliss",
},
[131436]={
[1]="Chosen Blood Matron",
[2]="The Underrot",
},
[164929]={
[1]="仙木灵居民",
[2]="塞兹仙林的迷雾",
},
[136353]={
[1]="Colossal Tentacle",
[2]="Shrine of the Storm",
},
[164921]={
[1]="德鲁斯特收割者",
[2]="塞兹仙林的迷雾",
},
[137473]={
[1]="Guard Captain Atu",
[2]="Kings' Rest",
},
[144286]={
[1]="Asset Manager",
[2]="The MOTHERLODE!!",
},
[130635]={
[1]="Stonefury",
[2]="The MOTHERLODE!!",
},
[135472]={
[1]="Zanazal the Wise",
[2]="Kings' Rest",
},
[141284]={
[1]="Kul Tiran Wavetender",
[2]="Siege of Boralus",
},
[122973]={
[1]="Dazar'ai Confessor",
[2]="Atal'Dazar",
},
[126928]={
[1]="Irontide Corsair",
[2]="Freehold",
},
[138061]={
[1]="Venture Co. Longshoreman",
[2]="The MOTHERLODE!!",
},
[138064]={
[1]="Posh Vacationer",
[2]="The MOTHERLODE!!",
},
[133870]={
[1]="Diseased Lasher",
[2]="The Underrot",
},
[134828]={
[1]="Aqualing",
[2]="Shrine of the Storm",
},
[144231]={
[1]="Rowdy Reveler",
[2]="The MOTHERLODE!!",
},
[134990]={
[1]="Charged Dust Devil",
[2]="Temple of Sethraliss",
},
[128652]={
[1]="Viq'Goth",
[2]="Siege of Boralus",
},
[134063]={
[1]="Brother Ironhull",
[2]="Shrine of the Storm",
},
[126847]={
[1]="Captain Raoul",
[2]="Freehold",
},
[139799]={
[1]="Ironhull Apprentice",
[2]="Shrine of the Storm",
},
[137029]={
[1]="Ordnance Specialist",
[2]="The MOTHERLODE!!",
},
[134144]={
[1]="Living Current",
[2]="Shrine of the Storm",
},
[132491]={
[1]="Kul Tiran Marksman",
[2]="Siege of Boralus",
},
[128967]={
[1]="Ashvane Sniper",
[2]="Siege of Boralus",
},
[136549]={
[1]="Ashvane Cannoneer",
[2]="Siege of Boralus",
},
[122986]={
[1]="Wild Skyscreamer",
[2]="Atal'Dazar",
},
[131863]={
[1]="Raal the Gluttonous",
[2]="Waycrest Manor",
},
[135245]={
[1]="Bilge Rat Demolisher",
[2]="Siege of Boralus",
},
[131849]={
[1]="Crazed Marksman",
[2]="Waycrest Manor",
},
[134701]={
[1]="Blood Effigy",
[2]="The Underrot",
},
[130521]={
[1]="Freehold Deckhand",
[2]="Freehold",
},
[133436]={
[1]="Venture Co. Skyscorcher",
[2]="The MOTHERLODE!!",
},
[122968]={
[1]="Yazma",
[2]="Atal'Dazar",
},
[122970]={
[1]="Shadowblade Stalker",
[2]="Atal'Dazar",
},
[129366]={
[1]="Bilge Rat Buccaneer",
[2]="Siege of Boralus",
},
[135007]={
[1]="Orb Guardian",
[2]="Temple of Sethraliss",
},
[135167]={
[1]="Spectral Berserker",
[2]="Kings' Rest",
},
[1860]={
[1]="Graz'krast",
[2]="Shrine of the Storm",
},
[130575]={
[1]="Wandering Axebeak",
[2]="Atal'Dazar",
},
[137989]={
[1]="Embalming Fluid",
[2]="Kings' Rest",
},
[135989]={
[1]="Shieldbearer of Zul",
[2]="Atal'Dazar",
},
[142454]={
[1]="Ashtail Bandicoon",
[2]="Freehold",
},
[137716]={
[1]="Bottom Feeder",
[2]="The MOTHERLODE!!",
},
[133345]={
[1]="Feckless Assistant",
[2]="The MOTHERLODE!!",
},
[137511]={
[1]="Bilge Rat Cutthroat",
[2]="Siege of Boralus",
},
[129367]={
[1]="Bilge Rat Tempest",
[2]="Siege of Boralus",
},
[137830]={
[1]="Pallid Gorger",
[2]="Waycrest Manor",
},
[137614]={
[1]="Demolishing Terror",
[2]="Siege of Boralus",
},
[131670]={
[1]="Heartsbane Vinetwister",
[2]="Waycrest Manor",
},
[136297]={
[1]="Forgotten Denizen",
[2]="Shrine of the Storm",
},
[131009]={
[1]="Spirit of Gold",
[2]="Atal'Dazar",
},
[140038]={
[1]="Abyssal Eel",
[2]="Shrine of the Storm",
},
[129599]={
[1]="Cutwater Knife Juggler",
[2]="Freehold",
},
[137478]={
[1]="Queen Wasi",
[2]="Kings' Rest",
},
[134041]={
[1]="Infected Peasant",
[2]="Waycrest Manor",
},
[136541]={
[1]="Bile Oozeling",
[2]="Waycrest Manor",
},
[137516]={
[1]="Ashvane Invader",
[2]="Siege of Boralus",
},
[134069]={
[1]="Vol'zith the Whisperer",
[2]="Shrine of the Storm",
},
[132056]={
[1]="Venture Co. Skyscorcher",
[2]="The MOTHERLODE!!",
},
[134423]={
[1]="Abyss Dweller",
[2]="Shrine of the Storm",
},
[133432]={
[1]="Venture Co. Alchemist",
[2]="The MOTHERLODE!!",
},
[130489]={
[1]="Dazarian Stalker",
[2]="Freehold",
},
[135322]={
[1]="The Golden Serpent",
[2]="Kings' Rest",
},
[135049]={
[1]="Dreadwing Raven",
[2]="Waycrest Manor",
},
[129559]={
[1]="Cutwater Duelist",
[2]="Freehold",
},
[134158]={
[1]="Shadow-Borne Champion",
[2]="Kings' Rest",
},
[126023]={
[1]="Harbor Saurid",
[2]="The Underrot",
},
[136295]={
[1]="Sunken Denizen",
[2]="Shrine of the Storm",
},
},
["minor_height_scale"]=0.99999994039536,
["patch_version"]=17,
["aura_timer_text_size"]=10,
["hook_auto_imported"]={
["Dont Have Aura"]=1,
["Extra Border"]=2,
["Players Targetting Amount"]=4,
["Color Automation"]=1,
["Combo Points"]=6,
["Aura Reorder"]=3,
["Cast Bar Icon Config"]=2,
["Reorder Nameplate"]=4,
["Jaina Encounter"]=6,
["Targetting Alpha"]=3,
["Execute Range"]=1,
["Blockade Encounter"]=1,
["Hide Neutral Units"]=1,
["Bwonsamdi Reaping"]=1,
["Monk Statue"]=2,
["Target Color"]=3,
["Attacking Specific Unit"]=2,
},
["plate_config"]={
["friendlyplayer"]={
["mana"]={
[2]=4,
},
["module_enabled"]=false,
["level_text_anchor"]={
["x"]=1,
["side"]=5,
},
["big_actortitle_text_outline"]="OUTLINE",
["level_text_size"]=8,
["health_incombat"]={
[1]=120,
[2]=12,
},
["big_actorname_text_size"]=10,
["quest_color_enemy"]={
[1]=1,
[2]=0.369,
[3]=0,
},
["cast"]={
[1]=120,
},
["percent_show_health"]=true,
["percent_text_anchor"]={
["side"]=3,
["y"]=1,
},
["level_text_font"]="Accidental Presidency",
["spellname_text_size"]=9,
["level_text_alpha"]=0.29999998211861,
["big_actorname_text_shadow_color_offset"]={
[1]=1,
[2]=-1,
},
["percent_text_ooc"]=true,
["quest_color_neutral"]={
[1]=1,
[2]=0.65,
[3]=0,
},
["big_actortitle_text_shadow_color"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
["spellpercent_text_enabled"]=true,
["spellpercent_text_size"]=9,
["spellname_text_font"]="Accidental Presidency",
["spellname_text_color"]={
[1]=0.95294117647059,
[3]=0.9921568627451,
},
["buff_frame_y_offset"]=0,
["spellname_text_anchor"]={
["y"]=1,
["side"]=3,
},
["percent_text_outline"]="NONE",
["power_percent_text_font"]="Accidental Presidency",
["percent_text_enabled"]=true,
["level_text_enabled"]=true,
["big_actorname_text_font"]="Accidental Presidency",
["health"]={
[1]=120,
[2]=12,
},
["big_actortitle_text_size"]=10,
["actorname_text_anchor"]={
["y"]=-3,
["x"]=-1,
["side"]=1,
},
["percent_text_font"]="Accidental Presidency",
["big_actortitle_text_font"]="Accidental Presidency",
["big_actorname_text_outline"]="OUTLINE",
["big_actorname_text_shadow_color"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
["quest_enabled"]=true,
["actorname_text_size"]=11,
["spellpercent_text_anchor"]={
["x"]=1,
["side"]=5,
},
["only_thename"]=true,
["spellpercent_text_outline"]="NONE",
["actorname_text_font"]="Accidental Presidency",
["cast_incombat"]={
[1]=120,
},
["big_actortitle_text_shadow_color_offset"]={
[1]=1,
[2]=-1,
},
["mana_incombat"]={
[2]=4,
},
["percent_text_size"]=8,
["spellpercent_text_font"]="Accidental Presidency",
["all_names"]=true,
},
["friendlynpc"]={
["big_actortitle_text_size"]=10,
["mana_incombat"]={
[1]=150,
[2]=10,
},
["power_percent_text_shadow_color"]={
[1]=0,
[2]=0,
[3]=0,
[4]=1,
},
["percent_text_enabled"]=true,
["cast_incombat"]={
[2]=10,
},
["spellpercent_text_font"]="Accidental Presidency",
["castbar_enabled"]=true,
["actorname_text_spacing"]=9,
["health_incombat"]={
[2]=12,
},
["health"]={
[1]=120,
},
["cast"]={
[1]=120,
},
["power_enabled"]=true,
["healthbar_color"]={
[1]=0.564706,
[2]=0.933333,
[3]=0.564706,
[4]=1,
},
["level_text_alpha"]=0.29999998211861,
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
["quest_color_neutral"]={
[1]=1,
[2]=0.65,
[3]=0,
},
["percent_text_font"]="Accidental Presidency",
["actorname_text_outline"]="OUTLINE",
["only_names"]=false,
["pvp_always_incombat"]=true,
["big_actortitle_text_font"]="Accidental Presidency",
["power_percent_text_size"]=9,
["click_through"]=true,
["level_text_font"]="Accidental Presidency",
["spellpercent_text_enabled"]=true,
["big_actorname_text_font"]="Accidental Presidency",
["power_percent_text_font"]="Accidental Presidency",
["spellname_text_outline"]="OUTLINE",
["actorname_text_font"]="Accidental Presidency",
["y_position_offset"]=-50,
["power_percent_text_anchor"]={
["x"]=0,
["side"]=9,
["y"]=0,
},
["quest_color_enemy"]={
[1]=1,
[2]=0.369,
[3]=0,
},
["healthbar_color_by_hp"]=false,
["spellname_text_font"]="Accidental Presidency",
["mana"]={
[1]=150,
[2]=10,
},
["power_percent_text_enabled"]=true,
["power_percent_text_alpha"]=1,
["big_actorname_text_size"]=10,
["healthbar_enabled"]=true,
["power_percent_text_outline"]="OUTLINE",
["percent_show_health"]=true,
["percent_text_size"]=10,
},
["enemynpc"]={
["level_text_anchor"]={
["y"]=11.5,
["x"]=-1,
["side"]=5,
},
["actorname_text_outline"]="OUTLINE",
["spellname_text_outline"]="NONE",
["spellpercent_text_outline"]="NONE",
["spellpercent_text_size"]=9,
["spellpercent_text_anchor"]={
["x"]=1,
["side"]=5,
},
["level_text_font"]="Accidental Presidency",
["spellname_text_font"]="Accidental Presidency",
["health"]={
[1]=120,
[2]=14.605162620544,
},
["cast"]={
[1]=120,
[2]=8,
},
["health_incombat"]={
[2]=14,
},
["percent_text_font"]="Accidental Presidency",
["power_percent_text_font"]="Accidental Presidency",
["level_text_alpha"]=1,
["actorname_text_anchor"]={
["y"]=-3,
["x"]=-1,
["side"]=1,
},
["spellname_text_anchor"]={
["side"]=3,
["y"]=1,
},
["actorname_text_font"]="Accidental Presidency",
["cast_incombat"]={
[2]=8,
},
["percent_text_size"]=10.803844451904,
["spellname_text_size"]=9,
["percent_text_outline"]="NONE",
["spellpercent_text_font"]="Accidental Presidency",
["spellname_text_color"]={
[1]=0.95294117647059,
[3]=0.9921568627451,
},
["big_actorname_text_font"]="Accidental Presidency",
["big_actortitle_text_font"]="Accidental Presidency",
},
["global_health_width"]=120,
["enemyplayer"]={
["level_text_size"]=8,
["actorname_text_outline"]="OUTLINE",
["actorname_text_spacing"]=10,
["big_actortitle_text_font"]="Accidental Presidency",
["percent_text_font"]="Accidental Presidency",
["level_text_font"]="Accidental Presidency",
["spellname_text_font"]="Accidental Presidency",
["spellpercent_text_size"]=9,
["big_actorname_text_size"]=10,
["percent_text_anchor"]={
["y"]=1,
["side"]=3,
},
["spellname_text_size"]=9,
["spellpercent_text_outline"]="NONE",
["big_actortitle_text_size"]=10,
["percent_text_outline"]="NONE",
["all_names"]=true,
["quest_color_enemy"]={
[1]=1,
[2]=0.369,
[3]=0,
},
["actorname_text_anchor"]={
["side"]=1,
["y"]=-3,
["x"]=-1,
},
["health"]={
[1]=120,
},
["big_actorname_text_font"]="Accidental Presidency",
["percent_text_size"]=8,
["cast"]={
[1]=120,
[2]=8,
},
["quest_enabled"]=true,
["quest_color_neutral"]={
[1]=1,
[2]=0.65,
[3]=0,
},
["spellpercent_text_anchor"]={
["x"]=1,
["side"]=5,
},
["health_incombat"]={
[2]=12,
},
["level_text_anchor"]={
["x"]=1,
["side"]=5,
},
["spellname_text_anchor"]={
["side"]=3,
["y"]=1,
},
["level_text_alpha"]=0.29999998211861,
["spellpercent_text_font"]="Accidental Presidency",
["actorname_text_size"]=11,
["power_percent_text_font"]="Accidental Presidency",
["actorname_text_font"]="Accidental Presidency",
["spellname_text_color"]={
[1]=0.95294117647059,
[3]=0.9921568627451,
},
},
["global_health_height"]=14,
["player"]={
["percent_text_font"]="Accidental Presidency",
["actorname_text_font"]="Accidental Presidency",
["power_percent_text_font"]="Accidental Presidency",
["big_actorname_text_font"]="Accidental Presidency",
["spellname_text_font"]="Accidental Presidency",
["big_actortitle_text_font"]="Accidental Presidency",
["power_percent_text_color"]={
[1]=1,
[2]=1,
[3]=1,
},
["spellpercent_text_font"]="Accidental Presidency",
["click_through"]=true,
["module_enabled"]=false,
["level_text_font"]="Accidental Presidency",
},
},
["minor_width_scale"]=0.99999994039536,
["cast_statusbar_color"]={
[2]=0.85882352941176,
[4]=0.96000000089407,
},
["aura_consolidate"]=true,
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
["cast_statusbar_fadein_time"]=0.02081192471087,
["npc_colors"]={
[130485]={
[1]=true,
[2]=false,
[3]="peru",
},
[131666]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[137486]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[128434]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[141284]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[131492]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[130488]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[129600]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[139425]={
[1]=false,
[2]=false,
[3]="honeydew",
},
[133482]={
[1]=true,
[2]=false,
[3]="maroon",
},
[136549]={
[1]=true,
[2]=false,
[3]="lightcoral",
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
[132126]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[134251]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[133593]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[122973]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[136006]={
[1]=false,
[2]=false,
[3]="blue",
},
[129559]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[136295]={
[1]=true,
[2]=false,
[3]="peru",
},
[134418]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[135239]={
[1]=true,
[2]=false,
[3]="paleturquoise",
},
[132532]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[134144]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[129367]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[134364]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[133685]={
[1]=true,
[2]=false,
[3]="plum",
},
[129227]={
[1]=false,
[2]=false,
[3]="maroon",
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
[131858]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[135204]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[134158]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[131677]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[136076]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[127315]={
[1]=true,
[2]=false,
[3]="plum",
},
[137103]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[131586]={
[1]=true,
[2]=false,
[3]="peru",
},
[134338]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[125977]={
[1]=true,
[2]=false,
[3]="plum",
},
[136186]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[134012]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[134174]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[136005]={
[1]=false,
[2]=false,
[3]="blue",
},
[137478]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[138061]={
[1]=false,
[2]=false,
[3]="magenta",
},
[133345]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[128967]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[131685]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[122971]={
[1]=false,
[2]=false,
[3]="magenta",
},
[137511]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[136353]={
[1]=true,
[2]=false,
[3]="royalblue",
},
[144071]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[132491]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[137521]={
[1]=true,
[2]=false,
[3]="cornflowerblue",
},
[133430]={
[1]=true,
[2]=false,
[3]="cornflowerblue",
},
[138187]={
[1]=true,
[2]=false,
[3]="paleturquoise",
},
[126928]={
[1]=false,
[2]=false,
[3]="navajowhite",
},
[138255]={
[1]=true,
[2]=false,
[3]="maroon",
},
[133870]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[136214]={
[1]=true,
[2]=false,
[3]="plum",
},
[134599]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[135241]={
[1]=true,
[2]=false,
[3]="peru",
},
[134157]={
[1]=true,
[2]=false,
[3]="peru",
},
[134150]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[135258]={
[1]=false,
[2]=false,
[3]="peru",
},
[133912]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[136470]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[141283]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[137713]={
[1]=true,
[2]=false,
[3]="paleturquoise",
},
[133835]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[135263]={
[1]=true,
[2]=false,
[3]="maroon",
},
[139422]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[130661]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[135365]={
[1]=true,
[2]=false,
[3]="plum",
},
[126919]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[134701]={
[1]=true,
[2]=false,
[3]="maroon",
},
[138063]={
[1]=false,
[2]=false,
[3]="blue",
},
[131817]={
[1]=false,
[2]=false,
[3]="magenta",
},
[134629]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[135474]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[137830]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[131670]={
[1]=true,
[2]=false,
[3]="palegreen",
},
[136139]={
[1]=true,
[2]=false,
[3]="peru",
},
[131818]={
[1]=false,
[2]=false,
[3]="plum",
},
[139949]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[134137]={
[1]=true,
[2]=false,
[3]="dodgerblue",
},
[134417]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[129370]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134139]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[138064]={
[1]=false,
[2]=false,
[3]="blue",
},
[122984]={
[1]=true,
[2]=false,
[3]="peru",
},
[130404]={
[1]=true,
[2]=false,
[3]="peru",
},
[129788]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[135167]={
[1]=true,
[2]=false,
[3]="peru",
},
[134232]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[127111]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[131585]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[133432]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[129602]={
[1]=true,
[2]=false,
[3]="navajowhite",
},
[135235]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[122972]={
[1]=true,
[2]=false,
[3]="lightsalmon",
},
[128435]={
[1]=false,
[2]=false,
[3]="aqua",
},
[137716]={
[1]=false,
[2]=false,
[3]="blue",
},
[134331]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[130436]={
[1]=false,
[2]=false,
[3]="aqua",
},
[126918]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[137484]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[134284]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[130435]={
[1]=false,
[2]=false,
[3]="magenta",
},
[135007]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[129366]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[131587]={
[1]=true,
[2]=false,
[3]="peru",
},
[128969]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
[133852]={
[1]=true,
[2]=false,
[3]="olivedrab",
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
[134990]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[138465]={
[1]=true,
[2]=false,
[3]="lightcoral",
},
[127106]={
[1]=true,
[2]=false,
[3]="peru",
},
[133436]={
[1]=true,
[2]=false,
[3]="lightskyblue",
},
[136249]={
[1]=true,
[2]=false,
[3]="plum",
},
[141285]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[129547]={
[1]=true,
[2]=false,
[3]="olivedrab",
},
[122969]={
[1]=true,
[2]=false,
[3]="honeydew",
},
[135329]={
[1]=true,
[2]=false,
[3]="plum",
},
[134600]={
[1]=true,
[2]=false,
[3]="peru",
},
[134514]={
[1]=true,
[2]=false,
[3]="lightgreen",
},
[129529]={
[1]=true,
[2]=false,
[3]="goldenrod",
},
},
["script_auto_imported"]={
["Auto Set Skull"]=11,
["Cast - Castbar is Timer [P]"]=2,
["Aura - Invalidate Unit"]=1,
["Color Change"]=1,
["Cast - Tank Interrupt"]=12,
["Aura - Blink Time Left"]=13,
["Unit - Show Energy"]=11,
["Spiteful Affix"]=3,
["Unit Power"]=1,
["Unit - Important"]=11,
["Cast - Alert + Timer [P]"]=2,
["Cast - Very Important"]=12,
["Aura Border Color"]=1,
["Unit - Main Target"]=11,
["Cast - Frontal Cone"]=11,
["Countdown"]=11,
["Fixate On You"]=11,
["Explosion Affix M+"]=11,
["Cast - Important Target [P]"]=1,
["Blink by Time Left"]=1,
["Cast - Ultra Important"]=11,
["Unit - Health Markers"]=12,
["Cast - Big Alert"]=12,
["Aura - Buff Alert"]=13,
["Aura - Debuff Alert"]=11,
["Cast - Small Alert"]=11,
["Fixate"]=11,
},
["cast_statusbar_spark_color"]={
[1]=0.98823529411765,
[3]=0.94117647058823,
},
["aura2_y_offset"]=9,
["target_shady_alpha"]=0.59999996423721,
["castbar_target_outline"]="NONE",
["aura_frame2_anchor"]={
["y"]=9,
["side"]=7,
},
["first_run3"]=true,
["hook_data"]={
[1]={
["semver"]="",
["url"]="",
["Name"]="Attacking Specific Unit [Plater]",
["Time"]=1620377377,
["HooksTemp"]={
},
["Options"]={
[1]={
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
["Type"]=1,
},
[2]={
["Desc"]="",
["Type"]=4,
["Key"]="changeBarColor",
["Value"]=true,
["Name"]="Change Bar Color",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
},
[3]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="",
["Type"]=4,
["Key"]="changeBorderColor",
["Value"]=false,
["Name"]="Change Border Color",
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
["LoadConditions"]={
["race"]={
},
["encounter_ids"]={
},
["talent"]={
},
["affix"]={
},
["class"]={
},
["group"]={
},
["pvptalent"]={
},
["map_ids"]={
},
["role"]={
},
["spec"]={
},
},
["version"]=-1,
["OptionsValues"]={
},
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
["PlaterCore"]=1,
["Revision"]=363,
["Enabled"]=false,
["LastHookEdited"]="",
["Author"]="Kastfall-Azralon",
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
},
[2]={
["Desc"]="Hide neutral units, show when selected, see the constructor script for options.",
["PlaterCore"]=1,
["Name"]="Hide Neutral Units [Plater]",
["Options"]={
},
["LoadConditions"]={
["class"]={
},
["map_ids"]={
},
["talent"]={
},
["spec"]={
},
["encounter_ids"]={
},
["group"]={
},
["affix"]={
},
["role"]={
},
["pvptalent"]={
},
["race"]={
},
},
["Icon"]=1990989,
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
["Time"]=1553450458,
["LastHookEdited"]="Constructor",
["Revision"]=95,
["HooksTemp"]={
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
},
["Author"]="Izimode-Azralon",
["OptionsValues"]={
},
["Enabled"]=false,
},
[3]={
["Hooks"]={
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
},
["Author"]="Izimode-Azralon",
["Name"]="Players Targeting a Target [Plater]",
["Time"]=1551825362,
["Desc"]="Show how many raid members are targeting the unit",
["PlaterCore"]=1,
["Enabled"]=false,
["LoadConditions"]={
["map_ids"]={
},
["role"]={
},
["affix"]={
},
["encounter_ids"]={
},
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
},
["OptionsValues"]={
},
["Revision"]=185,
["HooksTemp"]={
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
},
["LastHookEdited"]="Constructor",
["Icon"]=1966587,
["Options"]={
},
},
[4]={
["PlaterCore"]=1,
["LoadConditions"]={
["group"]={
},
["map_ids"]={
},
["affix"]={
},
["talent"]={
},
["race"]={
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
},
["OptionsValues"]={
},
["Author"]="Izimode-Azralon",
["Icon"]=878211,
["Revision"]=93,
["Desc"]="Changes the target color to the color set in the constructor script.",
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
["Name"]="Current Target Color [Plater]",
["HooksTemp"]={
},
["Time"]=1552354619,
["Enabled"]=false,
["Options"]={
},
["LastHookEdited"]="",
},
[5]={
["Time"]=1621935143,
["version"]=-1,
["Enabled"]=false,
["Hooks"]={
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
},
["Revision"]=284,
["Name"]="Combo Points [Plater]",
["Icon"]=135426,
["Options"]={
},
["semver"]="",
["Author"]="Izimode-Azralon",
["PlaterCore"]=1,
["OptionsValues"]={
},
["LastHookEdited"]="",
["url"]="",
["HooksTemp"]={
},
["LoadConditions"]={
["map_ids"]={
},
["role"]={
},
["encounter_ids"]={
},
["affix"]={
},
["pvptalent"]={
},
["race"]={
},
["talent"]={
},
["spec"]={
["103"]=true,
["Enabled"]=true,
},
["group"]={
},
["class"]={
["Enabled"]=true,
["DRUID"]=true,
["ROGUE"]=true,
},
},
["Desc"]="Show combo points above the nameplate for Druid Feral and Rogues.",
},
[6]={
["PlaterCore"]=1,
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
},
["Time"]=1551825335,
["LastHookEdited"]="Constructor",
["HooksTemp"]={
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
},
["Enabled"]=false,
["Author"]="Tecno-Azralon",
["Revision"]=192,
["Desc"]="Add another border with more customizations. This border can also be manipulated by other scripts.",
["OptionsValues"]={
},
["Options"]={
},
["LoadConditions"]={
["role"]={
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
["encounter_ids"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["affix"]={
},
},
["Name"]="Extra Border [Plater]",
["Icon"]=133689,
},
[7]={
["LastHookEdited"]="",
["Desc"]="Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
["version"]=-1,
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
["Enabled"]=false,
["OptionsValues"]={
},
["Icon"]=574574,
["LoadConditions"]={
["talent"]={
},
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
["spec"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
},
["semver"]="",
["PlaterCore"]=1,
["Revision"]=93,
["Name"]="Reorder Nameplate [Plater]",
["Options"]={
},
["HooksTemp"]={
},
["Time"]=1596791840,
["Author"]="Kastfall-Azralon",
["url"]="",
},
[8]={
["Author"]="Kastfall-Azralon",
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
["PlaterCore"]=1,
["OptionsValues"]={
},
["Options"]={
},
["LoadConditions"]={
["map_ids"]={
},
["race"]={
},
["talent"]={
},
["spec"]={
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
["encounter_ids"]={
},
},
["Time"]=1551825317,
["LastHookEdited"]="Constructor",
["Icon"]="Interface\\AddOns\\Plater\\images\\color_bar",
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
["Enabled"]=false,
["Revision"]=107,
["Name"]="Color Automation [Plater]",
},
[9]={
["Author"]="Ahwa-Azralon",
["Desc"]="Adds extra effects to execute range and allow to setup two execute ranges for classes with execute when the unit has almost full healh. See the constructor script for options.",
["Name"]="Advanced Execute Range",
["OptionsValues"]={
},
["LoadConditions"]={
["pvptalent"]={
},
["affix"]={
},
["group"]={
},
["class"]={
},
["encounter_ids"]={
},
["talent"]={
},
["map_ids"]={
},
["role"]={
},
["race"]={
},
["spec"]={
},
},
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
["LastHookEdited"]="Constructor",
["Revision"]=139,
["PlaterCore"]=1,
["Time"]=1551825289,
["Icon"]=135358,
["Options"]={
},
["Enabled"]=false,
},
[10]={
["Name"]="Aura Reorder [Plater]",
["semver"]="",
["Revision"]=356,
["Author"]="Ditador-Azralon",
["LastHookEdited"]="",
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
["OptionsValues"]={
},
["HooksTemp"]={
},
["Options"]={
},
["Enabled"]=false,
["Desc"]="Reorder buffs and debuffs following the settings set in the constructor.",
["Time"]=1608663128,
["LoadConditions"]={
["affix"]={
},
["role"]={
},
["pvptalent"]={
},
["spec"]={
},
["encounter_ids"]={
},
["talent"]={
},
["race"]={
},
["class"]={
},
["map_ids"]={
},
["group"]={
},
},
["PlaterCore"]=1,
["url"]="",
["version"]=-1,
["Icon"]="Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
},
[11]={
["Author"]="Kastfall-Azralon",
["Desc"]="Script for the Jaina encounter on Battle for Dazzar'alor",
["Revision"]=236,
["Time"]=1551894760,
["LastHookEdited"]="Constructor",
["Options"]={
},
["Enabled"]=false,
["PlaterCore"]=1,
["Name"]="Jaina Encounter [Plater]",
["Icon"]="Interface\\AddOns\\Plater\\images\\encounter_jaina",
["Hooks"]={
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
},
["LoadConditions"]={
["spec"]={
},
["role"]={
},
["talent"]={
},
["encounter_ids"]={
["1"]=2281,
["Enabled"]=true,
},
["group"]={
},
["affix"]={
},
["map_ids"]={
},
["class"]={
},
["pvptalent"]={
},
["race"]={
},
},
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
},
[12]={
["Name"]="Stormwall Encounter [Plater]",
["Time"]=1551887545,
["LastHookEdited"]="Constructor",
["PlaterCore"]=1,
["OptionsValues"]={
},
["Icon"]="Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
["LoadConditions"]={
["map_ids"]={
},
["role"]={
},
["race"]={
},
["encounter_ids"]={
["1"]=2280,
["Enabled"]=true,
},
["spec"]={
},
["class"]={
},
["group"]={
},
["affix"]={
},
["pvptalent"]={
},
["talent"]={
},
},
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
["Options"]={
},
["Desc"]="Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
["Revision"]=81,
["Author"]="Kastfall-Azralon",
["Enabled"]=false,
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
},
[13]={
["Author"]="Herith�gue-Proudmoore",
["Time"]=1552962607,
["LastHookEdited"]="Constructor",
["PlaterCore"]=1,
["Revision"]=58,
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
["Desc"]="Change the border of the focus target.",
["Enabled"]=false,
["Name"]="Focus Target Border",
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
["LoadConditions"]={
["group"]={
},
["class"]={
},
["map_ids"]={
},
["role"]={
},
["race"]={
},
["talent"]={
},
["pvptalent"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["Options"]={
},
["Icon"]=133006,
["OptionsValues"]={
},
},
[14]={
["Author"]="Izimode-Azralon",
["Revision"]=47,
["Desc"]="Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
["Icon"]=136207,
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
["LoadConditions"]={
["race"]={
},
["encounter_ids"]={
},
["group"]={
},
["affix"]={
},
["pvptalent"]={
},
["spec"]={
},
["talent"]={
},
["map_ids"]={
},
["role"]={
},
["class"]={
},
},
["Time"]=1551825334,
["Name"]="Don't Have Aura [Plater]",
["PlaterCore"]=1,
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
["Enabled"]=false,
["Options"]={
},
},
[15]={
["Prio"]=99,
["OptionsValues"]={
},
["Time"]=1579030189,
["Icon"]=2446016,
["Hooks"]={
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
},
["Name"]="M+ Bwonsamdi Reaping",
["LoadConditions"]={
["pvptalent"]={
},
["talent"]={
},
["class"]={
},
["role"]={
},
["group"]={
["Enabled"]=true,
["party"]=true,
},
["map_ids"]={
},
["spec"]={
},
["encounter_ids"]={
},
["affix"]={
["Enabled"]=true,
["117"]=true,
},
["race"]={
},
},
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
["Author"]="Izimode-Azralon",
["Options"]={
},
["LastHookEdited"]="Constructor",
["Desc"]="Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
["Enabled"]=false,
["Revision"]=55,
},
[16]={
["HooksTemp"]={
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
["Cast Update"]="function (self, unitId, unitFrame, envTable)\
    \
    envTable.UpdateSpellNameText (unitFrame)\
    \
end\
\
\
",
},
["Options"]={
},
["PlaterCore"]=1,
["Time"]=1553450703,
["Icon"]=413580,
["Desc"]="Show the name of the unit current target ",
["LoadConditions"]={
["race"]={
},
["talent"]={
},
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
["affix"]={
},
["role"]={
},
["class"]={
},
["pvptalent"]={
},
},
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
["OptionsValues"]={
},
["Name"]="Cast Target",
["LastHookEdited"]="Constructor",
["Revision"]=35,
["Author"]="Kastfall-Azralon",
},
[17]={
["Author"]="Kastfall-Azralon",
["Enabled"]=false,
["Time"]=1551825361,
["Icon"]=135473,
["Desc"]="Only show nameplates while in combat, see the constructor for more options.",
["LastHookEdited"]="Constructor",
["OptionsValues"]={
},
["Options"]={
},
["PlaterCore"]=1,
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
["LoadConditions"]={
["encounter_ids"]={
},
["class"]={
},
["role"]={
},
["group"]={
},
["map_ids"]={
},
["race"]={
},
["spec"]={
},
["talent"]={
},
["pvptalent"]={
},
["affix"]={
},
},
["Name"]="Only in Combat",
["Revision"]=43,
},
[18]={
["OptionsValues"]={
},
["PlaterCore"]=1,
["Desc"]="Add an exclamation icon on units with color set in the Npc Colors tab with the \"Only Script\" box selected.",
["Author"]="Izimode-Azralon",
["Name"]="Npc Colors Icon",
["LastHookEdited"]="Constructor",
["Icon"]="Interface\\AddOns\\Plater\\media\\exclamation_64",
["Revision"]=35,
["Enabled"]=false,
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
},
["Options"]={
},
["LoadConditions"]={
["role"]={
},
["race"]={
},
["encounter_ids"]={
},
["talent"]={
},
["pvptalent"]={
},
["class"]={
},
["affix"]={
},
["spec"]={
},
["group"]={
},
["map_ids"]={
},
},
},
[19]={
["OptionsValues"]={
},
["Time"]=1553450705,
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
["Options"]={
},
["Author"]="Izimode-Azralon",
["Enabled"]=false,
["Desc"]="Add a color tag on units with color set in the Npc Colors tab with the \"Only Script\" box selected.",
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
["Name"]="Npc Colors Tag",
["PlaterCore"]=1,
["Icon"]="Interface\\AddOns\\Plater\\media\\radio_64",
["LoadConditions"]={
["talent"]={
},
["pvptalent"]={
},
["affix"]={
},
["class"]={
},
["map_ids"]={
},
["race"]={
},
["spec"]={
},
["group"]={
},
["encounter_ids"]={
},
["role"]={
},
},
["LastHookEdited"]="Constructor",
},
[20]={
["Revision"]=42,
["Enabled"]=true,
["Desc"]="Change the color of the aura timer by it's time left",
["Author"]="Ditador-Azralon",
["Prio"]=99,
["LoadConditions"]={
["affix"]={
},
["race"]={
},
["encounter_ids"]={
},
["spec"]={
},
["group"]={
},
["pvptalent"]={
},
["talent"]={
},
["class"]={
},
["map_ids"]={
},
["role"]={
},
},
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
["Options"]={
},
["PlaterCore"]=1,
["Hooks"]={
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
},
["OptionsValues"]={
},
["LastHookEdited"]="Constructor",
["Icon"]="Interface\\Timer\\Challenges-Logo",
["Time"]=1579030177,
["Name"]="Paint Aura Timers",
},
[21]={
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
["LastHookEdited"]="Nameplate Updated",
["Time"]=1553450719,
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
["Desc"]="Config aura borders",
["Author"]="????????-Illidan",
["LoadConditions"]={
["pvptalent"]={
},
["spec"]={
},
["talent"]={
},
["group"]={
},
["affix"]={
},
["role"]={
},
["encounter_ids"]={
},
["race"]={
},
["class"]={
},
["map_ids"]={
},
},
["Enabled"]=true,
["Revision"]=125,
["PlaterCore"]=1,
["Name"]="Advanced Debuff Border",
["Options"]={
},
},
[22]={
["Revision"]=35,
["Author"]="�r��ne-Kel'thuzad",
["LoadConditions"]={
["encounter_ids"]={
},
["talent"]={
},
["role"]={
},
["affix"]={
},
["group"]={
},
["class"]={
},
["pvptalent"]={
},
["race"]={
},
["map_ids"]={
},
["spec"]={
},
},
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
["OptionsValues"]={
},
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
["Time"]=1551825364,
["LastHookEdited"]="Constructor",
["Desc"]="Show yellow star for elite; Silver star for rares",
["Icon"]="Interface\\AddOns\\Plater\\media\\star_full_64",
["PlaterCore"]=1,
},
[23]={
["LastHookEdited"]="Constructor",
["HooksTemp"]={
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
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end\
end\
\
\
",
},
["Hooks"]={
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
["Leave Combat"]="function (self, unitId, unitFrame, envTable)\
    if (unitFrame.ThreatIcon) then\
        unitFrame.ThreatIcon:Hide()\
    end\
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
["talent"]={
},
["class"]={
},
["affix"]={
},
["spec"]={
},
["encounter_ids"]={
},
["group"]={
},
["pvptalent"]={
},
},
["Options"]={
},
["PlaterCore"]=1,
["Prio"]=99,
["Icon"]=132344,
["Author"]="Cyclopes-Turalyon",
["Desc"]="Add an icon to indicate an unit has Aggro on you. By default only show for units using a custom color from Npc Colors.",
["Name"]="Aggro Indicator",
["Enabled"]=true,
["OptionsValues"]={
},
["Time"]=1579030500,
["Revision"]=65,
},
[24]={
["LoadConditions"]={
["class"]={
},
["role"]={
},
["pvptalent"]={
},
["affix"]={
},
["group"]={
},
["map_ids"]={
},
["race"]={
},
["talent"]={
},
["encounter_ids"]={
},
["spec"]={
},
},
["OptionsValues"]={
},
["Options"]={
},
["Desc"]="Edit the Constructor script setting the font you want in the FONT = \"\", then /reload.",
["Time"]=1551825316,
["PlaterCore"]=1,
["Author"]="Izimode-Azralon",
["Enabled"]=false,
["Name"]="Change All Fonts",
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
["Icon"]=134331,
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
["LastHookEdited"]="Constructor",
},
[25]={
["OptionsValues"]={
},
["Name"]="Power Bar",
["Enabled"]=false,
["LastHookEdited"]="Constructor",
["Time"]=1553450521,
["HooksTemp"]={
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
["LoadConditions"]={
["talent"]={
},
["group"]={
},
["pvptalent"]={
},
["encounter_ids"]={
},
["spec"]={
},
["map_ids"]={
},
["affix"]={
},
["class"]={
},
["role"]={
},
["race"]={
},
},
["Revision"]=50,
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
["Icon"]=1375677,
["Author"]="Izimode-Azralon",
["PlaterCore"]=1,
},
[26]={
["Desc"]="Move the icon of the spell cast to the left or right side of the nameplate.",
["Icon"]="Interface\\Buttons\\UI-Quickslot2",
["LoadConditions"]={
["talent"]={
},
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
["class"]={
},
},
["Time"]=1579035896,
["Options"]={
},
["PlaterCore"]=1,
["Enabled"]=true,
["LastHookEdited"]="Constructor",
["Prio"]=99,
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
["Revision"]=131,
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
["OptionsValues"]={
},
["Name"]="Cast Icon Anchor",
},
[27]={
["Time"]=1579031533,
["Enabled"]=true,
["Prio"]=99,
["Name"]="Cast Icon Border",
["Desc"]="Adds a pixels perfect border around the cast bar spell icon.",
["HooksTemp"]={
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
},
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
["OptionsValues"]={
},
["Revision"]=62,
["Icon"]=133004,
["Options"]={
},
["PlaterCore"]=1,
["LoadConditions"]={
["affix"]={
},
["talent"]={
},
["class"]={
},
["spec"]={
},
["race"]={
},
["group"]={
},
["map_ids"]={
},
["pvptalent"]={
},
["role"]={
},
["encounter_ids"]={
},
},
["Author"]="Izimode-Azralon",
["LastHookEdited"]="Constructor",
},
[28]={
["OptionsValues"]={
},
["Icon"]=133004,
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
["PlaterCore"]=1,
["LastHookEdited"]="Constructor",
["LoadConditions"]={
["group"]={
},
["affix"]={
},
["talent"]={
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
["pvptalent"]={
},
["class"]={
},
},
["Options"]={
},
["Desc"]="Adds a pixels perfect border around the cast bar.",
["Enabled"]=true,
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
["Time"]=1579035954,
["Name"]="Cast Bar Border",
["Prio"]=99,
["Author"]="Izimode-Azralon",
},
[29]={
["Time"]=1551894761,
["Options"]={
},
["LoadConditions"]={
["race"]={
},
["talent"]={
},
["role"]={
},
["affix"]={
},
["encounter_ids"]={
},
["spec"]={
},
["pvptalent"]={
},
["map_ids"]={
},
["class"]={
},
["group"]={
},
},
["Author"]="????????-Illidan",
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
["Revision"]=42,
["Icon"]=609811,
["LastHookEdited"]="Constructor",
["Enabled"]=true,
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
["PlaterCore"]=1,
},
[30]={
["Enabled"]=true,
["Desc"]="Format Buff Special icons like the regular aura icons.",
["Name"]="Buff Special Mod",
["LastHookEdited"]="Nameplate Updated",
["Options"]={
},
["Revision"]=81,
["Icon"]=136139,
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
["Author"]="?????-Illidan",
["PlaterCore"]=1,
["LoadConditions"]={
["encounter_ids"]={
},
["map_ids"]={
},
["race"]={
},
["spec"]={
},
["pvptalent"]={
},
["role"]={
},
["talent"]={
},
["affix"]={
},
["group"]={
},
["class"]={
},
},
["Time"]=1552962644,
["OptionsValues"]={
},
},
[31]={
["Enabled"]=false,
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
["Name"]="Arrow Target Indicators",
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
["LoadConditions"]={
["class"]={
},
["spec"]={
},
["group"]={
},
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
["talent"]={
},
["pvptalent"]={
},
},
["Icon"]="Interface\\AddOns\\Plater\\media\\arrow_right_64",
["Revision"]=29,
["Desc"]="Adds two arrows into the target indicators options.",
["LastHookEdited"]="Player Talent Update",
["PlaterCore"]=1,
["Time"]=1551887544,
},
[32]={
["Options"]={
},
["Icon"]=237377,
["Time"]=1551894756,
["Revision"]=11,
["OptionsValues"]={
},
["Enabled"]=true,
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
["LoadConditions"]={
["pvptalent"]={
},
["affix"]={
},
["map_ids"]={
},
["spec"]={
},
["talent"]={
},
["class"]={
},
["encounter_ids"]={
},
["group"]={
},
["role"]={
},
["race"]={
},
},
["Author"]="Ditador-Azralon",
["LastHookEdited"]="Target Changed",
["PlaterCore"]=1,
},
[33]={
["Author"]="Ditador-Azralon",
["Prio"]=99,
["Hooks"]={
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
["Name"]="Adjust Spark Size",
["PlaterCore"]=1,
["Desc"]="Set the spark height to the same size of the cast bar.",
["Time"]=1579035959,
["Revision"]=22,
["Enabled"]=true,
["HooksTemp"]={
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
["LastHookEdited"]="Cast Update",
["Icon"]="Interface\\AddOns\\Plater\\images\\spark6",
["OptionsValues"]={
},
["LoadConditions"]={
["spec"]={
},
["talent"]={
},
["pvptalent"]={
},
["affix"]={
},
["map_ids"]={
},
["race"]={
},
["group"]={
},
["class"]={
},
["role"]={
},
["encounter_ids"]={
},
},
["Options"]={
},
},
[34]={
["PlaterCore"]=1,
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
["class"]={
},
["map_ids"]={
},
["affix"]={
},
["talent"]={
},
["pvptalent"]={
},
},
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
["LastHookEdited"]="Constructor",
["Icon"]="Interface/Addons/Plater/Media/fire_64",
["Revision"]=69,
["Desc"]="Show power bar for some units.",
["Prio"]=99,
["Author"]="Izimode-Azralon",
["Enabled"]=true,
},
[35]={
["Icon"]="Interface\\AddOns\\Plater\\images\\castbar_icon",
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
["url"]="",
["Enabled"]=false,
["version"]=-1,
["semver"]="",
["Options"]={
[1]={
["Name"]="Icon Settings",
["Value"]="Icon Settings:",
["Key"]="option4",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_label",
["Desc"]="",
["Type"]=5,
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
["Name"]="Icon on Left Side",
["Value"]=true,
["Key"]="iconOnLeftSide",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled it anchor the icon on the left side, right otherwise",
["Type"]=4,
},
[4]={
["Value"]=false,
["Name"]="Use Big Icon",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enabled the icon has the size of the cast bar plus the healthbar",
["Type"]=4,
["Key"]="useFullSize",
},
[5]={
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Max"]=5,
["Fraction"]=true,
["Value"]=0,
["Name"]="Icon Size Offset",
["Key"]="iconSizeOffset",
["Type"]=2,
["Desc"]="Fine tune the icon size",
["Min"]=0,
},
[6]={
["Fraction"]=false,
["Type"]=2,
["Min"]=-5,
["Name"]="Icon Padding",
["Key"]="iconPadding",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=0,
["Max"]=5,
["Desc"]="Space between the icon and the cast bar",
},
[7]={
["Type"]=6,
["Name"]="Blank Space",
["Value"]=0,
["Key"]="option6",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_blank",
["Desc"]="",
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
["Key"]="desaturatedTexture",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_bool",
["Desc"]="If enbaled, texture is shown in black & white",
["Type"]=4,
["Name"]="Texture Desaturated",
["Value"]=true,
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
["Max"]=32,
["Min"]=1,
["Fraction"]=false,
["Value"]=10,
["Name"]="Texture Width",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Key"]="textureWidth",
},
[14]={
["Desc"]="The texture is set to be the same size as the cast bar, fine tune the height as wanted",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Value"]=0,
["Key"]="textureHeightMod",
["Type"]=2,
["Max"]=16,
["Min"]=-16,
["Name"]="Texture Height Mod",
["Fraction"]=true,
},
[15]={
["Desc"]="Adjust the texture position",
["Type"]=2,
["Max"]=32,
["Min"]=-32,
["Value"]=0,
["Fraction"]=false,
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Name"]="Texture Position",
["Key"]="texturePosition",
},
[16]={
["Max"]=1,
["Desc"]="Adjust the texture transparency",
["Icon"]="Interface\\AddOns\\Plater\\images\\option_number",
["Type"]=2,
["Key"]="textureAlpha",
["Name"]="Texture Alpha",
["Min"]=0,
["Value"]=1,
["Fraction"]=true,
},
},
["Desc"]="Move the icon of the spell cast to the left or right side of the nameplate.",
["Revision"]=348,
["HooksTemp"]={
},
["Author"]="Ditador-Azralon",
["LoadConditions"]={
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
["race"]={
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
["Name"]="Cast Bar Icon Settings [P]",
["PlaterCore"]=1,
["LastHookEdited"]="",
["Time"]=1597097268,
},
},
["indicator_rare"]=false,
["use_health_animation"]=true,
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
["range_check_alpha"]=1,
["extra_icon_height"]=16,
["ui_parent_buff_strata"]="LOW",
["not_affecting_combat_alpha"]=0.799999,
["resources"]={
["scale"]=0.79999995231628,
["y_offset"]=1,
["y_offset_target"]=9,
},
["aura_timer_text_anchor"]={
["x"]=-1,
["side"]=1,
["y"]=-7,
},
["tank"]={
["colors"]={
["pulling"]={
[2]=0.91372549019608,
[3]=0.99607843137255,
},
},
},
["ui_parent_scale_tune"]=1.2500000745058,
["pet_width_scale"]=0.99999994039536,
["login_counter"]=6,
["number_region_first_run"]=true,
["aura_x_offset"]=0,
["cast_statusbar_spark_width"]=25,
["aura_height2"]=15,
["extra_icon_caster_name"]=false,
["aura_width"]=22,
["castbar_target_font"]="Accidental Presidency",
["buffs_on_aura2"]=true,
["ui_parent_buff2_level"]=10,
["cast_statusbar_texture"]="Skyline",
["ui_parent_cast_level"]=10,
["ui_parent_cast_strata"]="DIALOG",
},
},
["captured_spells"]={
[264667]={
["type"]="BUFF",
["source"]="未知目标",
["npcID"]=165189,
["event"]="SPELL_AURA_APPLIED",
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
}