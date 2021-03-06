TRPG = {}
TRPG.data_tilesets = {}

local paths = {"trpg_func/","trpg_game/"}
for _,path in ipairs(paths) do
    local files = file.Find(path .. "*.lua","LUA")
    for _,v in ipairs(files) do
        include(path .. v)
    end
end


TRPG:LoadTilesets()



local game_map = include("trpg_struc/Game_Map.lua")
game_map:setup("Map001")
TRPG.curmap = game_map
TRPG.mapmat = TRPG.Map_Renderer:RenderMap(game_map)

function TRunSetup()
    include("autorun/client/TRPG_setup.lua")
    print("setup rerun")
end