#modloaded bdsandm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val ore_dict = <bdsandm:upgrade:5>;
val voider = <bdsandm:upgrade:6>;
val uninstaller = <bdsandm:upgrade:7>;
val key = <bdsandm:crate_key>;
val colour_tool = <bdsandm:color_tool>;

val compressed = <galacticraftcore:basic_item:11>;
val ingot = <minecraft:iron_ingot>;
val nugget = <minecraft:iron_nugget>;
val paintbrush = <buildcraftcore:paintbrush>;
val artifact = <biomesoplenty:terrestrial_artifact>;

//uninstaller.maxStackSize = 1;
key.maxStackSize = 1;
colour_tool.maxStackSize = 1;

recipes.addShapedMirrored("crate_key", key,
    [[ingot, nugget],
     [ingot, nugget],
     [compressed, null]]
);
recipes.addShapeless("colour_tool", colour_tool, [paintbrush, artifact]);
