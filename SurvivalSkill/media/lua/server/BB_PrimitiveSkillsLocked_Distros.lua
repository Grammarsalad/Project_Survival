-- ************************************************************************
-- **        ██████  ██████   █████  ██    ██ ███████ ███    ██          **
-- **        ██   ██ ██   ██ ██   ██ ██    ██ ██      ████   ██          **
-- **        ██████  ██████  ███████ ██    ██ █████   ██ ██  ██          **
-- **        ██   ██ ██   ██ ██   ██  ██  ██  ██      ██  ██ ██          **
-- **        ██████  ██   ██ ██   ██   ████   ███████ ██   ████          **
-- ************************************************************************
-- ** All rights reserved. This content is protected by © Copyright law. **
-- ************************************************************************

require "Items/ProceduralDistributions"

--- Attempt to add a custom item distribution to the game.
--- <br> By: <b>BitBraven</b>
---@param container string
---@param itemDistro table
local function addToProceduralDistribution(container, itemDistro)
    local list = ProceduralDistributions.list; if not list then return end
	if not list[container] then return end

	for _, value in ipairs(itemDistro) do
		 table.insert(ProceduralDistributions.list[container].items, value)
	end
end

addToProceduralDistribution("BookstoreMisc", {"PrimitiveSkillsMagazine", 2})
addToProceduralDistribution("CrateMagazines", {"PrimitiveSkillsMagazine", 1})
addToProceduralDistribution("GarageFirearms", {"PrimitiveSkillsMagazine", 1})
addToProceduralDistribution("GunStoreMagazineRack", {"PrimitiveSkillsMagazine", 2})
addToProceduralDistribution("LibraryBooks", {"PrimitiveSkillsMagazine", 1})
addToProceduralDistribution("LivingRoomShelf", {"PrimitiveSkillsMagazine", 0.1})
addToProceduralDistribution("LivingRoomShelfNoTapes", {"PrimitiveSkillsMagazine", 0.1})
addToProceduralDistribution("LivingRoomSideTable", {"PrimitiveSkillsMagazine", 0.1})
addToProceduralDistribution("LivingRoomSideTableNoRemote", {"PrimitiveSkillsMagazine", 0.1})
addToProceduralDistribution("MagazineRackMixed", {"PrimitiveSkillsMagazine", 1})
addToProceduralDistribution("PostOfficeMagazines", {"PrimitiveSkillsMagazine", 1})
addToProceduralDistribution("ShelfGeneric", {"PrimitiveSkillsMagazine", 0.1})
addToProceduralDistribution("SurvivalGear", {"PrimitiveSkillsMagazine", 1})