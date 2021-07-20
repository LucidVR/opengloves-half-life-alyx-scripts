require "utils.class"
require "utils.library"
require "utils.vscriptinit"
require "core.coreinit"
require "utils.utilsinit"
require "framework.frameworkinit"
require "framework.entities.entitiesinit"
require "game.globalsystems.timeofday_init"
require "game.gameinit"

--local socket = require("socket")
--host = host or "localhost"
--port = port or 8080

local LEFT_ID = 1
local RIGHT_ID = 2

local fingerPos = {
    {0, 0, 0, 0, 0}, --left
    {0, 0, 0, 0, 0} --right
}
                  

local questOrbs = {
    fireOrb = true,
    waterOrb = false,
    windOrb = true
}   

        
        
local handPositions = {

    default = {500,500,500,500,500},
    none = {0, 0, 0, 0, 0},
    propphysics = {500, 500, 500, 500, 500}

}

local function logDebug(line)
    Msg("[OpenGlovesDebug] "..line .. "\n")
end

function    outputData(attachment)
  line = table.concat(fingerPos[attachment], ", ")
  
  if attachment == LEFT_ID then
    Msg("[OpenGlovesLeft] " ..line.."\n")
  elseif attachment == RIGHT_ID then
    Msg("[OpenGlovesRight] " ..line.."\n")
    Msg("[OpenGlovesRight] " ..line.."\n")
  else
    Msg("[OpenGlovesError] Invalid attachment \n")
  end
  --local file = io.open("openglovesdata.json", "w")
  --io.output(file)
  --io.write(line)
  --io.close(file)
end

function    OnItemPickup    (param) 
  local attachment = param["vr_tip_attachment"]
  logDebug(" Attachment: " .. tostring(attachment))
  logDebug("Item picked up: " .. tostring(param["item"])..tostring(param["item_name"])..tostring(attachment) .. "\n")
  fingerPos[attachment] = handPositions.default
  outputData(attachment)
    
end

function    OnItemReleased  (param) 
  local attachment = param["vr_tip_attachment"]
  logDebug(" Attachment: " .. tostring(attachment))
  logDebug("Item released: " .. tostring(param["item"]) .. tostring(attachment) .. "\n")
  fingerPos[attachment] = handPositions.none
  outputData(attachment)
  
end

ListenToGameEvent('player_spawn', function(info)  
    logDebug("OPNG------------> Player spawned: " .. tostring(info["userid"]) .. "\n")     
    
    --if arg then
    --  host = arg[1] or host
    --  port = arg[2] or port
    --end
    --print("Attempting connection to host '" ..host.. "' and port " ..port.. "...")
    --c = assert(socket.connect(host, port))
    --assert(c:send("Sent from Lua in Half Life Alyx!\n"))
    
end, nil)

if IsServer() then   
  
  
  -- Stop listening to the events if we're already listening to them (this is so we can safely reload the script)
if onplayershoot_handle ~= nil then
    StopListeningToGameEvent(   onitem_pickup_handle    )
    StopListeningToGameEvent(   onitem_released_handle  )
end

if onitem_pickup_handle == nil then onitem_pickup_handle=ListenToGameEvent("item_pickup",OnItemPickup, nil) end
if onitem_released_handle == nil then onitem_released_handle=ListenToGameEvent("item_released",OnItemReleased, nil) end

    
else

  if onplayer_opened_game_menu_handle ~= nil then
    StopListeningToGameEvent(   onplayer_opened_game_menu_handle    )
    StopListeningToGameEvent(   onplayer_closed_game_menu_handle    )
  end
  
  if onplayer_opened_game_menu_handle == nil then onplayer_opened_game_menu_handle=ListenToGameEvent("player_opened_game_menu",OnPlayerOpenedGameMenu, nil) end
  if onplayer_closed_game_menu_handle == nil then onplayer_closed_game_menu_handle=ListenToGameEvent("player_closed_game_menu",OnPlayerClosedGameMenu, nil) end

end
