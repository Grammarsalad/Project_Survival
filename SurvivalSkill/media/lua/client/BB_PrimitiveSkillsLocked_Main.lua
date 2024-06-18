-- ************************************************************************
-- **        ██████  ██████   █████  ██    ██ ███████ ███    ██          **
-- **        ██   ██ ██   ██ ██   ██ ██    ██ ██      ████   ██          **
-- **        ██████  ██████  ███████ ██    ██ █████   ██ ██  ██          **
-- **        ██   ██ ██   ██ ██   ██  ██  ██  ██      ██  ██ ██          **
-- **        ██████  ██   ██ ██   ██   ████   ███████ ██   ████          **
-- ************************************************************************
-- ** All rights reserved. This content is protected by © Copyright law. **
-- ************************************************************************

local function tryRemoveOption(name, menu)
    local option = menu:getOptionFromName(name)
    if not option then return end

    local tooltip = ISWorldObjectContextMenu.addToolTip()
    tooltip.description = getText("Tooltip_PrimitiveSkillsLocked_NoMagazine")
    option.toolTip = tooltip
    option.notAvailable = true
end

local function onFillWorldObjectContextMenu(player, context, worldObjects, test)
    if getWorld():getGameMode() == "Multiplayer" and not isAdmin() then return end

    if not getPlayer():isRecipeKnown("Drill Plank") then

        local lightOption = context:getOptionFromName(campingText.lightCampfire)
        if not lightOption then return end

        local submenu = context:getSubMenu(lightOption.subOption)
        if not submenu then return end

        local percedWoodItem = InventoryItemFactory.CreateItem("Base.PercedWood")
        local stickItem = InventoryItemFactory.CreateItem("Base.WoodenStick")
        local optionName = percedWoodItem:getName() .. ' + '.. stickItem:getName()
        tryRemoveOption(optionName, submenu)

        local branchItem = InventoryItemFactory.CreateItem("Base.TreeBranch")
        optionName = percedWoodItem:getName() .. ' + '.. branchItem:getName()
        tryRemoveOption(optionName, submenu)
    end
end

Events.OnFillWorldObjectContextMenu.Add(onFillWorldObjectContextMenu)