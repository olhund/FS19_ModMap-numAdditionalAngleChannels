-- ls19 ready
ModMap = {} 
local ModMap_mt = Class(ModMap, Mission00)

function ModMap:new(baseDirectory, customMt, missionCollaborators)
    local mt = customMt
    if mt == nil then
        mt = ModMap_mt
    end
    local self = ModMap:superClass():new(baseDirectory, mt, missionCollaborators)

    -- Number of additional channels that are used compared to the original setting (2)
    local numAdditionalAngleChannels = 4 -- Winkel Ch. Boden

    self.terrainDetailAngleNumChannels = self.terrainDetailAngleNumChannels + numAdditionalAngleChannels;
    self.terrainDetailAngleMaxValue = (2^self.terrainDetailAngleNumChannels) - 1;

    self.sprayLevelFirstChannel = self.sprayLevelFirstChannel + numAdditionalAngleChannels;

    self.plowCounterFirstChannel = self.plowCounterFirstChannel + numAdditionalAngleChannels;
    self.limeCounterFirstChannel = self.limeCounterFirstChannel + numAdditionalAngleChannels;

    return self
end

-- Enhanced placeable mod ls17 to ls19 by s4t4n
-- ModMap
-- $dataS/scripts/missions/mission00.lua
-- Mission00
-- ModMap.lua

-- function ModMap:onStartMission()
  -- ModMap:superClass().onStartMission(self);
  -- if g_currentMission:getIsServer() and not g_currentMission.missionInfo.isValid then		
	-- g_currentMission.missionStats.money = 0;		
	-- if self.missionInfo.difficulty == 1 then
	  -- self:addSharedMoney(400000);
	  -- g_currentMission.missionStats.loan = 1000;        
	 -- elseif self.missionInfo.difficulty == 2 then
	  -- self:addSharedMoney(300000);
	  -- g_currentMission.missionStats.loan = 3000;        
	 -- elseif self.missionInfo.difficulty == 3 then
	  -- self:addSharedMoney(200000); 
	  -- g_currentMission.missionStats.loan = 9000; 
    -- end;
  -- end;
-- end;

-- function ModMap:draw()
    -- ModMap:superClass().draw(self);		
	-- if self.ModMapFirstStart == nil then
		-- self.ModMapFirstStart = true;
		
		-- -- StoreItemsUtil.removeStoreItem(StoreItemsUtil.storeItemsByXMLFilename[string.lower("data/vehicles/trailers/joskin/joskinBetimaxRDS7500.xml")].id)
	-- end;
-- end
