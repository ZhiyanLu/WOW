--[[
	All rights reserved
	by ala@163UI
--]]

local ADDON, _NS = ...;
local __uilib = _G._163uilib or _G.WW;

local L = select(2, ...).L

local __ns = {  };
local _AREA = {
	--	1 = too light, -1 = too dark, 0 = ok
	--	map
	[1525] = 0,		--	雷文德斯
	[1533] = 1,		--	晋升堡垒
	[1536] = 0,		--	玛卓克萨斯
	[1565] = 0,		--	炽蓝仙野
	[1543] = 0,		--	噬渊
	--	dungeon
	[1182] = 0,		--	通灵战潮
	[1183] = 0,		--	凋零之殇
	[1184] = 0,		--	塞兹仙林的迷雾
	[1185] = 0,		--	赎罪大厅
	[1186] = 1,		--	晋升高塔
	[1187] = 0,		--	伤逝剧场
	[1188] = 0,		--	彼界
	[1189] = 0,		--	赤红深渊
	--	raid
	[1190] = 0,		--	纳斯利亚堡
};
--	'gamma', 'contrast', 'brightness',[ { [1] = type(BLEND, ADD, MOD), [2, 3, 4, 5] = color(r, g, b, a) }, ...(up to 18 layers)]
local _DEF = {
	['*'] = { 1.0, 50.0, 50.0, },
	-- [1533] = { 0.8, 50.0, 50.0, },
	-- [1186] = { 0.8, 50.0, 50.0, },
	[1533] = { nil, nil, nil, { "MOD", 0.75, 0.75, 0.75, 1.0, }, { "ADD", 0.10, 0.10, 0.10, 1.0, }, },
	[1186] = { nil, nil, nil, { "MOD", 0.75, 0.75, 0.75, 1.0, }, { "ADD", 0.10, 0.10, 0.10, 1.0, }, },
	__field = {  },
	__enabled = false,
};
local _SET = nil;
local _maskWrapper = __uilib:FRAME(nil, WorldFrame)
	:SetPoint("TOPLEFT"):SetPoint("BOTTOMRIGHT"):Show()
	:SetFrameStrata("LOW")
	:EnableMouse(false)
	:un();
local _maxMaskIndex = -1;
local _mask = {  };

local _EventHandler = CreateFrame('FRAME');
local function _EventHandler_OnEvent(self, event, ...)
	return __ns[event](...);
end
function _EventHandler:FireEvent(event, ...)
	local func = __ns[event];
	if func then
		return func(...);
	end
end
function _EventHandler:RegEvent(event, func)
	__ns[event] = func or __ns[event] or _noop_;
	self:RegisterEvent(event);
	self:SetScript('OnEvent', _EventHandler_OnEvent);
end
function _EventHandler:UnregEvent(event)
	self:UnregisterEvent(event);
end


local GetCVar = C_CVar and C_CVar.GetCVar or GetCVar;
local SetCVar = C_CVar and C_CVar.SetCVar or SetCVar;
local C_Map_GetBestMapForUnit = C_Map.GetBestMapForUnit;

function __ns.__PLAYER_ZONE_CHANGED(map)
	-- print('new map', map)
	local _set = _SET[map];
	if _set == nil then
		_set = _SET['*'];
	end
	if _set ~= nil then
		if _set[1] ~= nil then
			SetCVar('gamma', _set[1]);
		end
		if _set[2] ~= nil then
			SetCVar('contrast', _set[2]);
		end
		if _set[3] ~= nil then
			SetCVar('brightness', _set[3]);
		end
		local _index = 4;
		while _index <= 18 do
			local _val = _set[_index];
			if _val == nil then
				for _index2 = _index, _maxMaskIndex do
					_mask[_index2]:Hide();
				end
				break;
			elseif _mask[_index] == nil then
				_maxMaskIndex = _index;
				_mask[_index] = WW(_maskWrapper):CreateTexture(nil, "BACKGROUND", nil, _index - 12)
					:SetAllPoints()
					:un();
			end
			_mask[_index]:Show();
			_mask[_index]:SetBlendMode(_val[1]);
			_mask[_index]:SetColorTexture(_val[2] or 1.0, _val[3] or 1.0, _val[4] or 1.0, _val[5] or 1.0);
			_index = _index + 1;
		end
	else
		for _index2 = 4, _maxMaskIndex do
			_mask[_index2]:Hide();
		end
	end
end
function __ns.CVAR_UPDATE(...)
	-- print(...)
end
_EventHandler:RegEvent("PLAYER_ENTERING_WORLD");

local __player_map_id = C_Map_GetBestMapForUnit('player');
local function _OnEvent_MapHandler(self, event)
	local map = C_Map_GetBestMapForUnit('player');
	if __player_map_id ~= map then
		__player_map_id = map;
		_EventHandler:FireEvent("__PLAYER_ZONE_CHANGED", map);
	end
end

--	ui and config			--	TOOOOOOOOOOOOOODO
local __ui = __uilib:FRAME(nil, UIParent)
	:SetSize(512, 256):SetPoint("CENTER")
	:un();




--

function __ns.PLAYER_ENTERING_WORLD()
	local db = GLOBAL_CORE_SAVED or U1DBG;
	if db == nil then
		return;
	end
	if db.__OhMyEye then
		_SET = db.__OhMyEye;
	else
		_SET = _DEF;
		db.__OhMyEye = _SET;
	end
	if _SET.__user_val == nil then
		local gamma = tonumber(GetCVar('gamma'));
		local contrast = tonumber(GetCVar('contrast'));
		local brightness = tonumber(GetCVar('brightness'));
		_SET.__user_val = { gamma - gamma % 0.01, contrast - contrast % 0.1, brightness - brightness % 0.1, };
	end
	if _SET.__enabled then
		_maskWrapper:Show();
	else
		_maskWrapper:Hide();
	end
	_EventHandler:UnregEvent("PLAYER_ENTERING_WORLD");
	_EventHandler:RegEvent("CVAR_UPDATE");
	--
	_EventHandler:RegEvent("ZONE_CHANGED_NEW_AREA", _OnEvent_MapHandler);
	_EventHandler:RegEvent("ZONE_CHANGED", _OnEvent_MapHandler);
	_EventHandler:RegEvent("ZONE_CHANGED_INDOORS", _OnEvent_MapHandler);
	_EventHandler:RegEvent("NEW_WMO_CHUNK", _OnEvent_MapHandler);
	_EventHandler:RegEvent("PLAYER_ENTERING_WORLD", _OnEvent_MapHandler);
	_EventHandler:FireEvent("__PLAYER_ZONE_CHANGED", __player_map_id);
end



function _G._163UIProtectEye(enabled)
	if _SET == nil then
		_EventHandler:FireEvent("PLAYER_ENTERING_WORLD");
	end
	if _SET.__enabled ~= enabled then
		_SET.__enabled = enabled;
		if enabled then
			_maskWrapper:Show();
		else
			_maskWrapper:Hide();
		end
	end
end
