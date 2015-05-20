-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
--local text = display.newText( "Hello!", 50, 50, "Arial", 50 )

-- INITIALIZATION
---[[
local physics = require ( "physics" )
physics.start()

-- sets background color to blue
display.setDefault ( "background", .75, .9, 1)

--]]

--local PARENT_TILE = display.newImage

local tile_one = display.newImage( "Assets/Tile_Block.png", 0, 304 )
physics.addBody ( tile_one, "static", { friction = 0.5, bounce = 0.3 } )

local tile_two = display.newImage( "Assets/Tile_Block.png", 32, 304 )
physics.addBody ( tile_two, "static", { friction = 0.5, bounce = 0.3 } )

local tile_three = display.newImage( "Assets/Tile_Block.png", 64, 304 )
physics.addBody ( tile_three, "static", { friction = 0.5, bounce = 0.3 } )

local tile_four = display.newImage( "Assets/Tile_Block.png", 96, 304 )
physics.addBody ( tile_four, "static", { friction = 0.5, bounce = 0.3 } )

local tile_five = display.newImage( "Assets/Tile_Block.png", 128, 304 )
physics.addBody ( tile_five, "static", { friction = 0.5, bounce = 0.3 } )

local tile_six = display.newImage( "Assets/Tile_Block.png", 160, 304 )
physics.addBody ( tile_six, "static", { friction = 0.5, bounce = 0.3 } )

local tile_seven = display.newImage( "Assets/Tile_Block.png", 192, 304 )
physics.addBody ( tile_seven, "static", { friction = 0.5, bounce = 0.3 } )

local tile_eight = display.newImage( "Assets/Tile_Block.png", 224, 304 )
physics.addBody ( tile_eight, "static", { friction = 0.5, bounce = 0.3 } )

local tile_nine = display.newImage( "Assets/Tile_Block.png", 256, 304 )
physics.addBody ( tile_nine, "static", { friction = 0.5, bounce = 0.3 } )

local tile_ten = display.newImage( "Assets/Tile_Block.png", 288, 304 )
physics.addBody ( tile_ten, "static", { friction = 0.5, bounce = 0.3 } )

local character_raindrop = display.newImage ( "Assets/Character_Raindrop.png", 50, 50 )
physics.addBody ( character_raindrop, { density = 2.2, friction = 0.5, bounce = 0.4 } )

local function tapListener ( event ) 
  if (event.x > character_raindrop.x ) then
    character_raindrop.x = character_raindrop.x + 10
    if ( character_raindrop.xScale ~= 1 ) then
      character_raindrop.xScale = 1
    end
    
  elseif (event.x < character_raindrop.x ) then
    character_raindrop.x = character_raindrop.x - 10
    
    if ( character_raindrop.xScale ~= -1 ) then
      character_raindrop.xScale = -1
    end
    
  end
end

Runtime:addEventListener ( "tap", tapListener )