local scenarioData = {
    ["0"] = {
        name = "Rivalries Renewed",
        mapType = 1,
        initiative = "LFA",
        mapStructs = {
            {id="CP1", x=2, z=2},
            {id="CP1", x=4, z=2},
            {id="CP1", x=4, z=6},
            {id="CP1", x=6, z=6},
            {id="CP1", x=7, z=5},
        },
        mapUnits = {
            {id="BRE_TRB", x=8, z=2, rot=5},
            {id="BRE_BOB", x=9, z=3, rot=5},
            {id="BRE_FIA", x=9, z=4, rot=5},
            {id="BRE_TRA", x=9, z=5, rot=5},
            {id="LFA_TRA", x=1, z=6, rot=2},
            {id="LFA_FIA", x=1, z=7, rot=2},
            {id="LFA_BOB", x=2, z=7, rot=2},
            {id="LFA_TRB", x=3, z=8, rot=2},
        },
        cargoUnits = {
            {id="BRE_GSA"},
            {id="BRE_SSA"},
            {id="BRE_GSB"},
            {id="BRE_SSB"},
            {id="LFA_GSA"},
            {id="LFA_SSA"},
            {id="LFA_GSB"},
            {id="LFA_SSB"},
        },
    },
    ["1a"] = {
        name = "The Second Battle of Crater Hils",
        mapType = 3,
        initiative = "LFA",
        mapStructs = {
            {id="CP1", x=1, z=3},
            {id="CP1", x=1, z=5},
            {id="CP1", x=4, z=5},
            {id="CP1", x=5, z=4},
            {id="CP1", x=8, z=7},
            {id="CP1", x=9, z=6},
        },
        mapUnits = {
            {id="BRE_FIB", x=5, z=1, rot=5, offset=1},
            {id="BRE_TRB", x=5, z=1, rot=5, offset=2},
            {id="BRE_BOA", x=7, z=2, rot=3},
            {id="BRE_TRR", x=8, z=2, rot=4},
            {id="LFA_TRA", x=2, z=8, rot=1, offset=1},
            {id="LFA_FIA", x=2, z=8, rot=1, offset=2},
            {id="LFA_BOB", x=4, z=8, rot=2, offset=1},
            {id="LFA_TRB", x=4, z=8, rot=2, offset=2},
            },
        cargoHolds = {
            {id="TRR",     pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="LFA_TRA", pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            {id="BRE_GSA", hold="TRR"},
            {id="BRE_SSA", hold="TRR"},
            {id="BRE_GSB", hold="BRE_TRB"},
            {id="BRE_SSB", hold="BRE_TRB"},
            {id="LFA_GSA", hold="LFA_TRA"},
            {id="LFA_ESR", hold="LFA_TRA"},
            {id="LFA_GSB", hold="LFA_TRB"},
            {id="LFA_SSB", hold="LFA_TRB"},
            },
        },
    ["1b"] = {
        name = "The Enemy Within",
        mapType = 5,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=4, z=2, control="LFA"},
            {id="CP1", x=3, z=5},
            {id="CP1", x=8, z=2},
            {id="CP1", x=6, z=6, control="LFA"},
        },
        mapUnits = {
            {id="BRE_FIB", x=5, z=8, rot=1},
            {id="BRE_TRB", x=4, z=7, rot=1},
            {id="BRE_BOA", x=8, z=6, rot=1},
            {id="BRE_TRA", x=7, z=7, rot=1},
            {id="LFA_TRR", x=2, z=1, rot=3},
            {id="LFA_FIA", x=3, z=1, rot=3},
            {id="LFA_GSA", x=4, z=2},
            {id="LFA_FIB", x=1, z=7, rot=2},
            {id="LFA_TRB", x=1, z=8, rot=2},
            {id="LFA_SSB", x=6, z=6},
        },
        cargoHolds = {
            {id="BRE_TRA", pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="TRR",     pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            {id="BRE_GSA", hold="BRE_TRA"},
            {id="BRE_ESR", hold="BRE_TRA"},
            {id="BRE_GSB", hold="BRE_TRB"},
            {id="BRE_SSB", hold="BRE_TRB"},
            {id="LFA_SSA", hold="TRR"},
            {id="LFA_GSB", hold="LFA_TRB"},
            },
        },
    ["2a"] = {
        name = "High Orbital Gambit",
        mapType = 2,
        initiative = "BRE",
        mapStructs = {
            {id="TUR", x=3, z=1},
            {id="TUR", x=4, z=3},
            {id="TUR", x=6, z=4},
            {id="TUR", x=7, z=7},
            {id="CP1", x=4, z=2},
            {id="CP1", x=6, z=2},
            {id="CP1", x=4, z=5},
            {id="CP1", x=6, z=5},
        },
        mapUnits = {
            {id="BRE_BOB", x=8, z=1, rot=4},
            {id="BRE_TRB", x=7, z=1, rot=4},
            {id="BRE_FIA", x=2, z=6, rot=1},
            {id="BRE_TRR", x=3, z=7, rot=1},
            {id="LFA_SGB", x=1, z=2, rot=4},
            {id="LFA_FIB", x=3, z=2, rot=4, stun=true},
            {id="LFA_BOB", x=4, z=1, rot=3, stun=true},
            {id="LFA_ESR", x=5, z=4},
            {id="LFA_FIA", x=7, z=6, rot=1, stun=true},
            {id="LFA_BOA", x=6, z=6, rot=6, stun=true},
        },
        cargoHolds = {
            {id="TRR",     pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            },
        cargoUnits = {
            {id="BRE_GSA", hold="TRR"},
            {id="BRE_SSA", hold="TRR"},
            {id="BRE_GSB", hold="BRE_TRB"},
            {id="BRE_SSB", hold="BRE_TRB"},
            },
        },
    ["2b"] = {
        name = "Blood on The Asteroids",
        mapType = 1,
        initiative = "LFA",
        mapStructs = {
            {id="CP1", x=2, z=2},
            {id="CP1", x=4, z=2},
            {id="CP1", x=4, z=6},
            {id="CP1", x=7, z=5},
            {id="DEB", x=1, z=3},
            {id="DEB", x=3, z=4},
            {id="DEB", x=5, z=3},
            {id="DEB", x=4, z=5},
            {id="DEB", x=6, z=4},
            {id="DEB", x=8, z=5},
            {id="VO1", x=5, z=5},
            {id="VO2", x=7, z=7},
        },
        mapUnits = {
            {id="BRE_FIA", x=6, z=1, rot=4},
            {id="BRE_TRR", x=6, z=2, rot=4},
            {id="BRE_TRB", x=8, z=1, rot=4},
            {id="BRE_BOB", x=8, z=2, rot=4},
            {id="BRE_FIB", x=9, z=2, rot=4},
            {id="LFA_FIA", x=2, z=7, rot=1},
            {id="LFA_TRA", x=3, z=7, rot=1},
            {id="LFA_FIB", x=6, z=7, rot=1},
            {id="LFA_TRB", x=7, z=8, rot=1},
            {id="LFA_SGB", x=6, z=8, rot=1},
        },
        cargoHolds = {
            {id="TRR",     pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="LFA_TRA", pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            {id="BRE_GSA", hold="TRR"},
            {id="BRE_SSA", hold="TRR"},
            {id="BRE_SSB", hold="BRE_TRB"},
            {id="LFA_GSA", hold="LFA_TRA"},
            {id="LFA_ESR", hold="LFA_TRA"},
            {id="LFA_SSB", hold="LFA_TRB"},
            },
        },
    ["2c"] = {
        name = "Striking First",
        mapType = 6,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=5, z=2},
            {id="CP1", x=6, z=2},
            {id="CP1", x=4, z=5},
            {id="HGR", x=3, z=2, rot=3},
            {id="HGR", x=8, z=3, rot=5},
            {id="HGR", x=5, z=6, rot=1},
        },
        mapUnits = {
            {id="BRE_TRB", x=9, z=6, rot=6},
            {id="BRE_TRA", x=8, z=6, rot=6},
            {id="BRE_BOA", x=8, z=7, rot=6},
            {id="LFA_TRB", x=1, z=5, rot=2},
            {id="LFA_BOB", x=1, z=6, rot=2},
            {id="LFA_TRR", x=1, z=7, rot=2},
            {id="LFA_BOA", x=1, z=8, rot=2},
        },
        cargoHolds = {
            {id="BRE_TRA", pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="TRR",     pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            {id="BRE_SSA", hold="BRE_TRA"},
            {id="BRE_ESR", hold="BRE_TRA"},
            {id="BRE_GSB", hold="BRE_TRB"},
            {id="BRE_SSB", hold="BRE_TRB"},
            {id="BRE_PSV", hold="BRE_TRB"},
            {id="LFA_GSA", hold="TRR"},
            {id="LFA_SSA", hold="TRR"},
            {id="LFA_GSM", hold="LFA_TRB"},
            {id="LFA_SSB", hold="LFA_TRB"},
            },
        },
    ["2d"] = {
        name = "Lethal Negotiations",
        mapType = 4,
        initiative = "LFA",
        mapStructs = {
            {id="CP1", x=3, z=2},
            {id="CP1", x=6, z=3},
            {id="CP1", x=4, z=4},
            {id="CP1", x=8, z=4},
            {id="CP1", x=2, z=5},
        },
        mapUnits = {
            {id="BRE_TRA", x=8, z=1, rot=5},
            {id="BRE_BOA", x=9, z=2, rot=5},
            {id="BRE_TRB", x=4, z=7, rot=2},
            {id="BRE_FIB", x=3, z=8, rot=1},
            {id="LFA_TRR", x=3, z=1, rot=3},
            {id="LFA_BOA", x=2, z=1, rot=3},
            {id="LFA_FIB", x=8, z=7, rot=1},
            {id="LFA_TRB", x=7, z=8, rot=1},
        },
        cargoHolds = {
            {id="BRE_TRA", pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="TRR",     pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            {id="BRE_GSA", hold="BRE_TRA"},
            {id="BRE_ESR", hold="BRE_TRA"},
            {id="BRE_GSB", hold="BRE_TRB"},
            {id="BRE_SSB", hold="BRE_TRB"},
            {id="LFA_SSA", hold="TRR"},
            {id="LFA_GSB", hold="LFA_TRB"},
            },
        },
    ["3a"] = {
        name = "Ghosts of Callisto",
        mapType = 3,
        initiative = "LFA",
        mapStructs = {
            {id="DRO", x=6, z=2, flipped=true},
            {id="DRO", x=4, z=8},
            {id="SUP", x=3, z=4},
            {id="SUP", x=3, z=5},
            {id="SUP", x=2, z=4},
            {id="SUP", x=6, z=5},
            {id="SUP", x=6, z=6},
            {id="SUP", x=7, z=6},
            {id="TU1", x=3, z=4},
            {id="TU2", x=6, z=5},
            },
        mapUnits = {
            {id="BRE_TRR", x=4, z=1, rot=5},
            {id="BRE_TRB", x=9, z=2, rot=4},
            {id="LFA_TRA", x=1, z=8, rot=1},
            {id="LFA_TRB", x=2, z=8, rot=1},
            },
        cargoHolds = {
            {id="BRE_TRR", pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="LFA_TRA", pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            },
        assembleDeck = {
            "BRE_BOA",
            "BRE_FIA",
            "BRE_GSR",
            "BRE_SSA",
            "BRE_BOB",
            "BRE_FIB",
            "BRE_GSB",
            "BRE_SSB",
            "LFA_BOA",
            "LFA_FIA",
            "LFA_GSA",
            "LFA_SSA",
            "LFA_ESR",
            "LFA_BOB",
            "LFA_FIB",
            "LFA_SGB",
            "LFA_GSB",
            "LFA_SSB",
            },
    },
    ["3b"] = {
        name = "Armistice Breakers",
        mapType = 4,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=3, z=2},
            {id="CP1", x=6, z=3},
            {id="CP1", x=8, z=4},
            {id="CP1", x=2, z=5},
            {id="CP1", x=4, z=5},
            },
        mapUnits = {
            {id="BRE_TRR", x=3, z=8, rot=1},
            {id="BRE_TRB", x=7, z=8, rot=1},
            {id="LFA_TRA", x=1, z=4, rot=3},
            {id="LFA_TRN", x=2, z=4, rot=3},
            },
        cargoHolds = {
            {id="BRE_TRR", pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="LFA_TRA", pos="LFA_1"},
            {id="LFA_TRN", pos="LFA_2"},
            },
        cargoUnits = {
            },
    },
    ["3c"] = {
        name = "Fire and D.U.S.T.",
        mapType = 5,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=4, z=2},
            {id="CP1", x=8, z=2, control="LFA"},
            {id="CP1", x=3, z=5},
            {id="CP1", x=6, z=6, control="LFA"},
            {id="NOE", x=3, z=3, flipped=true},
            {id="DOM", x=4, z=3},
            {id="NOE", x=2, z=4},
            {id="DOM", x=2, z=5},
            {id="NOE", x=5, z=6},
            {id="DOM", x=5, z=7},
            {id="DES", x=0, z=0, offset={y=0}, locked=false},
            {id="DES", x=0, z=0, offset={y=1}, locked=false},
            {id="DES", x=0, z=0, offset={y=2}, locked=false},
            },
        mapUnits = {
            {id="BRE_TRR", x=2, z=6, rot=2},
            {id="BRE_TRB", x=2, z=7, rot=2},
            {id="BRE_PSV", x=4, z=6},
            {id="LFA_TRA", x=7, z=3, rot=5},
            {id="LFA_TRB", x=7, z=2, rot=5},
            {id="LFA_ESR", x=6, z=5},
            },
        cargoHolds = {
            {id="BRE_TRR", pos="BRE_1"},
            {id="BRE_TRB", pos="BRE_2"},
            {id="LFA_TRA", pos="LFA_1"},
            {id="LFA_TRB", pos="LFA_2"},
            },
        cargoUnits = {
            },
    },
    ["3d"] = {
        name = "Nexus of Destruction",
        mapType = 2,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=3, z=1},
            {id="CP1", x=4, z=3},
            {id="CP1", x=6, z=4},
            {id="CP1", x=7, z=7},
            {id="TUR", x=3, z=1, offset={z=-1}},
            {id="TUR", x=4, z=3, offset={z=-1}},
            {id="TUR", x=6, z=4, offset={z=-1}},
            {id="TUR", x=7, z=7, offset={z=-1}},
            {id="DEB", x=2, z=1},
            {id="DEB", x=2, z=4},
            {id="DEB", x=2, z=6},
            {id="DEB", x=5, z=8},
            {id="DEB", x=8, z=3},
            {id="DEB", x=8, z=6},
            {id="CP2", x=0, z=0, offset={y=1}},
            {id="EUR", x=0, z=0},
            },
        mapUnits = {
            {id="BRE_TRB", x=1, z=2, rot=4},
            {id="BRE_TRR", x=9, z=1, rot=4},
            {id="LFA_TRA", x=8, z=8, rot=1},
            {id="LFA_TRB", x=2, z=8, rot=2},
            },
        cargoUnits = {
            },
    },
    ["3e"] = {
        name = "No Mercy",
        mapType = 3,
        initiative = "LFA",
        mapStructs = {
            {id="CPX", x=2, z=4, offset={y=1}},
            {id="CPX", x=3, z=4, offset={y=1}},
            {id="CPX", x=3, z=5, offset={y=1}},
            {id="CPX", x=6, z=5, offset={y=1}},
            {id="CPX", x=6, z=6, offset={y=1}},
            {id="CPX", x=7, z=6, offset={y=1}},
            {id="TU1", x=3, z=4},
            {id="TU2", x=6, z=5},
            },
        mapUnits = {
            {id="BRE_TRN", x=4, z=1, rot=5},
            {id="BRE_TRA", x=9, z=2, rot=4},
            {id="LFA_TRR", x=1, z=8, rot=1},
            {id="LFA_TRB", x=2, z=8, rot=1},
            },
        cargoUnits = {
            },
    },
    ["3f"] = {
        name = "Wrecking Crew",
        mapType = 5,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=4, z=3, offset={y=1}},
            {id="CP1", x=5, z=6, offset={y=1}},
            {id="CP1", x=7, z=2, offset={y=1}},
            {id="CP1", x=7, z=3, offset={y=1}},
            {id="CP1", x=8, z=2, offset={y=1}},
            {id="CP1", x=8, z=3, offset={y=1}},
            {id="NOE", x=6, z=2, offset={y=1}},
            {id="NOE", x=8, z=4, offset={y=1}},
            {id="ML1", x=6, z=2},
            {id="ML2", x=8, z=4},
            {id="MAR", x=8, z=2},
            {id="DES", x=3, z=5},
            },
        mapUnits = {
            {id="BRE_TRA", x=2, z=8, rot=2},
            {id="BRE_TRB", x=1, z=5, rot=2},
            {id="BRE_ESR", x=9, z=2},
            {id="LFA_TRR", x=9, z=6, rot=6},
            {id="LFA_TRN", x=6, z=1, rot=5},
            },
        cargoUnits = {
            },
    },
    ["3g"] = {
        name = "Lunar Warfare",
        mapType = 6,
        initiative = "BRE",
        mapStructs = {
            {id="CP1", x=5, z=2},
            {id="CP1", x=6, z=2},
            {id="CP1", x=4, z=5},
            {id="HGR", x=3, z=2, rot=3},
            {id="HGR", x=8, z=3, rot=5},
            {id="HGR", x=5, z=6, rot=1},
            {id="TUR", x=2, z=1, flipped=true},
            {id="TUR", x=6, z=1, flipped=true},
            {id="TUR", x=4, z=4, flipped=true},
            {id="TUR", x=6, z=6, flipped=true},
            },
        mapUnits = {
            {id="BRE_TRA", x=9, z=2, rot=5},
            {id="BRE_TRB", x=9, z=4, rot=5},
            {id="LFA_TRR", x=1, z=5, rot=2},
            {id="LFA_TRN", x=1, z=7, rot=2},
            },
        cargoUnits = {
            },
    },
    ["3h"] = {
        name = "Bringing the War Home",
        mapType = 4,
        initiative = "LFA",
        mapStructs = {
            {id="CP1", x=3, z=2},
            {id="CP1", x=6, z=3},
            {id="CP1", x=8, z=4},
            {id="CP1", x=2, z=5},
            {id="CP1", x=4, z=5},
            {id="DOM", x=2, z=3},
            {id="DOM", x=3, z=6},
            {id="DOM", x=6, z=5},
            {id="DOM", x=8, z=5},
            {id="TOK", x=4, z=3},
            {id="DR1", x=0, z=0, offset={y=0}},
            {id="DR2", x=0, z=0, offset={y=1}},
            {id="DR3", x=0, z=0, offset={y=2}},
            },
        mapUnits = {
            {id="BRE_TRA", x=1, z=8, rot=2},
            {id="BRE_TRN", x=1, z=1, rot=3},
            {id="LFA_TRR", x=9, z=3, rot=5},
            {id="LFA_TRB", x=7, z=2, rot=5},
            {id="LFA_PSV", x=6, z=2},
            },
        cargoUnits = {
            },
    },
}

