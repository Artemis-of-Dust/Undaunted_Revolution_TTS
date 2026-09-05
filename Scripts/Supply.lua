local componentPlacements = {
    unitTokens = {
        LFA_GSA = {x=14, z=-2},
        LFA_SSA = {x=13, z=-2},
        LFA_FIA = {x=12, z=-2},
        LFA_BOA = {x=11, z=-2},
        LFA_TRA = {x=10, z=-2},
        LFA_SLA = {x= 9, z=-2},
        
        LFA_GSB = {x=14, z=-1},
        LFA_SSB = {x=13, z=-1},
        LFA_FIB = {x=12, z=-1},
        LFA_BOB = {x=11, z=-1},
        LFA_TRB = {x=10, z=-1},
        LFA_SLB = {x= 9, z=-1},
        
        LFA_DIS = {x= 8, z=-2},
        LFA_CPT = {x= 8, z=-1},
        
        BRE_GSA = {x= 6, z=-2},
        BRE_SSA = {x= 5, z=-2},
        BRE_FIA = {x= 4, z=-2},
        BRE_BOA = {x= 3, z=-2},
        BRE_TRA = {x= 2, z=-2},
        BRE_SLA = {x= 1, z=-2},
        
        BRE_GSB = {x= 6, z=-1},
        BRE_SSB = {x= 5, z=-1},
        BRE_FIB = {x= 4, z=-1},
        BRE_BOB = {x= 3, z=-1},
        BRE_TRB = {x= 2, z=-1},
        BRE_SLB = {x= 1, z=-1},
        
        BRE_DIS = {x= 0, z=-2},
        BRE_CPT = {x= 0, z=-1},
        
        AJB = {x=-02, z=-2, dual=true},
        SPB = {x=-03, z=-2, dual=true},
        EWO = {x=-04, z=-2, dual=true},
        ESR = {x=-05, z=-2, dual=true},
        TRR = {x=-06, z=-2, dual=true},
        TFN = {x=-07, z=-2, dual=true},
        TBN = {x=-08, z=-2, dual=true},
        TGN = {x=-09, z=-2, dual=true},
        TRN = {x=-10, z=-2, dual=true},
        PSV = {x=-11, z=-2, dual=true},
        
        LFA_GSM = {x=-12, z=-2},
        LFA_SGB = {x=-13, z=-2},
        },
    cargoCards = {
        LFA_TRA = {x= 13, z=-3},
        LFA_TRB = {x= 11, z=-3},
        BRE_TRA = {x=  5, z=-3},
        BRE_TRB = {x=  3, z=-3},
        TRR     = {x= -6, z=-3},
        TRN     = {x=-10, z=-3},
        },
    mapBoards = {
        ["1"] = {x= 10, z=-10, y=0},
        ["2"] = {x= 10, z=-10, y=1},
        ["3"] = {x= 10, z=-10, y=2},
        ["4"] = {x= 0, z=-10, y=0},
        ["5"] = {x= 0, z=-10, y=1},
        ["6"] = {x= 0, z=-10, y=2},
        },
    scenarioCards = {
        ["0"]  = {x= 7, z=-5},
        ["1a"] = {x= 6, z=-5},
        ["1b"] = {x= 5, z=-5},
        ["2a"] = {x= 4, z=-5},
        ["2b"] = {x= 3, z=-5},
        ["2c"] = {x= 2, z=-5},
        ["2d"] = {x= 1, z=-5},
        ["3a"] = {x= 0, z=-5},
        ["3b"] = {x=-1, z=-5},
        ["3c"] = {x=-2, z=-5},
        ["3d"] = {x=-3, z=-5},
        ["3e"] = {x=-4, z=-5},
        ["3f"] = {x=-5, z=-5},
        ["3g"] = {x=-6, z=-5},
        ["3h"] = {x=-7, z=-5},
    }
}

local structureData = Global.getTable("structureData")

function getPiecePos(pieceTable, pieceKey)
    if componentPlacements[pieceTable] == nil or componentPlacements[pieceTable][pieceKey] == nil then
        return nil
    end

    local truePos = self.positionToWorld({
        x = componentPlacements[pieceTable][pieceKey].x,
        y = 0.1,
        z = componentPlacements[pieceTable][pieceKey].z,
        })
        
    return truePos
end

function findFirstObjWithNote(objTable, tokenNote)
    for _, obj in pairs(objTable) do
        if obj.getGMNotes() == tokenNote then
            return obj
        end
    end
end

