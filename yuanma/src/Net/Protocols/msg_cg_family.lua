-- Date: 2015-10
-- File: msg_cg_family.lua
-- Auth: generated by auto tool 'lazybone'
-- Desc: message define
--// 定义了客户端与游戏服务间的家族部分协议
--// 定义好友相关协议
--// 协议号分配：22300 ~ 22399


QueryFamilyListReqBody = {
    ["name"] = "QueryFamilyListReqBody",
    ["id"] = 22300,
    ["attribs"] = {
        {"beginIndex", "uint32"},
        {"stepCount", "uint32"},
    },
}

QueryFamilyListRespBody = {
    ["name"] = "QueryFamilyListRespBody",
    ["id"] = 22301,
    ["attribs"] = {
        {"familyCount", "uint32"},
        {"familyList", "FamilyUnit", "repeat"},
        {"applyInfo", "bool", "repeat"},
    },
}

EntryFamilyReqBody = {
    ["name"] = "EntryFamilyReqBody",
    ["id"] = 22302,
}

EntryFamilyRespBody = {
    ["name"] = "EntryFamilyRespBody",
    ["id"] = 22303,
    ["attribs"] = {
        {"donateCount", "uint32"},
        {"position", "uint16"},
        {"familyInfo", "FamilyUnit", "repeat"},
    },
}

FindFamilyReqBody = {
    ["name"] = "FindFamilyReqBody",
    ["id"] = 22304,
    ["attribs"] = {
        {"familyName", "string"},
    },
}

FindFamilyRespBody = {
    ["name"] = "FindFamilyRespBody",
    ["id"] = 22305,
    ["attribs"] = {
        {"isApply", "bool"},
        {"familyInfo", "FamilyUnit", "repeat"},
    },
}

CreateFamilyReqBody = {
    ["name"] = "CreateFamilyReqBody",
    ["id"] = 22306,
    ["attribs"] = {
        {"name", "string"},
        {"purpose", "string"},
    },
}

CreateFamilyRespBody = {
    ["name"] = "CreateFamilyRespBody",
    ["id"] = 22307,
    ["attribs"] = {
        {"familyInfo", "FamilyUnit"},
    },
}

ApplyFamilyReqBody = {
    ["name"] = "ApplyFamilyReqBody",
    ["id"] = 22308,
    ["attribs"] = {
        {"familyId", "uint32"},
    },
}

ApplyFamilyRespBody = {
    ["name"] = "ApplyFamilyRespBody",
    ["id"] = 22309,
}

ChangeFamilyNameReqBody = {
    ["name"] = "ChangeFamilyNameReqBody",
    ["id"] = 22310,
    ["attribs"] = {
        {"newName", "string"},
    },
}

ChangeFamilyNameRespBody = {
    ["name"] = "ChangeFamilyNameRespBody",
    ["id"] = 22311,
}

ChangeFamilyPurposeReqBody = {
    ["name"] = "ChangeFamilyPurposeReqBody",
    ["id"] = 22312,
    ["attribs"] = {
        {"newPurpose", "string"},
    },
}

ChangeFamilyPurposeRespBody = {
    ["name"] = "ChangeFamilyPurposeRespBody",
    ["id"] = 22313,
}

DonateFamilyReqBody = {
    ["name"] = "DonateFamilyReqBody",
    ["id"] = 22314,
    ["attribs"] = {
        {"donateType", "uint16"},
        {"donateGrade", "uint32"},
    },
}

DonateFamilyRespBody = {
    ["name"] = "DonateFamilyRespBody",
    ["id"] = 22315,
    ["attribs"] = {
        {"contribution", "uint32"},
        {"construction", "uint32"},
        {"cash", "uint32"},
        {"donateCount", "uint32"},
    },
}

UpgradeFamilyReqBody = {
    ["name"] = "UpgradeFamilyReqBody",
    ["id"] = 22316,
}

UpgradeFamilyRespBody = {
    ["name"] = "UpgradeFamilyRespBody",
    ["id"] = 22317,
    ["attribs"] = {
        {"familyInfo", "FamilyUnit"},
    },
}

QueryFamilyApplysReqBody = {
    ["name"] = "QueryFamilyApplysReqBody",
    ["id"] = 22318,
}

QueryFamilyApplysRespBody = {
    ["name"] = "QueryFamilyApplysRespBody",
    ["id"] = 22319,
    ["attribs"] = {
        {"applyList", "ApplyFriendInfo", "repeat"},
    },
}

