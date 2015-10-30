-- Date: 2015-10
-- File: msg_cg_activity.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define
--// 定义了客户端与游戏服务间的部分协议
--// 定义用户活动相关协议
--// 协议号分配：22500 ~ 22999


QueryActivityListReqBody = {
    ["name"] = "QueryActivityListReqBody",
    ["id"] = 22500,
}

QueryActivityListRespBody = {
    ["name"] = "QueryActivityListRespBody",
    ["id"] = 22501,
    ["attribs"] = {
        {"onlineAward", "ActivityOnlineInfo"},
        {"amassAward", "ActivityAmassInfo"},
        {"levelAward", "ActivityLevelInfo"},
        {"firstAward", "ActivityFirstRecharge"},
        {"monthSignAward", "ActivityMonthSignInfo"},
        {"powerGiveAward", "ActivityPowerGiveInfo"},
        {"actList", "ActivityInfo", "repeat"},
    },
}

GainAmassAwardReqBody = {
    ["name"] = "GainAmassAwardReqBody",
    ["id"] = 22502,
    ["attribs"] = {
        {"awardId", "uint32"},
    },
}

GainAmassAwardRespBody = {
    ["name"] = "GainAmassAwardRespBody",
    ["id"] = 22503,
}

GainOnlineAwardReqBody = {
    ["name"] = "GainOnlineAwardReqBody",
    ["id"] = 22504,
    ["attribs"] = {
        {"index", "uint32"},
    },
}

GainOnlineAwardRespBody = {
    ["name"] = "GainOnlineAwardRespBody",
    ["id"] = 22505,
}

GainLevelGiftReqBody = {
    ["name"] = "GainLevelGiftReqBody",
    ["id"] = 22506,
    ["attribs"] = {
        {"index", "uint32"},
    },
}

GainLevelGiftRespBody = {
    ["name"] = "GainLevelGiftRespBody",
    ["id"] = 22507,
}

GainFRAwardReqBody = {
    ["name"] = "GainFRAwardReqBody",
    ["id"] = 22508,
}

GainFRAwardRespBody = {
    ["name"] = "GainFRAwardRespBody",
    ["id"] = 22509,
    ["attribs"] = {
        {"frinfo", "ActivityFirstRecharge"},
    },
}

MonthSignReqBody = {
    ["name"] = "MonthSignReqBody",
    ["id"] = 22510,
    ["attribs"] = {
        {"autoSign", "bool"},
        {"addSign", "bool"},
    },
}

MonthSignRespBody = {
    ["name"] = "MonthSignRespBody",
    ["id"] = 22511,
    ["attribs"] = {
        {"signCount", "uint32"},
        {"addSignCount", "uint32"},
        {"signVip", "bool"},
    },
}

GainPowerReqBody = {
    ["name"] = "GainPowerReqBody",
    ["id"] = 22512,
    ["attribs"] = {
        {"index", "uint32"},
    },
}

GainPowerRespBody = {
    ["name"] = "GainPowerRespBody",
    ["id"] = 22513,
    ["attribs"] = {
        {"rolePower", "uint32"},
    },
}

