#modloaded galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.checkerboard;

val thermal = <galacticraftplanets:item_basic_asteroids:7>;
val redstone = <minecraft:redstone>;
val wool = <ore:wool>;
val isothermal = <galacticraftplanets:basic_item_venus:3>;
val desh = <galacticraftplanets:item_basic_mars>;

recipes.remove(thermal);
recipes.remove(isothermal);
checkerboard("thermal_fabric", thermal * 4, redstone, wool);
checkerboard("isothermal_fabric", isothermal * 4, desh, thermal);
