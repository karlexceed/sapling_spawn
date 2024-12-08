-- sapling_spawn/init.lua


-- Namespace
sapling_spawn = {}


-- Tree name -> sapling name lookup table
sapling_ref = {}


-- Load support for other mods' trees
local modpath = minetest.get_modpath("sapling_spawn")
dofile(modpath.."/other_mods.lua")


-- Spawn saplings
function sapling_spawn.spawn_saplings(pos, node)
	-- This block needs to be soil.
	if minetest.get_item_group(minetest.get_node(pos).name, "soil") == 0 then
		return
	end
	
	-- Block above needs to be air.
	local above = {x = pos.x, y = pos.y + 1, z = pos.z}
	if not minetest.get_node(above).name == "air" then
		return
	end
	
	-- The block cannot be underwater.
	if minetest.get_node(above).name == "default:water_source" or minetest.get_node(above).name == "default:river_water_source" then
		return
	end
	
	-- Is it bright enough?
	local light = minetest.get_node_light(above)
	if not light or light < 13 then
		return
	end
	
	-- There must be tree nearby.
	local proximity = 15
	if not minetest.find_node_near(pos, proximity, {"group:tree"}) then
		return
	end
	
	
	local pos0 = {x = pos.x - 9, y = pos.y - 3, z = pos.z - 9}
	local pos1 = {x = pos.x + 9, y = pos.y + 3, z = pos.z + 9}
	-- Observe a maximum density of trees.
	-- In the volume defined, there are 2527 blocks. 500 is approximately 20% of that space. 100 is 3-4%.
	if #minetest.find_nodes_in_area(pos0, pos1, {"group:tree"}) >= 100 then
		return
	end
	
	-- Observe a maximum density of saplings.
	if #minetest.find_nodes_in_area(pos0, pos1, {"group:sapling"}) >= 1 then
		return
	end
	
	-- Choose a meaningful sapling species.
	local nearest_tree = minetest.find_node_near(pos, proximity, {"group:tree"})
	local sapling_name = sapling_ref[minetest.get_node(nearest_tree).name]
	
	-- If this tree isn't in the reference table, then bail.
	if sapling_name == nil then return end
	
	-- If everything worked, place a sapling.
	minetest.set_node(above, {name = sapling_name})
end

minetest.register_abm({
	label = "Spawn saplings",
	nodenames = {"group:soil"},
	neighbors = {"group:soil"},
	without_neighbors = {"group:tree"},
	interval = 240,
	chance = 256,
	action = function(...)
		sapling_spawn.spawn_saplings(...)
	end,
})