#modloaded galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val kit = <galacticraftcore:emergency_kit>;
val pick = <galacticraftcore:steel_pickaxe>;
val mask = <galacticraftcore:oxygen_mask>;
val gear = <galacticraftcore:oxygen_gear>;
val tank = <galacticraftcore:oxygen_tank_light_full>;
val chute = <galacticraftcore:parachute:*>;
val food = <galacticraftcore:food:3>;
val rad_x = <nuclearcraft:rad_x>;
val radaway = <nuclearcraft:radaway>;

recipes.remove(kit);
recipes.addShaped("space_emergency_kit", kit,
    [[pick, mask, gear],
     [tank, chute, tank],
     [food, rad_x, radaway]]
);
