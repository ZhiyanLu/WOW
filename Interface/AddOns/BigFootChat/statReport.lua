﻿ local _ local BFChat = LibStub('AceAddon-3.0'):GetAddon('BigFootChat'); local L = LibStub("AceLocale-3.0"):GetLocale("BigFootChat"); local MyData = {}; BFC_CurEB = ChatFrame1EditBox; local function StatReport_Print(msg) if DEFAULT_CHAT_FRAME then DEFAULT_CHAT_FRAME:AddMessage(StatReport_Preview, 1, 0.9, 0.4); DEFAULT_CHAT_FRAME:AddMessage(tostring(msg), 1, 0.9, 0.4); end end local function StatReport_ChatFrameEditBoxMSG(msg) if BFC_CurEB:IsShown() then BFC_CurEB:Insert(msg); else StatReport_Print(msg); end end local function StatReport_TalentData() local curT = GetSpecialization() local tname,duties if curT then _, tname, _, _, duties = GetSpecializationInfo(curT) end local TalentStat = duties and _G[duties]; return tname, TalentStat; end local function StatReport_GetCritChance() local rating; local spellCrit, rangedCrit, meleeCrit; local critChance; local holySchool = 2; local minCrit = GetSpellCritChance(holySchool); local spellCrit; for i=(holySchool+1), MAX_SPELL_SCHOOLS do spellCrit = GetSpellCritChance(i); minCrit = min(minCrit, spellCrit); end spellCrit = minCrit rangedCrit = GetRangedCritChance(); meleeCrit = GetCritChance(); if (spellCrit >= rangedCrit and spellCrit >= meleeCrit) then critChance = spellCrit; rating = CR_CRIT_SPELL; elseif (rangedCrit >= meleeCrit) then critChance = rangedCrit; rating = CR_CRIT_RANGED; else critChance = meleeCrit; rating = CR_CRIT_MELEE; end return GetCombatRating(rating) > 0 and format("%s(%.1f%%)", GetCombatRating(rating),critChance); end local function StatReport_UpdateMyData() MyData.Name = UnitName("player"); MyData.LV = UnitLevel("player"); MyData.CLASS, MyData.CLASS_EN = UnitClass("player"); MyData.TKEY, MyData.TDATA = StatReport_TalentData(); local sysLv,curLv = GetAverageItemLevel(); if curLv then MyData.ILVL = format("%d(%d)",floor(sysLv),floor(curLv)); end if MyData.LV then MyData.MST = format("%s(%.1f%%)", GetCombatRating(CR_MASTERY),GetMasteryEffect()); end local artifactInfo = {C_ArtifactUI.GetEquippedArtifactInfo()} if table.getn(artifactInfo) > 0 then local pointsSpent = artifactInfo[6]; if pointsSpent <= 51 then MyData.AF = pointsSpent; else MyData.AF = format("%d(%d)",pointsSpent,pointsSpent - 51); end end local azeriteItemLocation = C_AzeriteItem.FindActiveAzeriteItem(); local azeriteItemPowerLevel = azeriteItemLocation and not AzeriteUtil.IsAzeriteItemLocationBankBag(azeriteItemLocation) and C_AzeriteItem.GetPowerLevel(azeriteItemLocation) or 0; if azeriteItemPowerLevel ~= 0 then MyData.AI = C_AzeriteItem.GetPowerLevel(azeriteItemLocation); end MyData.CRIT = StatReport_GetCritChance() MyData.HASTE = GetCombatRating(18) > 0 and format("%s(%.1f%%)",GetCombatRating(18),GetHaste()); MyData.VSTLT = GetCombatRating(29) > 0 and format("%s(%.1f%%)",GetCombatRating(29),GetCombatRatingBonus(29)) end function createReportFrame() local reportButton = _G.BFCIconFrameReportButton if BFChatFrame_CheckNumber then reportButton:SetPoint("LEFT",_G.BFCIconFrameRollButton,"RIGHT",1,0) else reportButton:SetPoint("TOPLEFT",BFCChatFrame,"TOPLEFT",295,-3) end if BFChat.db.profile.enableReportButton then reportButton:Show() end reportButton:SetScript("OnEnter",function(self) BigFoot_ShowNewbieTooltip(L["Report"]) end) reportButton:SetScript("OnLeave",function(self) BigFoot_HideNewbieTooltip() end) end function BFCIconFrameReportButton_OnClick(self,button) if button=="LeftButton" then StatReport_UpdateMyData(); local msg = BF_StatReport; msg = msg..MyData.CLASS; msg = msg..StatReport_Strings_COMMA; if MyData.TKEY and MyData.TDATA then msg = msg..StatReport_Strings_TALENT..":"..MyData.TKEY.."("..MyData.TDATA..")"; msg = msg..StatReport_Strings_COMMA; end if MyData.ILVL then msg = msg..StatReport_Strings_ILVL..MyData.ILVL; end if MyData.AF then msg = msg..StatReport_Strings_COMMA; msg = msg..StatReport_Strings_AFT..MyData.AF; end if MyData.AI then msg = msg..StatReport_Strings_COMMA; msg = msg..StatReport_Strings_AIT..MyData.AI; end if MyData.LV then msg = msg..StatReport_Strings_COMMA; msg = msg..StatReport_Strings_MST..MyData.MST; end if MyData.CRIT then msg = msg..StatReport_Strings_COMMA; msg = msg..StatReport_Strings_CRIT..MyData.CRIT; end if MyData.HASTE then msg = msg..StatReport_Strings_COMMA; msg = msg..StatReport_Strings_HASTE..MyData.HASTE; end if MyData.VSTLT then msg = msg..StatReport_Strings_COMMA; msg = msg..StatReport_Strings_VSTLT..MyData.VSTLT; end msg = msg..StatReport_Strings_END; StatReport_ChatFrameEditBoxMSG(msg); end end function BFCIconFrameReportButton_OnUpdate(self) for i = 1, NUM_CHAT_WINDOWS do local CheckEB = _G[format("%s%d%s", "ChatFrame", i, "EditBox")]; if CheckEB:GetAlpha() ==1 and CheckEB:IsShown() then BFC_CurEB = CheckEB; return; end end end --[[ local function StatReport_GetSpellText() local text = ""; if GetCombatRating(20) > 0 then text = text..MyData.HASTE..StatReport_Strings_HASTE; text = text..StatReport_Strings_COMMA; end return text; end local function StatReport_GetHealText() local text = ""; if GetCombatRating(20) > 0 then text = text..MyData.HASTE..StatReport_Strings_HASTE; text = text..StatReport_Strings_COMMA; end return text; end local function StatReport_GetSpellAndHealText() local text = ""; if GetCombatRating(20) > 0 then text = text..MyData.HASTE..StatReport_Strings_HASTE; text = text..StatReport_Strings_COMMA; end text = text..StatReport_Strings_COMMA; return text; end local function StatReport_GetMeleeText() local text = ""; if GetCombatRating(18) > 0 then text = text..MyData.HASTE..StatReport_Strings_HASTE; text = text..StatReport_Strings_COMMA; end if GetCombatRating(9) > 0 then text = text..MyData.CRIT..StatReport_Strings_CRIT; text = text..StatReport_Strings_COMMA; end return text; end local function StatReport_GetRangedText() local text = ""; if GetCombatRating(19) > 0 then text = text..MyData.HASTE..StatReport_Strings_HASTE; text = text..StatReport_Strings_COMMA; end if GetCombatRating(10) > 0 then text = text..MyData.CRIT..StatReport_Strings_CRIT; text = text..StatReport_Strings_COMMA; end return text; end local function StatReport_GetTankText(rHaste) local text = ""; if (rHaste and GetCombatRating(18) > 0) then text = text..MyData.HASTE..StatReport_Strings_HASTE; text = text..StatReport_Strings_COMMA; end return text; end local function StatReport_UnitAttackPower() local base, posBuff, negBuff = UnitAttackPower("player"); return floor(base + posBuff + negBuff); end local function StatReport_UnitRangedAttackPower() local base, posBuff, negBuff = UnitRangedAttackPower("player"); return floor(base + posBuff + negBuff); end local function StatReport_UnitArmor() local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player"); return format("%s(%.1f%%)", floor(base + posBuff + negBuff),PaperDollFrame_GetArmorReduction(effectiveArmor, MyData.LV)); end local function StatReport_GetSpellBonusDamage() local SSP = GetSpellBonusDamage(2); for i=3, 7 do SSP = min(SSP, GetSpellBonusDamage(i)); end return floor(SSP); end function BFCIconFrameReportButton_SetButtonIcon(self, Myclass) self.icon = self:CreateTexture(nil, "OVERLAY"); self.icon:SetWidth(21); self.icon:SetHeight(21); self.icon:SetPoint("CENTER", self, 0, 0); self.icon:SetTexture("Interface\\WorldStateFrame\\Icons-Classes"); local coords = CLASS_BUTTONS[Myclass]; self.icon:SetTexCoord(coords[1],coords[2],coords[3],coords[4]); self.icon:Show(); end ]] 
