#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemCondition;

val firewood = <cfm:item_log>;
val axes = <ore:axe>;
val logs = <ore:logWood>;

for i, axe in axes.items {
    recipes.addShapeless("chop_log_" ~ i, firewood * 8, [axe.anyDamage().transformDamage(), logs]);
}
