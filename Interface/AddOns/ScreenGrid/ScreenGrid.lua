local bs = 0
local CSG = CreateFrame('Frame', nil, UIParent)
local CSG_bs


SLASH_SCREENGRID1 = "/screengrid"
SLASH_SCREENGRID2 = "/sg"
SlashCmdList["SCREENGRID"] = function(msg)
	if msg == '' then
		bs = 0
	else
		bs = (math.ceil((tonumber(msg) or bs) / 4) * 4)
		if bs > 512 then
			bs = 512
		end
	end
	if CSG_bs ~= bs then
		CSG:Hide(self)
		CSG_doDraw(self)
		CSG:Show(self)
	end
end

function CSG_doDraw(self)
	CSG_bs = bs
	CSG = CreateFrame('Frame', nil, UIParent)
	CSG:SetAllPoints(UIParent)
	CSG:SetFrameStrata('BACKGROUND')
	CSG:SetFrameLevel(0)
	local w = GetScreenWidth()
	local r = w/GetScreenHeight()
	local h = GetScreenHeight()
	local m = UIParent:GetEffectiveScale()
	local wI = w/bs
	local hI = h/(bs/r)

	if bs > 0 then
		for i = 0, bs do
			local line = CSG:CreateLine(nil, 'BACKGROUND')
			line:SetStartPoint("TOPLEFT", i*wI*m, 0)
			line:SetEndPoint("BOTTOMLEFT", i*wI*m, 0)
			line:SetColorTexture(0, 0, 0, 0.75)
			line:SetThickness(1)
		end

		for i = 0, math.floor(bs/r) do
			local line = CSG:CreateLine(nil, 'BACKGROUND')
			line:SetStartPoint("TOPLEFT", 0, -i*hI*m)
			line:SetEndPoint("TOPRIGHT", 0, -i*hI*m)
			line:SetColorTexture(0, 0, 0, 0.75)
			line:SetThickness(1)
		end
	end
end

