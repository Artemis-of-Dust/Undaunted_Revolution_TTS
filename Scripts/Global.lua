tableObjects = {
    mapBase    = "8cfe45",
    supplyArea = "ca3005",
}

unitData = {
    LFA_GSA = {faction="LFA", terrain="Ground", controlType = "A"},
    LFA_GSB = {faction="LFA", terrain="Ground", controlType = "B"},
    LFA_SSA = {faction="LFA", terrain="Ground", controlType = "A"},
    LFA_SSB = {faction="LFA", terrain="Ground", controlType = "B"},
    LFA_FIA = {faction="LFA", terrain="Air",    controlType = "A"},
    LFA_FIB = {faction="LFA", terrain="Air",    controlType = "B"},
    LFA_BOA = {faction="LFA", terrain="Air",    controlType = "A"},
    LFA_BOB = {faction="LFA", terrain="Air",    controlType = "B"},
    LFA_TRA = {faction="LFA", terrain="Air",    controlType = "A", cargo=true},
    LFA_TRB = {faction="LFA", terrain="Air",    controlType = "B", cargo=true},
    
    LFA_GSM = {faction="LFA", terrain="Ground", controlType = "B"},
    LFA_SGB = {faction="LFA", terrain="Air",    controlType = "B"},
    
    BRE_GSA = {faction="BRE", terrain="Ground", controlType = "A"},
    BRE_GSB = {faction="BRE", terrain="Ground", controlType = "B"},
    BRE_SSA = {faction="BRE", terrain="Ground", controlType = "A"},
    BRE_SSB = {faction="BRE", terrain="Ground", controlType = "B"},
    BRE_FIA = {faction="BRE", terrain="Air",    controlType = "A"},
    BRE_FIB = {faction="BRE", terrain="Air",    controlType = "B"},
    BRE_BOA = {faction="BRE", terrain="Air",    controlType = "A"},
    BRE_BOB = {faction="BRE", terrain="Air",    controlType = "B"},
    BRE_TRA = {faction="BRE", terrain="Air",    controlType = "A", cargo=true},
    BRE_TRB = {faction="BRE", terrain="Air",    controlType = "B", cargo=true},
    
    LFA_ESR = {faction="LFA", alias="ESR", terrain="Ground", controlType = "A"},
    BRE_ESR = {faction="BRE", alias="ESR", terrain="Ground", controlType = "A"},
    LFA_TRR = {faction="LFA", alias="TRR", terrain="Air",    controlType = "A", cargo=true},
    BRE_TRR = {faction="BRE", alias="TRR", terrain="Air",    controlType = "A", cargo=true},
    LFA_TFN = {faction="LFA", alias="TFN", terrain="Air",    controlType = "B"},
    BRE_TFN = {faction="BRE", alias="TFN", terrain="Air",    controlType = "B"},
    LFA_TGN = {faction="LFA", alias="TGN", terrain="Air",    controlType = "A"},
    BRE_TGN = {faction="BRE", alias="TGN", terrain="Air",    controlType = "A"},
    LFA_TBN = {faction="LFA", alias="TBN", terrain="Air",    controlType = "B"},
    BRE_TBN = {faction="BRE", alias="TBN", terrain="Air",    controlType = "B"},
    LFA_TRN = {faction="LFA", alias="TRN", terrain="Air",    controlType = "B", cargo=true},
    BRE_TRN = {faction="BRE", alias="TRN", terrain="Air",    controlType = "B", cargo=true},
    LFA_PSV = {faction="LFA", alias="PSV", terrain="Ground", controlType = "B"},
    BRE_PSV = {faction="BRE", alias="PSV", terrain="Ground", controlType = "B"},
}

