-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Sebastian N
-- Created on: April 19
--
-- This program moves an object to four sides
-----------------------------------------------------------------------------------------
-- The character
local theSnowMan = display.newImageRect('./Assets/Sprites/SnowMan.png', 350, 400)
theSnowMan.x = display.contentCenterX
theSnowMan.y = display.contentCenterY
theSnowMan.id = 'Snow Man'
-- D-pad
local thedPad = display.newImage('./Assets/Sprites/d-pad.png')
thedPad.x = 160
thedPad.y = display.contentHeight - 160
thedPad.id = 'The d-pad'
thedPad.alpha = 0.5

-- Up arrow
local upArrow = display.newImage('./Assets/Sprites/upArrow.png')
upArrow.x = 160
upArrow.y = display.contentHeight - 268.7
upArrow.id = 'Up arrow'

-- Down arrow
local downArrow = display.newImage('./Assets/Sprites/downArrow.png')
downArrow.x = 160
downArrow.y = display.contentHeight - 52.3
downArrow.id = 'Down arrow'

-- Left arrow
local leftArrow = display.newImage('./Assets/Sprites/leftArrow.png')
leftArrow.x = 52
leftArrow.y = display.contentHeight - 160
leftArrow.id = 'Left arrow'

-- Right arrow
local rightArrow = display.newImage('./Assets/Sprites/rightArrow.png')
rightArrow.x = 268.7
rightArrow.y = display.contentHeight - 160
rightArrow.id = 'Right arrow'

-- Up Arrow Functions
function upArrow:touch(event)
	if (event.phase == 'ended') then
		-- Movement function
		transition.moveBy(theSnowMan, { 
			x = 0,
			y = -50,
			time = 100
			})
	end
end



-- Down Arrow Functions
function downArrow:touch(event)
	if (event.phase == 'ended') then
		-- Movement function
		transition.moveBy(theSnowMan, { 
			x = 0,
			y = 50,
			time = 100
			})
	end
end



-- Left Arrow Functions
function leftArrow:touch(event)
	if (event.phase == 'ended') then
		-- Movement function
		transition.moveBy(theSnowMan, { 
			x = -50,
			y = 0,
			time = 100
			})
	end
end



-- Right Arrow Functions
function rightArrow:touch(event)
	if (event.phase == 'ended') then
		-- Movement function
		transition.moveBy(theSnowMan, { 
			x = 50,
			y = 0,
			time = 100
			})
	end
end

-- Event Listeners
upArrow:addEventListener('touch', upArrow)
downArrow:addEventListener('touch', downArrow)
leftArrow:addEventListener('touch', leftArrow)
rightArrow:addEventListener('touch', rightArrow)