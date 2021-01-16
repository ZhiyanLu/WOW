local tonumber = tonumber;
local strmatch = strmatch;
local UnitGUID = UnitGUID;

local function GetUnitID(unit)
	local guid = UnitGUID(unit);
	if guid then
		local id = strmatch(guid, "-(%d+)-%x+$");
		if id then
			return tonumber(id);
		end
	end
end

local control = false;
local width = nil;
local height = nil;
local scale_width = 2.0;
local scale_height = 2.0;
local r, g, b = 1, 0, 1;

local function proc(frame)
	if control then
		if not UnitIsPlayer(frame.unit) and not CompactUnitFrame_IsTapDenied(frame) then
			if select(2, IsInInstance()) == "party" then
				local unitid = GetUnitID(frame.unit);
				if unitid == 120651 then
					width = width or frame.healthBar:GetWidth();
					height = height or frame.healthBar:GetHeight();
					frame.healthBar:SetWidth(height * scale_width);
					frame.healthBar:SetHeight(height * scale_height);
					frame.healthBar:SetStatusBarColor(r, g, b, 1);
				end
			end
		end
	end
end
hooksecurefunc("CompactUnitFrame_OnUpdate", proc);

function _163UI_TOGGLE_EXPLOSIVE_NAMEPALTE(v, loading)
	control = v;
	if not loading then
		if v then
			for i, frame in next, C_NamePlate.GetNamePlates() do
				proc(frame);
			end
		else
			if height then
				for i, frame in next, C_NamePlate.GetNamePlates() do
					frame.healthBar:SetHeight(height);
				end
			end
			if width then
				for i, frame in next, C_NamePlate.GetNamePlates() do
					frame.healthBar:SetWidth(width);
				end
			end
		end
	end
end

function _163UI_SET_EXPLOSIVE_NAMEPALTE_SCALE_WIDTH(scale)
	scale_width = scale;
	for _, frame in next, C_NamePlate.GetNamePlates() do
		proc(frame);
	end
end
function _163UI_SET_EXPLOSIVE_NAMEPALTE_SCALE_HEIGHT(scale)
	scale_height = scale;
	for _, frame in next, C_NamePlate.GetNamePlates() do
		proc(frame);
	end
end
