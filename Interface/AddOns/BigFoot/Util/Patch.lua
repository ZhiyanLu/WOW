
-------------------------------------------------------
-- BigFootPatch.lua
-- AndyXiao@BigFoot
-- 本文件是用来修正一些来自WoW本身Interface的问题
-------------------------------------------------------

-- 屏蔽界面失效的提醒
do
	UIParent:UnregisterEvent("ADDON_ACTION_BLOCKED");
	_G["ChatFrameEditBox"] = _G["ChatFrame1EditBox"]
end

--支持可以从团队框体直接选择
do
	local f = CreateFrame("Frame")
	f:RegisterEvent("ADDON_LOADED")
	f:SetScript("OnEvent", function(self, event,...)
		if event == "ADDON_LOADED" and select(1,...) == "Blizzard_RaidUI" then
			BigFoot_DelayCall(BFSecureCall,1,function ()
				for i=1,40 do
					local raidbutton = getglobal("RaidGroupButton"..i);
					if(raidbutton and raidbutton.unit) then
						raidbutton:SetAttribute("type", "target");
						raidbutton:SetAttribute("unit", raidbutton.unit);
					end
				end
			end)
			f:UnregisterEvent("ADDON_LOADED")
		end
	end)
end

--QuickLoot中当拾取到空尸体的时候自动隐藏LootFrame 的逻辑移到这里
do
	local f = CreateFrame("Frame")
	f:RegisterEvent("LOOT_READY")
	f:SetScript("OnEvent",function(self,event)
		if ( GetNumLootItems() == 0 ) then
			HideUIPanel(LootFrame);
		end
	end)
end

-- 修改系统ADDON_ACTION_FORBIDDEN逻辑
do
	UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN");

	StaticPopupDialogs["BF_ADDON_ACTION_FORBIDDEN"] = {
		text = ADDON_ACTION_FORBIDDEN,
		button1 = RELOADUI,
		button2 = IGNORE_DIALOG,
		OnAccept = function(self, data)
			ReloadUI();
		end,
		timeout = 0,
		exclusive = 1,
		whileDead = 1,
		hideOnEscape = 1
	};

	local f = CreateFrame("Frame")
	f:RegisterEvent("ADDON_ACTION_FORBIDDEN")
	f:SetScript("OnEvent", function(self, event, ...)
		local FORBIDDEN_ADDON,FORBIDDEN_FUNCTION = ...;
		StaticPopup_Show("BF_ADDON_ACTION_FORBIDDEN", FORBIDDEN_ADDON);
	end)
end

-- 设置一些常用的cvar
do
	local LoaderFrame = CreateFrame("FRAME")
	LoaderFrame:RegisterEvent("PLAYER_LOGIN")

	local function LoaderEvents(frame, event, arg1)
		local patchVersion = '2020-03-26'

		if (BigFoot_SysTemSetTab['UtilsPatchVersion'] ~= patchVersion) then
			SetCVar("profanityFilter", "1")						--不良语句过滤 0关 1开

			BigFoot_SysTemSetTab['UtilsPatchVersion'] = patchVersion
		end
	end

	LoaderFrame:SetScript("OnEvent", LoaderEvents)
end


do
	local function ShowWeeklyRewards()
		if not IsAddOnLoaded("Blizzard_WeeklyRewards") then
			LoadAddOn("Blizzard_WeeklyRewards");
		end
		if not WeeklyRewardsFrame then return end
		if ( WeeklyRewardsFrame:IsShown() ) then
			HideUIPanel(WeeklyRewardsFrame)
		else
			ShowUIPanel(WeeklyRewardsFrame)
		end
	end

	local f = CreateFrame("Frame")
	f:RegisterEvent("ADDON_LOADED")

	f:SetScript("OnEvent", function(self, event,...)
		if event == "ADDON_LOADED" then
			local addon = select(1,...)
			local chest;
			if addon == "Blizzard_ChallengesUI" then
				chest = ChallengesFrame.WeeklyInfo.Child.WeeklyChest
				chest:HookScript("OnMouseUp", ShowWeeklyRewards)
			elseif addon == "Blizzard_PVPUI" then
				chest = PVPQueueFrame.HonorInset.CasualPanel.WeeklyChest
				chest:HookScript("OnMouseUp", ShowWeeklyRewards)
				chest = PVPQueueFrame.HonorInset.RatedPanel.WeeklyChest
				chest:HookScript("OnMouseUp", ShowWeeklyRewards)
			end
		end
	end)
end
