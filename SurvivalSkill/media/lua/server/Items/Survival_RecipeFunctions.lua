
function Recipe.OnGiveXP.Survivalgooo(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Survival, player:getPerkLevel(Perks.Survival)*5);
end

function Recipe.OnGiveXP.Survival01(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Survival, 1);
end

function Recipe.OnGiveXP.Survival05(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Survival, 5);
end

function Recipe.OnGiveXP.Survival10(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Survival, 10);
end

function Recipe.OnGiveXP.Survival15(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Survival, 15);
end

function Recipe.OnGiveXP.Survival20(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Survival, 20);
end