local unitData = Global.getTable("unitData")
local structureData = Global.getTable("structureData")

local buttonLayout = {

    ["Reset"]  = {x =  0.0, z = -5},

    ["0"]  = {x =  0.0, z = -4},
    
    ["1a"] = {x = -2.0, z = -3},
    ["1b"] = {x =  2.0, z = -3},
    
    ["2a"] = {x = -3.0, z = -2},
    ["2b"] = {x = -1.0, z = -2},
    ["2c"] = {x =  1.0, z = -2},
    ["2d"] = {x =  3.0, z = -2},
    
    ["3a"] = {x = -3.5, z = -1},
    ["3b"] = {x = -2.5, z = -1},
    
    ["3c"] = {x = -1.5, z = -1},
    ["3d"] = {x = -0.5, z = -1},
    ["3e"] = {x =  0.5, z = -1},
    ["3f"] = {x =  1.5, z = -1},
    ["3g"] = {x =  2.5, z = -1},
    ["3h"] = {x =  3.5, z = -1},
}

-- UTILITY FUNCTIONS 
function getSnapPointPosition(baseObj, snapPointName)
    local searchSnapPoint = nil
    local objRotation = baseObj.getRotation()

    for _, snapPoint in ipairs(baseObj.getSnapPoints()) do
        if snapPointHasTag(snapPoint, snapPointName) then
            searchSnapPoint = snapPoint
        end
    end
    if searchSnapPoint ~= nil then
        return baseObj.positionToWorld(Vector(searchSnapPoint.position))
    end
