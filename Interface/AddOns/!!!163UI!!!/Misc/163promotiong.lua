-- do return end
local _EventVehicle = CreateFrame("Frame", nil, UIParent);

_EventVehicle:SetScript("OnEvent", function(self)
    C_Timer.After(4.0, function()
        SendSystemMessage("有爱插件助力9.0 回帖赢月卡和萨尔雕像");
        SendSystemMessage("复制链接到浏览器参与：");
        SendSystemMessage("http://dwz.date/dnvt");
    end);
    self:UnregisterAllEvents();
    self:SetScript("OnEvent", nil);
end);
_EventVehicle:RegisterEvent("PLAYER_ENTERING_WORLD");
_EventVehicle = nil;
