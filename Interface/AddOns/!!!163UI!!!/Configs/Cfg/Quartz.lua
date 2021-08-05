U1RegisterAddon("Quartz", {
    title = "施法条增强",
    tags = { "TAG_ACTIONBUTTONCASTBAR", },
    defaultEnable = 0,
    load = "NORMAL",
    icon = [[Interface\ICONS\INV_Enchant_EssenceCosmicGreater]],
    desc = "美化和增强施法条，支持延迟显示等贴心功能。",
    nopic = 1,

	{ 
        type = 'button', 
        text = '配置界面', 
        callback = function() 
            InterfaceOptionsFrame_OpenToCategory("Quartz 3")
			InterfaceOptionsFrame_OpenToCategory("Quartz 3")
			InterfaceOptionsFrame_OpenToCategory("Quartz 3")
        end 
    },
	{ 
        type = 'button', 
        text = '重置所有设置为默认', 
        callback = function() 
            Quartz3DB = nil;
            ReloadUI();
        end 
    },
    {
        var = "charmingCastBar",
        default = 0,
        text = "为施法条加点料！",
        tip = "为施法条增加一些额外的小彩蛋",
        type = "radio",
        options = {
            "无", 0, "有爱", 1, "墨黑", 2, "火焰", 3, "雷光", 4,
        },
        cols = 5,
        callback = function(cfg, v, loading)
            if Quartz3CastBarPlayer and Quartz3CastBarPlayer.Bar then
                if v ~= 0 then
                    _163UIPlugin.CastingFrame.Enable(Quartz3CastBarPlayer.Bar, v);
                else
                    _163UIPlugin.CastingFrame.Disable(Quartz3CastBarPlayer.Bar);
                end
            end
        end
    },
});