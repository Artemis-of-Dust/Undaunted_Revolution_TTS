local mapBoardGridData = {
    cornerUp   = {x=  0.365, z= -0.400},
    cornerDown = {x= -0.365, z=  0.335},
    gridVert   = 8,
    gridHori   = 9,
    offBoard   = {x=  0.000, z= -0.700},
}

function onLoad()
    setSnapPoints()
end

function setSnapPoints()
    local generatedSnapPoints = {}
    
    local gapVert = (mapBoardGridData.cornerDown.z - mapBoardGridData.cornerUp.z) / (mapBoardGridData.gridVert - 1)
    local gapHori = (mapBoardGridData.cornerDown.x - mapBoardGridData.cornerUp.x) / (mapBoardGridData.gridHori - 1)
    for x=0,mapBoardGridData.gridHori-1,1 do
        for z=0,mapBoardGridData.gridVert-1,1 do
            if x % 2 == 1 then -- Alternating columns are moved down half a space
                table.insert(generatedSnapPoints, {
                    position = {
                        x = mapBoardGridData.cornerUp.x + (gapHori*x),
                        y = 1,
                        z = mapBoardGridData.cornerUp.z + (gapVert*(z+0.5)),
                        },
                    rotation = nil,
                    rotation_snap = false,
                    tags = {(x+1 .. "," .. z+1), "StructureToken"}
                    })
            else
                table.insert(generatedSnapPoints, {
                    position = {
                        x = mapBoardGridData.cornerUp.x + (gapHori*x),
                        y = 1,
                        z = mapBoardGridData.cornerUp.z + (gapVert*z),
                        },
                    rotation = nil,
                    rotation_snap = false,
                    tags = {(x+1 .. "," .. z+1), "StructureToken"}
                    })
            end
        end
    end
    
    -- Set a position off-board for specific scenarios, assign it x=0, z=0.
    table.insert(generatedSnapPoints, {
        position = {
            x = mapBoardGridData.offBoard.x,
            y = -50,
            z = mapBoardGridData.offBoard.z,
            },
        rotation = nil,
        rotation_snap = false,
        tags = {"0,0", "StructureToken"}
        })
    
    -- Set Snap Points
    self.setSnapPoints(generatedSnapPoints)
end