structureData = {
    CP1 = {locked=true,  rot=180, offset={x=0, y=0, z=0.8}, bagID="CP"},
    CP2 = {locked=true,  rot=180, offset={x=0, y=0, z=0.8}, bagID="CP"},
    CPX = {locked=true,  rot=180, offset={x=0, y=0, z=0.8}, bagID="CP"},
    
    DOM = {locked=false,  rot=  0, offset={x=0, y=0, z=0}, bagID="Building"},
    TUR = {locked=false,  rot=  0, offset={x=0, y=0, z=0}, bagID="Building"},
    HGR = {locked=false,  rot=  0, offset={x=0, y=0, z=0}, bagID="Building"},
    
    NOE = {locked=false,  rot=  0, offset={x=0, y=0, z=0}, bagID="NoEntry"},
    DRO = {locked=true,  rot=  0, offset={x=0, y=0, z=0}, bagID="NoEntry"},
    
    SUP = {locked=false, rot=  0, offset={x=0, y=0.2, z=0}, bagID="Supply"},
    
    DEB = {locked=true,  rot=120, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    VO1 = {locked=true,  rot=-60, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    VO2 = {locked=true,  rot= 60, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    TU1 = {locked=true,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    TU2 = {locked=true,  rot=-60, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    EUR = {locked=true,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    ML1 = {locked=true,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    ML2 = {locked=true,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    MAR = {locked=true,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    TOK = {locked=true,  rot=240, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    DES = {locked=true,  rot= 60, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    DR1 = {locked=false,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    DR2 = {locked=false,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
    DR3 = {locked=false,  rot=  0, offset={x=0, y=0.04, z=0}, bagID="Terrain"},
}

-- UTILITY FUNCTIONS
function getObjByNote(args)
    local tokenNote = tostring(args.GMNote)
    local tokenTag  = tostring(args.tag)
    for _, obj in pairs(getObjects()) do
        if (tokenTag == nil or obj.hasTag(tokenTag)) and obj.getGMNotes() == tokenNote then
            return obj
        -- For containers, search the contents to find it.
        elseif obj.type == "Deck" or obj.type == "Bag" then
            for _, containedObj in pairs(obj.getObjects()) do
                if containedObj.gm_notes ==  tokenNote then
                    local hasTag = tokenTag == nil and true or false
                    for _, tag in pairs(containedObj.tags) do
                        if tag == tokenTag then
                            hasTag = true
                        end
                    end
                    if hasTag then 
                        -- Remove the object from its container.
                        return obj.takeObject({guid=containedObj.guid})
                    end
                end
            end
            
        end
    end
    
    return nil
end

function findAllObjWithTag(tokenTag)
    local foundObjs = {}
    
    for _, obj in pairs(getObjects()) do
        if obj.hasTag(tokenTag) and (obj.type ~= "Deck") then
            table.insert(foundObjs, obj)
        -- For containers, search the contents to find it.
        elseif obj.type == "Deck" or obj.type == "Bag" then
            for _, containedObj in pairs(obj.getObjects()) do
                local hasTag = false
                for _, tag in pairs(containedObj.tags) do
                    if tag == tokenTag then
                        hasTag = true
                    end
                end
                
                if hasTag then 
                    -- Remove the object from its container.
                    table.insert(foundObjs, obj.remainder or obj.takeObject({guid=containedObj.guid}))
                end
            end
            
        end
    end

    return foundObjs
end

function setUnitStun(args)
    local unitObj  = args.obj
    local stunBool = args.state
    if stunBool == true and unitObj.getStateId() ~= 2 and unitObj.getStateId() ~= -1 then
        unitObj = unitObj.setState(2)
    elseif unitObj.getStateId() ~= 1 and unitObj.getStateId() ~= -1 then
        unitObj = unitObj.setState(1)
    end
    
    return unitObj
end

function onLoad()
    -- Find major objects for functions
    for key, GUID in pairs(tableObjects) do
        tableObjects[key] = getObjectFromGUID(GUID)
    end
    
    setUninteractables()
end

function setUninteractables()
    for _, obj in pairs(getObjectsWithTag("Uninteractable")) do
        obj.interactable = false
    end
end