ReplyFamilyApplyReqBody = {
    ["name"] = "ReplyFamilyApplyReqBody",
    ["id"] = 22320,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"isAgree", "bool"},
        {"isAuto", "bool"},
    },
}

ReplyFamilyApplyRespBody = {
    ["name"] = "ReplyFamilyApplyRespBody",
    ["id"] = 22321,
}

QueryFamilyMembersReqBody = {
    ["name"] = "QueryFamilyMembersReqBody",
    ["id"] = 22322,
}

QueryFamilyMembersRespBody = {
    ["name"] = "QueryFamilyMembersRespBody",
    ["id"] = 22323,
    ["attribs"] = {
        {"members", "FamilyMemberInfo", "repeat"},
    },
}

FamilyAppointReqBody = {
    ["name"] = "FamilyAppointReqBody",
    ["id"] = 22324,
    ["attribs"] = {
        {"roleId", "uint32"},
        {"position", "uint16"},
    },
}

FamilyAppointRespBody = {
    ["name"] = "FamilyAppointRespBody",
    ["id"] = 22325,
}

DismissFamilyMemberReqBody = {
    ["name"] = "DismissFamilyMemberReqBody",
    ["id"] = 22326,
    ["attribs"] = {
        {"roleId", "uint32"},
    },
}

DismissFamilyMemberRespBody = {
    ["name"] = "DismissFamilyMemberRespBody",
    ["id"] = 22327,
}

QuitFamilyReqBody = {
    ["name"] = "QuitFamilyReqBody",
    ["id"] = 22328,
}

QuitFamilyRespBody = {
    ["name"] = "QuitFamilyRespBody",
    ["id"] = 22329,
}

QueryFamilyNewsReqBody = {
    ["name"] = "QueryFamilyNewsReqBody",
    ["id"] = 22330,
}

QueryFamilyNewsRespBody = {
    ["name"] = "QueryFamilyNewsRespBody",
    ["id"] = 22331,
    ["attribs"] = {
        {"newsList", "FamilyNews", "repeat"},
    },
}

QueryFamilyAcademyReqBody = {
    ["name"] = "QueryFamilyAcademyReqBody",
    ["id"] = 22332,
}

QueryFamilyAcademyRespBody = {
    ["name"] = "QueryFamilyAcademyRespBody",
    ["id"] = 22333,
    ["attribs"] = {
        {"academyLevel", "uint32"},
        {"techList", "FamilyTech", "repeat"},
    },
}

UpgradeFamilyAcademyReqBody = {
    ["name"] = "UpgradeFamilyAcademyReqBody",
    ["id"] = 22334,
}

UpgradeFamilyAcademyRespBody = {
    ["name"] = "UpgradeFamilyAcademyRespBody",
    ["id"] = 22335,
    ["attribs"] = {
        {"score", "uint32"},
        {"cash", "uint32"},
        {"academyLevel", "uint32"},
        {"techList", "FamilyTech", "repeat"},
    },
}

ActivateFamilyTechReqBody = {
    ["name"] = "ActivateFamilyTechReqBody",
    ["id"] = 22336,
    ["attribs"] = {
        {"techId", "uint32"},
    },
}

ActivateFamilyTechRespBody = {
    ["name"] = "ActivateFamilyTechRespBody",
    ["id"] = 22337,
    ["attribs"] = {
        {"score", "uint32"},
        {"cash", "uint32"},
        {"techList", "FamilyTech", "repeat"},
    },
}

UpgradeFamilyTechReqBody = {
    ["name"] = "UpgradeFamilyTechReqBody",
    ["id"] = 22338,
    ["attribs"] = {
        {"techId", "uint32"},
    },
}

UpgradeFamilyTechRespBody = {
    ["name"] = "UpgradeFamilyTechRespBody",
    ["id"] = 22339,
    ["attribs"] = {
        {"score", "uint32"},
        {"cash", "uint32"},
        {"techList", "FamilyTech", "repeat"},
    },
}

FindFamilyByIdReqBody = {
    ["name"] = "FindFamilyByIdReqBody",
    ["id"] = 22340,
    ["attribs"] = {
        {"familyId", "uint32"},
    },
}

FindFamilyByIdRespBody = {
    ["name"] = "FindFamilyByIdRespBody",
    ["id"] = 22341,
    ["attribs"] = {
        {"familyInfo", "FamilyUnit", "repeat"},
    },
}

