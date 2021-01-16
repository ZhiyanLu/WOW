U1RegisterAddon("MasterPlanA", {
    title = "要塞任务管家",
    defaultEnable = 1,
    loadWith = "Blizzard_GarrisonUI",
    nolodbutton = 1,

    tags = { "TAG_QUEST", },
    icon = [[Interface\Icons\Garrison_GreenWeaponUpgrade]],
    desc = "帮助你选择最优配置来进行要塞追随者任务。",
    nopic = 1,
});

U1RegisterAddon("GarrisonMissionManager", {
    title = "要塞任务管家",
    parent = "MasterPlanA",
    defaultEnable = 1,
    loadWith = "Blizzard_GarrisonUI",
    nolodbutton = 1,

    tags = { "TAG_QUEST", },
    icon = [[Interface\Icons\Garrison_GreenWeaponUpgrade]],
    desc = "帮助你选择最优配置来进行要塞追随者任务。",
    nopic = 1,
});

U1RegisterAddon("MasterPlan", {
    title = "要塞任务大师",
    parent = "MasterPlanA",
    defaultEnable = 0,
    --loadWith = "Blizzard_GarrisonUI",
    nolodbutton = 1,
    -- conflicts = { "KayrCovenantMissions" },

    tags = { "TAG_QUEST", },
    icon = [[Interface\Icons\UI_Promotion_Garrisons]],
    desc = "修改并简化追随者任务面板的操作。",
    nopic = true,
});

U1RegisterAddon("KayrCovenantMissions", {
    title = "盟约随从任务助手",
    parent = "MasterPlanA",
    defaultEnable = 1,
    --loadWith = "Blizzard_GarrisonUI",
    --nolodbutton = 1,
    -- conflicts = { "MasterPlan" },

    tags = { "TAG_QUEST", },
    icon = [[Interface\Icons\UI_Promotion_Garrisons]],
    desc = "在盟约随从任务界面显示成功率",
    nopic = true,
});
