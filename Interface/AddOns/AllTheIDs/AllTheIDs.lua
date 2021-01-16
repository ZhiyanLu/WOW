
local addon_name, addon = ...

local format, hooksecurefunc, ipairs, select, tinsert, wipe
    = format, hooksecurefunc, ipairs, select, tinsert, wipe

function addon:AddIDLine(tip, ...)  -- idname, id
    if tip == nil or tip._alltheid then
        return
    end

    local line = self:IDLine(...)
    if line then
        tip:AddLine(line)
        if tip:IsShown() then
            -- force redraw
            tip:Show()
        end
        tip._alltheid = true
    end
end

do
    local tmp = {}
    function addon:IDLine(...)
        wipe(tmp)

        for i = 1,select("#", ...),2 do
            local name, id = select(i, ...)
            if id then
                tinsert(tmp, format("|cff33cc44%s ID:|r %s", name, tostring(id)))
            end
        end

        if #tmp > 0 then
            return table.concat(tmp, " / ")
        end
    end
end

do
    local tmp = {}
    local function textAppendID(self, fs, ...)
        local line = self:IDLine(...)
        local orig = fs:GetText()
        if line == fs._alltheid and orig ~= nil and strfind(orig, line) then
            return
        end

        wipe(tmp)
        tinsert(tmp, orig)
        if strsub(orig, -1, -1) ~= "\n" then
            tinsert(tmp, "\n")
        end
        tinsert(tmp, line)
        fs:SetText(table.concat(tmp, ""))

        fs._alltheid = line
    end

    function addon:TextAppendID(fs, ...)
        textAppendID(self, fs, ...)
    end
end

function addon:HookTipScript(handler, func)
    if GameTooltip:HasScript(handler) then
        GameTooltip:HookScript(handler, func)
    end

    if ItemRefTooltip:HasScript(handler) then
        ItemRefTooltip:HookScript(handler, func)
    end
end

function addon:HookTip(method, hookfunc)
    if GameTooltip[method] then
        hooksecurefunc(GameTooltip, method, function(self, ...) hookfunc(GameTooltip, ...) end)
    end

    if ItemRefTooltip[method] then
        hooksecurefunc(ItemRefTooltip, method, function(self, ...) hookfunc(ItemRefTooltip, ...) end)
    end
end

local afterShowTips = {}
local function AfterShowHook()
    for i, tip in ipairs(afterShowTips) do
        if not tip._alltheid and tip._alltheid_type then
            addon:AddIDLine(tip, tip._alltheid_type, tip._alltheid_id)
        end
    end
    wipe(afterShowTips)
end

addon:HookTipScript("OnShow", function(tip)
    tinsert(afterShowTips, tip)
    C_Timer.After(0, AfterShowHook)
end)

addon:HookTipScript("OnTooltipCleared", function(tip)
    tip._alltheid_type = nil
    tip._alltheid_id = nil
    tip._alltheid = nil
end)

local classColors = {}
do
for class, c in pairs(CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS) do
classColors[class] = format('|cff%02x%02x%02x', c.r*255, c.g*255, c.b*255)
end
end

local function SetCaster(self, unit, index, filter)
local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable = UnitBuff(unit, index, filter)
if unitCaster then
local uname, urealm = UnitName(unitCaster)
local _, uclass = UnitClass(unitCaster)
if urealm then uname = uname..'-'..urealm end
self:AddLine('\n|cff00ff00来自' .. (classColors[uclass] or '|cffffffff') .. uname .. '|r (' .. unitCaster .. ')')
self:Show()
end
end

hooksecurefunc(GameTooltip, 'SetUnitAura', SetCaster)
hooksecurefunc(GameTooltip, 'SetUnitBuff', function(self, unit, index, filter)
filter = filter and ('HELPFUL '..filter) or 'HELPFUL'
SetCaster(self, unit, index, filter)
end)
hooksecurefunc(GameTooltip, 'SetUnitDebuff', function(self, unit, index, filter)
filter = filter and ('HARMFUL '..filter) or 'HARMFUL'
SetCaster(self, unit, index, filter)
end) 