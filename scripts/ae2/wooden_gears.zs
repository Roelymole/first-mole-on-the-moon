#modloader buildcraftcore appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.hide;

val BC_gear = <buildcraftcore:gear_wood>;
val AE_gear = <appliedenergistics2:material:40>;

recipes.remove(AE_gear);
recipes.replaceAllOccurences(AE_gear, BC_gear);

hide(AE_gear);