function resetAllComponents()
    local supplyObj = Global.getTable("tableObjects").supplyArea
    local unitCardObjs = Global.call("findAllObjWithTag", "UnitCard")
    local scenarioCardObjs = Global.call("findAllObjWithTag", "ScenarioCard")
    local structureTokenObjs = Global.call("findAllObjWithTag", "StructureToken")
    local baseRotation = self.getRotation()
    local coordXScale = 0.03
    local coordZScale = 0.07
    local coordYScale = 0.20
    local componentHeight = 0.5
    local coordZBaseOffset = 7

    -- Move unit pieces and their respective tokens    
    for unitID, data in pairs(componentPlacements.unitTokens) do
        -- Find and move the unit piece itself
        if data.dual then -- For Neutrals with 2 associated components we get both of them
            local unitObj = Global.call("getObjByNote", {GMNote="LFA_" .. unitID, tag="UnitToken"})
            local unitPos = self.positionToWorld({
                x = (data.x) * coordXScale,
                y = componentHeight + 0.2,
                z = (data.z + 0.25 + coordZBaseOffset) * coordZScale,
                })
            if unitObj then
                unitObj.setRotation(baseRotation)
                unitObj.setPosition(unitPos)
                unitObj.locked = false
                Global.call("setUnitStun", {obj=unitObj, state=false})
            end
            
            local unitObj = Global.call("getObjByNote", {GMNote="BRE_" .. unitID, tag="UnitToken"})
            local unitPos = self.positionToWorld({
                x = (data.x) * coordXScale,
                y = componentHeight + 0.2,
                z = (data.z - 0.25 + coordZBaseOffset) * coordZScale,
                })
            if unitObj then
                unitObj.setRotation(baseRotation)
                unitObj.setPosition(unitPos)
                unitObj.locked = false
                Global.call("setUnitStun", {obj=unitObj, state=false})
            end
        else -- For team-specific we just go grab the one piece it has 
            local unitObj = Global.call("getObjByNote", {GMNote=unitID, tag="UnitToken"})
            local unitPos = self.positionToWorld({
                x = data.x * coordXScale,
                y = componentHeight + 0.2,
                z = (data.z + coordZBaseOffset) * coordZScale,
                })
            if unitObj then
                unitObj.setRotation(baseRotation)
                unitObj.setPosition(unitPos)
                unitObj.locked = false
                Global.call("setUnitStun", {obj=unitObj, state=false})
            end
        end
        
        -- Form the deck from the found cards
        local deckObj = nil
        for i=1,5,1 do
            local unitCard = findFirstObjWithNote(unitCardObjs, unitID .. "_" .. i)
            if unitCard then
                if deckObj == nil then
                    deckObj = unitCard
                else
                    local relPos = deckObj.getPosition()
                    relPos.y = relPos.y - 0.1 -- Yes this is how you ensure it always places the 2nd card on the bottom. UGGHGHHH
                    unitCard.setPosition(relPos)
                    deckObj = deckObj.putObject(unitCard, 0)
                end
            end
        end
        local deckPos = self.positionToWorld({
            x = data.x * coordXScale,
            y = componentHeight,
            z = (data.z + coordZBaseOffset) * coordZScale,
            })
        if deckObj then
            deckObj.setRotation(baseRotation)
            deckObj.setPosition(deckPos)
            deckObj.locked = false
        end
    end

    -- Move Cargo cards (transport units).
    -- Due to Transports already having their own deck it's easier to keep it separate.
    for unitID, data in pairs(componentPlacements.cargoCards) do
        local unitObj = Global.call("getObjByNote", {GMNote=unitID, tag="TransportCard"})
        local unitPos = self.positionToWorld({
            x = data.x * coordXScale,
            y = componentHeight,
            z = (data.z + coordZBaseOffset) * coordZScale,
            })
        if unitObj then
            unitObj.setRotation(baseRotation)
            unitObj.setPosition(unitPos)
            unitObj.locked = false
        end
    end
    
    -- Move Map Boards
    for unitID, data in pairs(componentPlacements.mapBoards) do
        local unitObj = Global.call("getObjByNote", {GMNote=unitID, tag="MapBoard"})
        local unitPos = self.positionToWorld({
            x = data.x * coordXScale,
            y = (data.y * coordYScale) + componentHeight,
            z = (data.z + coordZBaseOffset) * coordZScale,
            })
        if unitObj then
            unitObj.setRotation(baseRotation)
            unitObj.setPosition(unitPos, false, false)
            unitObj.locked = false
        end
    end

    -- Scenario cards 
    for scenarioID, data in pairs(componentPlacements.scenarioCards) do
        -- Form the deck from the found cards
        local deckObj = nil
        for i=1,4,1 do
            local scenarioCard = findFirstObjWithNote(scenarioCardObjs, scenarioID .. "_" .. i)
            if scenarioCard then
                if deckObj == nil then
                    deckObj = scenarioCard
                else
                    local relPos = deckObj.getPosition()
                    relPos.y = relPos.y - 0.1 -- Yes this is how you ensure it always places the 2nd card on the bottom. UGGHGHHH
                    scenarioCard.setPosition(relPos)
                    deckObj = deckObj.putObject(scenarioCard, 0)
                end
            end
        end
        local deckPos = self.positionToWorld({
            x = data.x * coordXScale,
            y = componentHeight,
            z = (data.z + coordZBaseOffset) * coordZScale,
            })
        if deckObj then
            deckObj.setRotation(baseRotation)
            deckObj.setPosition(deckPos)
            deckObj.locked = false
        end
    end

    -- Structure tokens
    for _, structureToken in pairs(structureTokenObjs) do
        local structureID = structureToken.getGMNotes()
        local structureDataEntry = structureData[structureID]
        local bagID = structureData[structureID] and structureData[structureID].bagID or structureID
        local bagObj = Global.call("getObjByNote", {GMNote=bagID, tag="TokenBag"})
        if bagObj then
            structureToken = Global.call("setUnitStun", {obj=structureToken, state=1})
            bagObj = bagObj.putObject(structureToken)
        end
    end

end