end

function snapPointHasTag(snapPoint, checkTerm)
    if snapPoint == nil then return false end
    if snapPoint.tags == nil then return false end
    
    local checkFound = false
    for _, tag in ipairs(snapPoint.tags) do
        if tag == checkTerm then checkFound = true end
    end
    return checkFound
end



function onLoad()
    setButtons()
end

function setButtons()
    btnSpacingX = 2.0
    btnSpacingZ = 1.5
    for key, btnPos in pairs(buttonLayout) do
        self.createButton({
            click_function = "setupScenario" .. key,
            function_owner = self,
            label          = key,
            position       = {
                x = btnPos.x * btnSpacingX,
                y = 1,
                z = btnPos.z * btnSpacingZ,
                },
            width      = key == "Reset" and 1500 or 600,
            height     = 600,
            font_size  = 300,
            color      = {r=0.5, g=0.98, b=0.98, a=100},
            font_color = {r=0,   g=0,   b=0,   a=100},
            tooltip    = key == "Reset" and "Reset table" or scenarioData[key] and scenarioData[key].name or "UNKNOWN SCENARIO"
        })
        
        -- Wrapper function to allow buttons to pass arguments
        local btnSetup = function(obj, player, alt_click)
            setupScenario(key)
        end
        
        _G["setupScenario" .. key] = btnSetup
        
    end
