require "ISUI/Maps/ISMapDefinitions"

local cellSize = 300;

local MINZ = 0
local MAXZ = 24
-- local WATER_TEXTURE = false
-- -- Taken from ISMapDefinitions
-- local function replaceWaterStyle(mapUI)
-- 	if not WATER_TEXTURE then return end
-- 	local mapAPI = mapUI.javaObject:getAPIv1()
-- 	local styleAPI = mapAPI:getStyleAPI()
-- 	local layer = styleAPI:getLayerByName("water")
-- 	if not layer then return end
-- 	layer:setMinZoom(MINZ)
-- 	layer:setFilter("water", "river")
-- 	layer:removeAllFill()
-- 	layer:removeAllTexture()
-- 	layer:addFill(MINZ, 59, 141, 149, 255)
-- 	layer:addFill(MAXZ, 59, 141, 149, 255)
-- end


local function initRoadMapStyle(mapUI)
	local mapAPI = mapUI.javaObject:getAPIv1()
	local styleAPI = mapAPI:getStyleAPI()

	local r,g,b = 219/255, 215/255, 192/255
	mapAPI:setBackgroundRGBA(r, g, b, 1.0)
	mapAPI:setUnvisitedRGBA(r * 0.915, g * 0.915, b * 0.915, 1.0)
	mapAPI:setUnvisitedGridRGBA(r * 0.777, g * 0.777, b * 0.777, 1.0)

	styleAPI:clear()

	-- local layer = styleAPI:newPolygonLayer("forest")
	-- layer:setMinZoom(13.5)
	-- layer:setFilter("natural", "forest")
	-- layer:addFill(MINZ, 189, 197, 163, 0)
	-- layer:addFill(13.5, 189, 197, 163, 0)
	-- layer:addFill(14, 189, 197, 163, 255)
	-- layer:addFill(MAXZ, 189, 197, 163, 255)
	
	local layer = styleAPI:newPolygonLayer("water")
	layer:setMinZoom(MINZ)
	layer:setFilter("water", "river")
	layer:addFill(MINZ, 59, 141, 149, 255)
	layer:addFill(MAXZ, 59, 141, 149, 255)

	layer = styleAPI:newPolygonLayer("road-trail")
	layer:setMinZoom(12.0)
	layer:setFilter("highway", "trail")
	layer:addFill(12.25, 185, 122, 87, 0)
	layer:addFill(13, 185, 122, 87, 255)
	layer:addFill(MAXZ, 185, 122, 87, 255)

	layer = styleAPI:newPolygonLayer("road-tertiary")
	layer:setMinZoom(11.0)
	layer:setFilter("highway", "tertiary")
	layer:addFill(11.5, 171, 158, 143, 0)
	layer:addFill(13, 171, 158, 143, 255)
	layer:addFill(MAXZ, 171, 158, 143, 255)

	layer = styleAPI:newPolygonLayer("road-secondary")
	layer:setMinZoom(11.0)
	layer:setFilter("highway", "secondary")
	layer:addFill(MINZ, 134, 125, 113, 255)
	layer:addFill(MAXZ, 134, 125, 113, 255)

	layer = styleAPI:newPolygonLayer("road-primary")
	layer:setMinZoom(11.0)
	layer:setFilter("highway", "primary")
	layer:addFill(MINZ, 134, 125, 113, 255)
	layer:addFill(MAXZ, 134, 125, 113, 255)

	layer = styleAPI:newPolygonLayer("railway")
	layer:setMinZoom(14.0)
	layer:setFilter("railway", "*")
	layer:addFill(MINZ, 200, 191, 231, 255)
	layer:addFill(MAXZ, 200, 191, 231, 255)

	-- Default, same as building-Residential
	-- layer = styleAPI:newPolygonLayer("building")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "yes")
	-- layer:addFill(13.0, 210, 158, 105, 0)
	-- layer:addFill(13.5, 210, 158, 105, 255)
	-- layer:addFill(MAXZ, 210, 158, 105, 255)

	-- layer = styleAPI:newPolygonLayer("building-Residential")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "Residential")
	-- layer:addFill(13.0, 210, 158, 105, 0)
	-- layer:addFill(13.5, 210, 158, 105, 255)
	-- layer:addFill(MAXZ, 210, 158, 105, 255)

	-- layer = styleAPI:newPolygonLayer("building-CommunityServices")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "CommunityServices")
	-- layer:addFill(13.0, 139, 117, 235, 0)
	-- layer:addFill(13.5, 139, 117, 235, 255)
	-- layer:addFill(MAXZ, 139, 117, 235, 255)

	-- layer = styleAPI:newPolygonLayer("building-Hospitality")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "Hospitality")
	-- layer:addFill(13.0, 127, 206, 225, 0)
	-- layer:addFill(13.5, 127, 206, 225, 255)
	-- layer:addFill(MAXZ, 127, 206, 225, 255)

	-- layer = styleAPI:newPolygonLayer("building-Industrial")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "Industrial")
	-- layer:addFill(13.0, 56, 54, 53, 0)
	-- layer:addFill(13.5, 56, 54, 53, 255)
	-- layer:addFill(MAXZ, 56, 54, 53, 255)

	-- layer = styleAPI:newPolygonLayer("building-Medical")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "Medical")
	-- layer:addFill(13.0, 229, 128, 151, 0)
	-- layer:addFill(13.5, 229, 128, 151, 255)
	-- layer:addFill(MAXZ, 229, 128, 151, 255)

	-- layer = styleAPI:newPolygonLayer("building-RestaurantsAndEntertainment")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "RestaurantsAndEntertainment")
	-- layer:addFill(13.0, 245, 225, 60, 0)
	-- layer:addFill(13.5, 245, 225, 60, 255)
	-- layer:addFill(MAXZ, 245, 225, 60, 255)

	-- layer = styleAPI:newPolygonLayer("building-RetailAndCommercial")
	-- layer:setMinZoom(13.0)
	-- layer:setFilter("building", "RetailAndCommercial")
	-- layer:addFill(13.0, 184, 205, 84, 0)
	-- layer:addFill(13.5, 184, 205, 84, 255)
	-- layer:addFill(MAXZ, 184, 205, 84, 255)
end

LootMaps.Init.RoadMapSW = function(mapUI)
	local x1 = cellSize * 41;
	local y1 = cellSize * 13;
	local x2 = cellSize * 50;
	local y2 = cellSize * 25;

	local mapAPI = mapUI.javaObject:getAPIv1()
	MapUtils.initDirectoryMapData(mapUI, 'media/maps/Muldraugh, KY')
	initRoadMapStyle(mapUI)
	-- replaceWaterStyle(mapUI)
	mapAPI:setBoundsInSquares(x1, y1, x2, y2);
	-- mapAPI:setBoundsInCells(3, 2, 3, 4);
	-- overlayPNG(mapUI, 6155, 5053, 0.385, "badge", "media/textures/worldMap/RiversideBadge.png")
	-- overlayPNG(mapUI, 6500, 5062, 0.385, "legend", "media/textures/worldMap/Legend2.png")
	MapUtils.overlayPaper(mapUI)
	-- This is the only map with different x/y scales
	-- overlayPNG2(mapUI, 20*300-2, 17*300-69, 0.385, 0.455, "media/ui/LootableMaps/riversidemap.png", 0.5)
end