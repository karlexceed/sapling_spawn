-- sapling_spawn/other_mods.lua


-- Mod check helper
function mod_loaded(str)
	if core.get_modpath(str) ~= nil then
		return true
	else
		return false
	end
end


-- Default
if mod_loaded('default') then
	sapling_ref["default:tree"] = "default:sapling"
	sapling_ref["default:jungletree"] = "default:junglesapling"
	sapling_ref["default:pine_tree"] = "default:pine_sapling"
	sapling_ref["default:acacia_tree"] = "default:acacia_sapling"
	sapling_ref["default:aspen_tree"] = "default:aspen_sapling"
end


-- Ethereal NG
-- Cannot support bigtrees, lemon trees, orange trees, or bamboo due to the way they were implemented in Ethereal
if mod_loaded('ethereal') then
	sapling_ref["ethereal:willow_trunk"] = "ethereal:willow_sapling"
	sapling_ref["ethereal:yellow_trunk"] = "ethereal:yellow_tree_sapling"
	sapling_ref["ethereal:banana_trunk"] = "ethereal:banana_tree_sapling"
	sapling_ref["ethereal:frost_tree"] = "ethereal:frost_tree_sapling"
	sapling_ref["ethereal:mushroom_trunk"] = "ethereal:mushroom_sapling"
	sapling_ref["ethereal:palm_trunk"] = "ethereal:palm_sapling"
	sapling_ref["ethereal:redwood_trunk"] = "ethereal:redwood_sapling"
	sapling_ref["ethereal:birch_trunk"] = "ethereal:birch_sapling"
	sapling_ref["ethereal:sakura_trunk"] = "ethereal:sakura_sapling"
	sapling_ref["ethereal:olive_trunk"] = "ethereal:olive_tree_sapling"
end


-- Everness
-- Some trees are unsupported due to the way they were implemented in Everness
if mod_loaded('everness') then
	sapling_ref["everness:coral_tree"] = "everness:coral_tree_sapling"
	sapling_ref["everness:coral_tree_bioluminescent"] = "everness:coral_tree_bioluminescent_sapling"
	sapling_ref["everness:baobab_tree"] = "everness:baobab_sapling"
	sapling_ref["everness:dry_tree"] = "everness:dry_tree_sapling"
	sapling_ref["everness:willow_tree"] = "everness:willow_tree_sapling"
	sapling_ref["everness:sequoia_tree"] = "everness:sequoia_tree_sapling"
	sapling_ref["everness:crystal_tree"] = "everness:crystal_tree_sapling"
	sapling_ref["everness:mese_tree"] = "everness:mese_tree_sapling"
	sapling_ref["everness:palm_tree"] = "everness:palm_tree_sapling"
end


-- Moretrees
if mod_loaded('moretrees') then
	sapling_ref["moretrees:beech_trunk"] = "moretrees:beech_sapling"
	sapling_ref["moretrees:apple_tree_trunk"] = "moretrees:apple_tree_sapling"
	sapling_ref["moretrees:oak_trunk"] = "moretrees:oak_sapling"
	sapling_ref["moretrees:sequoia_trunk"] = "moretrees:sequoia_sapling"
	sapling_ref["moretrees:birch_trunk"] = "moretrees:birch_sapling"
	sapling_ref["moretrees:palm_trunk"] = "moretrees:palm_sapling"
	sapling_ref["moretrees:date_palm_trunk"] = "moretrees:date_palm_sapling"
	sapling_ref["moretrees:spruce_trunk"] = "moretrees:spruce_sapling"
	sapling_ref["moretrees:cedar_trunk"] = "moretrees:cedar_sapling"
	sapling_ref["moretrees:poplar_trunk"] = "moretrees:poplar_sapling"
	sapling_ref["moretrees:poplar_small_trunk"] = "moretrees:poplar_small_sapling"
	sapling_ref["moretrees:willow_trunk"] = "moretrees:willow_sapling"
	sapling_ref["moretrees:rubber_tree_trunk"] = "moretrees:rubber_tree_sapling"
	sapling_ref["moretrees:fir_trunk"] = "moretrees:fir_sapling"
	sapling_ref["moretrees:jungletree_trunk"] = "moretrees:jungletree_sapling"
end