end



-- SETUP FUNCTIONS
function setupScenario(scenarioID)
    resetComponents()

    print("Loading scenario " .. scenarioID .. "...")
    
    local data = scenarioData[scenarioID]
    if data == nil then return end
    
    local mapBaseObj = Global.getTable("tableObjects").mapBase
    local mapBaseRot = mapBaseObj.getRotation()
    
    -- SETUP: Map Board
    local mapBoard = Global.call("getObjByNote", {GMNote=data.mapType, tag="MapBoard"})
    mapBoard.setRotation(mapBaseObj.getRotation())
    mapBoard.setPosition(mapBaseObj.getPosition())
    mapBoard.locked = true
    
    -- SETUP: Map Units
    for _, unit in pairs(data.mapUnits) do
        local unitObj = Global.call("getObjByNote", {GMNote=unit.id, tag="UnitToken"})
        if unitObj then
            local destinationCoord = unit.x .. "," .. unit.z
            local snapPointPos = getSnapPointPosition(mapBaseObj, destinationCoord)
            
            -- Ground units have no rotation data.
            -- Air units give a direction of 1~6.
            local unitRotation = unit.rot and (60 * (unit.rot-1)) or 0
            -- If two units belong on the same space, we reposition it slightly using its offset variable
            local offsetPosition = {
                x = unit.offset == 1 and -0.8 or
                    unit.offset == 2 and 0.8 or
                    0,
                y = unit.offset == 2 and 0.5 or
                    0,
                z = 0,
                }
            
            -- Reset the unit state to the required value
            -- Weirdly, you can't set to a state it's currently on?
            if unit.stun == true and unitObj.getStateId() ~= 2 and unitObj.getStateId() ~= -1 then
                unitObj = unitObj.setState(2)
            elseif unitObj.getStateId() ~= 1 and unitObj.getStateId() ~= -1 then
                unitObj = unitObj.setState(1)
            end
                
            local horizontalOffset = unit.offset and 0.5 or 0
            local verticalOffset = unit.offset and 0.5 or 0
            -- Set the final position and rotation!
            unitObj.setRotation({
                x = mapBaseRot.x,
                y = mapBaseRot.y + unitRotation,
                z = mapBaseRot.z,
                })
            unitObj.setPosition({
                x = snapPointPos.x + offsetPosition.x,
                y = snapPointPos.y + offsetPosition.y + 0.7,
                z = snapPointPos.z + offsetPosition.z,
                })
        end
    end

    -- SETUP: Cargo cards
    for _, unit in pairs(data.mapUnits) do
        local unitDataEntry = unitData[unit.id]
        if unitDataEntry.cargo == true then
            local searchName = unitDataEntry.alias or unit.id
            local unitObj = Global.call("getObjByNote", {GMNote=searchName, tag="TransportCard"})
            local slotName = "Cargo_" .. unitDataEntry.faction .. "_" .. unitDataEntry.controlType
            local destinationMarker = Global.call("getObjByNote", {GMNote=slotName, tag="MarkerBlock"})
            if unitObj and destinationMarker then
                local destinationPos = destinationMarker.getPosition()
                -- Set the final position and rotation!
                unitObj.setRotation(destinationMarker.getRotation())
                unitObj.setPosition({
                    x = destinationPos.x,
                    y = destinationPos.y + 0.02,
                    z = destinationPos.z,
                    })
                    
                -- Lock the card
                unitObj.locked = true
            end
        end
    end
    
    -- SETUP: Units stored within Cargo Holds
    for _, cargoHold in pairs(data.mapUnits) do
        local cargoHoldData = unitData[cargoHold.id]
        if cargoHoldData.cargo == true then
            local cargoUnits = {}
            for _, unit in pairs(data.cargoUnits) do
                local unitDataEntry = unitData[unit.id]
                if unitDataEntry.faction == cargoHoldData.faction and unitDataEntry.controlType == cargoHoldData.controlType then
                    local unitObj = Global.call("getObjByNote", {GMNote=unit.id, tag="UnitToken"})
                    table.insert(cargoUnits, unitObj)
                end
            end
            
            local middleIndex = (1 + #cargoUnits) / 2
            
            local slotName = "Cargo_" .. cargoHoldData.faction .. "_" .. cargoHoldData.controlType
            local destinationMarker = Global.call("getObjByNote", {GMNote=slotName, tag="MarkerBlock"})
            local destinationPos = destinationMarker.getPosition()
            for i, unitObj in pairs(cargoUnits) do
                -- Set the position and rotation!
                unitObj.setRotation(destinationMarker.getRotation())
                unitObj.setPositionSmooth({
                    x = destinationPos.x + ((i - middleIndex) * (6/#cargoUnits)), -- Complex maths to evenly distribute from the center
                    y = destinationPos.y + 0.15,
                    z = destinationPos.z + 0.5,
                    }, false, true)
            end
        end
    end

    -- SETUP: Unit cards
    local unitSlotData = {
        LFA_Ground_A = 0,
        LFA_Ground_B = 0,
        LFA_Air_A    = 0,
        LFA_Air_B    = 0,
        BRE_Ground_A = 0,
        BRE_Ground_B = 0,
        BRE_Air_A    = 0,
        BRE_Air_B    = 0,
        }
    -- We iterate over the entire list to go in a default sequence of priority for setup.
    for unitID, unitDataEntry in pairs(unitData) do
        local unitPresent = false
        for _, mapUnit in pairs(data.mapUnits) do
            if unitID == mapUnit.id then
                unitPresent = true
            end
        end
        for _, mapUnit in pairs(data.cargoUnits) do
            if unitID == mapUnit.id then
                unitPresent = true
            end
        end
        -- If the unit exists within either the cargo holds or on the map, we collect its deck
        if unitPresent then
            local unitDeck = getUnitDeckByNote(unitID)
            if unitDeck then
                local offsetType = unitDataEntry.faction .. "_" .. unitDataEntry.terrain .. "_" .. unitDataEntry.controlType
                local slotOffset = unitSlotData[offsetType]
                if unitDataEntry.terrain == "Ground" then
                    slotOffset = slotOffset + 3
                end
                local markerNote = "Supply_" .. unitDataEntry.faction .. "_" .. unitDataEntry.controlType .. "_" .. (slotOffset+1)
                local destinationMarker = Global.call("getObjByNote", {GMNote=markerNote, tag="MarkerBlock"})
                if destinationMarker then
                    local destinationPos = destinationMarker.getPosition()
                    unitDeck.setRotation(destinationMarker.getRotation())
                    unitDeck.setPosition({
                        x = destinationPos.x,
                        y = destinationPos.y + 0.04,
                        z = destinationPos.z,
                        })
                    unitSlotData[offsetType] = unitSlotData[offsetType] + 1
                end
            end
        end
    end

    -- SETUP: Scenario cards
    local scenarioDeck = getScenarioDeckByNote(scenarioID)
    for i=1,4,1 do
        local markerIDs = {"BRE_A", "LFA_A", "BRE_B", "LFA_B"}
        local cardName = scenarioID .. "_" .. i
        local markerName = "Scenario_" .. markerIDs[i]
        
        local cardObj = scenarioDeck.remainder or scenarioDeck.takeObject({index=#scenarioDeck.getObjects()-1})
        local destinationMarker = Global.call("getObjByNote", {GMNote=markerName, tag="MarkerBlock"})
        
        if cardObj and destinationMarker then
            local destinationPos = destinationMarker.getPosition()
            cardObj.setRotation(destinationMarker.getRotation())
            cardObj.setPosition({
                x = destinationPos.x,
                y = destinationPos.y + 0.04,
                z = destinationPos.z,
                })
        end
    end

    -- SETUP: Initiative marker
    local initiativeMarker = nil
    for _, obj in pairs(getObjectsWithTag("InitiativeMarker")) do
        initiativeMarker = obj
    end
    if initiativeMarker then
        local destinationMarker = Global.call("getObjByNote", {GMNote="Initiative", tag="MarkerBlock"})
        local destinationPos = destinationMarker.getPosition()
        local destinationRot = destinationMarker.getRotation()
        if destinationMarker then
            initiativeMarker.setRotation({
                x = destinationRot.x,
                y = destinationRot.y,
                z = destinationRot.z + (data.initiative == "LFA" and 180 or 0),
            })
            initiativeMarker.setPosition({
                x = destinationPos.x,
                y = destinationPos.y + 0.03 + (data.initiative == "LFA" and 0.3 or 0),
                z = destinationPos.z,
                })
        end
    end

    -- SETUP: Map structures
    for _, structure in pairs(data.mapStructs) do
        local structureDataEntry = structureData[structure.id]
        if structureDataEntry then
            local structBag = Global.call("getObjByNote", {GMNote=structureDataEntry.bagID, tag="TokenBag"})
            
            -- Since we have to deal with multiple tokens of the same ID we only take from what's remaining in the designated bag.
            -- (All other objects are implicitly already being set up on the map.)
            local structureToken = pullFromBagByNote(structBag, structure.id)
            
            local destinationCoord = structure.x .. "," .. structure.z
            local snapPointPos = getSnapPointPosition(mapBaseObj, destinationCoord)
            -- Set the final position and rotation!
            structureToken.setRotation({
                x = mapBaseRot.x,
                y = mapBaseRot.y + (structureDataEntry.rot or 0) + (structure.rot and (60 * (structure.rot - 1)) or 0),
                z = mapBaseRot.z + (structure.flipped and 180 or 0),
                })
            structureToken.setPosition({
                x = snapPointPos.x + (structure.offset and structure.offset.x and structure.offset.x * 1.0 or 0) + (structureDataEntry.offset and structureDataEntry.offset.x or 0),
                y = snapPointPos.y + (structure.offset and structure.offset.y and structure.offset.y * 0.2 or 0) + (structureDataEntry.offset and structureDataEntry.offset.y or 0) + (structure.flipped and 0.2 or 0)+ 0.5,
                z = snapPointPos.z + (structure.offset and structure.offset.z and structure.offset.z * 1.0 or 0) + (structureDataEntry.offset and structureDataEntry.offset.z or 0),
                })
            if structure.locked ~= nil then
                structureToken.locked = structure.locked
            else 
                structureToken.locked = structureDataEntry.locked or false
            end
        end
    end
end

function resetComponents()
    local supplyObj = Global.getTable("tableObjects").supplyArea
    supplyObj.call("resetAllComponents")
end

function getObjByNote(tokenNote)
    for _, obj in pairs(getObjects()) do
        if obj.getGMNotes() == tokenNote then
            return obj
        end
    end
    
    return nil
end

-- This function assumes the deck is already complete after resetting components, so it's used AFTER we've already reset all the cards.
function getUnitDeckByNote(tokenNote)
    local searchNote = unitData[tokenNote].alias or tokenNote
    for _, obj in pairs(getObjectsWithTag("UnitCard")) do
        if obj.type == "Card" and obj.getGMNotes() == searchNote then 
            return obj
        elseif obj.type == "Deck" then 
            for _, card in pairs(obj.getObjects()) do
                if string.find(card.gm_notes, searchNote) then
                    return obj
                end
            end
        end
    end
end

function pullFromBagByNote(tokenBag, tokenNote)
    local foundObjs = {}
    for _, containedObj in pairs(tokenBag.getObjects()) do
        if containedObj.gm_notes == tokenNote then
            table.insert(foundObjs, containedObj)
        end
    end
    
    -- In case we're randomising like for Hangers or ?VP markers, we choose a random one.
    if #foundObjs >= 1 then
        local selectedObj = foundObjs[math.random(1, #foundObjs)]
        return tokenBag.takeObject({guid=selectedObj.guid})
    end
end

function getScenarioDeckByNote(tokenNote)
    local searchNote = tokenNote
    for _, obj in pairs(getObjectsWithTag("ScenarioCard")) do
        if obj.type == "Card" and obj.getGMNotes() == searchNote then 
            return obj
        elseif obj.type == "Deck" then 
            for _, card in pairs(obj.getObjects()) do
                if string.find(card.gm_notes, searchNote) then
                    return obj
                end
            end
        end
    end
end