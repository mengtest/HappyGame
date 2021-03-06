--===================================================
-- (c) copyright 2014 - 2015, www.cfanim.cn
-- All Rights Reserved.
--==================================================
-- filename:  WorldOtherPetRoleStandState.lua
-- author:    taoye
-- e-mail:    553681974@qq.com
-- created:   2015/8/25
-- descrip:   世界中其他玩家宠物角色站立状态
--===================================================
local WorldOtherPetRoleStandState = class("WorldOtherPetRoleStandState",function()
    return require("State"):create()
end)

-- 构造函数
function WorldOtherPetRoleStandState:ctor()
    self._strName = "WorldOtherPetRoleStandState"           -- 状态名称
    self._kTypeID = kType.kState.kWorldOtherPetRole.kStand  -- 状态类型ID
    self._fTimeCounter = 0                                  -- 时间累加
    ------------ 时间计数 ---------------------------------------------
    self._fStandTime = 0
    self._fCasualTime = 0

end

-- 创建函数
function WorldOtherPetRoleStandState:create()
    local state = WorldOtherPetRoleStandState.new()
    return state
end

-- 进入函数
function WorldOtherPetRoleStandState:onEnter(args)
    --print(self._strName.." is onEnter!")        
    if self:getMaster() then
        self._fStandTime = 0
        self._fCasualTime = 0
        self._fStandTime = self:getMaster()._pTempleteInfo.CasualActInterval
        self:getMaster():playStandAction()

        self._fTimeCounter = 0
        -- 检测遮挡
        self:getMaster():checkCover()
    end
    return
end

-- 退出函数
function WorldOtherPetRoleStandState:onExit()
    --print(self._strName.." is onExit!")
    self._fTimeCounter = 0
    self._fStandTime = 0
    self._fCasualTime = 0
    return
end

-- 更新逻辑
function WorldOtherPetRoleStandState:update(dt)
    if self:getMaster() then
        -- 时间计数
        self._fTimeCounter = self._fTimeCounter + dt
        if self._fTimeCounter >= 0.5 then   -- 每隔0.5s检测一次
            ---------------------------------------------- 开始寻路 ----------------------------------------------------------
            local target = self:getMaster()._pMaster
            local posIndex = self:getMaster():getPositionIndex()
            local targetPosIndex = self:getMapManager():convertPiexlToIndex(cc.p(target:getPositionX(), target:getPositionY()))
            if math.abs(posIndex.x - targetPosIndex.x) > 4 or math.abs(posIndex.y - targetPosIndex.y) > 4 then      -- 横竖超过4个格子时需要寻路跟随
                self._fTimeCounter = 0
                local path = mmo.AStarHelper:getInst():ComputeAStar(posIndex, targetPosIndex)
                self:getMaster():getStateMachineByTypeID(kType.kStateMachine.kWorldOtherPetRole):setCurStateByTypeID(kType.kState.kWorldOtherPetRole.kRun, false, {moveDirections = path}) 
                return
            end
        end

        -- 时间计数
        if self._fCasualTime == 0 then
            self._fStandTime = self._fStandTime - dt
            if self._fStandTime <= 0 then
                self._fStandTime = 0
                self._fCasualTime = self:getMaster():getCasualActionTime()
                self:getMaster():playCasualAction()
            end
        else
            self._fCasualTime = self._fCasualTime - dt
            if self._fCasualTime <= 0 then
                self._fCasualTime = 0
                self._fStandTime = self:getMaster()._pTempleteInfo.CasualActInterval
                self:getMaster():playStandAction()
            end
        end
        
    end
    return
end


return WorldOtherPetRoleStandState
