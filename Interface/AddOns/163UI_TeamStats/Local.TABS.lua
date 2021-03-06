local _, TS = ...

--[=[
]=]
--定义要显示的成就

TS.DATA_VERSION = 20200315

TS.VERSION_BOSSES = { -13322, "吉", -13418, "乌", -13784, "艾", -14068, "恩", -14460, "德", } --12110, "阿" -11874, "基" -- -11195, "古", --引领潮流 -11194, "萨", -11581, "海", 引领潮流：Ahead of the Curve: 千钧一发 Cutting Edge:


local RES = {
  {
      tab = "总览",
      ids = { 7399, -14531, -14532, },
      widths = { 70, 50, 50 },
      names = { "大秘次数", "S1征服", "S4大师", },
      tips = { "史诗秘钥副本总次数（包括旧版本）", "《暗影国度》钥石征服者：第一赛季（全10层限时）", "《暗影国度》钥石大师：第一赛季（全15层限时）"}
  },
}

local INSTANCES = {
    {
        bosses = {
            { "啸翼",             14419, 14420, { 14421, -14356, }, },
            { "猎手阿尔迪莫",      14423, 14424, { 14425, -14357, }, },
            { "太阳之王的救赎",    14435, 14436, { 14437, -14360, }, },
            { "圣物匠赛·墨克斯",   14431, 14432, { 14433, -14359, }, },
            { "饥饿的毁灭者",      14427, 14428, { 14429, -14358, }, },
            { "伊涅瓦·暗脉女勋爵", 14439, 14440, { 14441, -14361, }, },
            { "猩红议会",          14443, 14444, { 14445, -14362, }, },
            { "泥拳",             14447, 14448, { 14449, -14363, }, },
            { "顽石军团干将",      14451, 14452, { 14453, -14364, }, },
            { "德纳修斯大帝",      14455, 14456, { 14457, -14365, }, },
        },
        diff = { "", "H纳斯", "M纳斯", },
        tab = "纳斯利亚堡",
    },
}

-- {
--    ids = { 7399, 11162, {id1, id2, id3, ...}, {}, ... },
--    names = { "秘境数", "15层", "M翡翠", "H勇气", ...},
--    tab = "总览",
--  },
local TABS = {}

for ord, tab in next, RES do
    local one = { ids = {}, names = {}, tips = {}, tab = tab.tab, widths = {} }
    for i = 1, #tab.ids do
        if tab.names[i] and #tab.names[i] > 0 then
            one.ids[i] = tab.ids[i]
            one.names[i] = tab.names[i]
            one.tips[i] = tab.tips[i]
            one.widths[i] = tab.widths[i]
        end
    end

    for i, ins in ipairs(INSTANCES) do
        for j, diff in ipairs(ins.diff) do
            if diff and #diff > 0 then
                local bosses = {}
                for k = 1, #ins.bosses do
                    bosses[k] = ins.bosses[k][j + 1]
                end
                table.insert(one.ids, bosses)
                table.insert(one.names, diff)
            end
        end
    end
    tinsert(TABS, one)
end

local tip = "完成史诗副本的次数，注意包括普通史诗（非钥石）难度，因为暴雪的BUG，所以很多副本不准"

table.insert(TABS, {
    tab = "史诗副本次数",
    ids = { 14389, 14392, 14395, 14398, 14205, 14401, 14404, 14407, },
    widths = { 40, 40, 40, 40, 40, 40, 40, 40, },
    tips = { tip, tip, tip, tip, tip, tip, tip, tip, tip, tip, tip, tip, tip,  },
    names = { "彼界", "赎罪", "仙林", "凋魂", "赤红", "晋升", "通灵", "伤逝", },
})

table.insert(TABS, {
    tab = "千钧一发",
    any_done = true,
    ids = {
        {-14068},{-13785}, {-13419}, {-13323}, {-12535},
        {-12111}, {-11875}, {-11192}, {-11580}, {-11191},
        {-10045}, {-9443}, {-9442},
        {-8401, -8400}, {-8260}, {-8238},
        {-7487}, {-7486}, {-7485},
    },
    widths = { 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, },
    tips = {
        "千钧一发：恩佐斯", "千钧一发：艾萨拉", "千钧一发：乌纳特", "千钧一发：吉安娜", "千钧一发：戈霍恩",
        "千钧一发：阿古斯", "千钧一发：基尔加丹", "千钧一发：古尔丹", "千钧一发：海拉", "千钧一发：萨维斯",
        "千钧一发：黑暗之门（阿克蒙德）", "千钧一发：黑手的熔炉", "千钧一发：元首之陨",
        "千钧一发：加尔鲁什·地狱咆哮（10人或25人）", "千钧一发：莱登", "千钧一发：雷神",
        "千钧一发：惧之煞", "千钧一发：大女皇夏柯希尔", "千钧一发：皇帝的意志",
    },
    names = { "恩佐", "艾萨", "乌纳", "珍娜", "戈霍", "阿古", "基丹", "古尔", "海拉", "萨维", "阿克", "黑手", "悬槌", "小吼", "莱登", "雷神", "永春", "恐心", "魔古" },
})

TS.TABS = TABS

-- 鼠标移到统计项目上 /run local a=GetMouseFocus().id print(a, GetAchievementInfo(a))
