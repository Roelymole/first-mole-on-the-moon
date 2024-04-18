#modloaded buildcrafttransport
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val quartz = <ore:blockQuartzAll>;
quartz.addAll(<ore:blockQuartz>);
quartz.addAll(<ore:blockCertusQuartz>);

recipes.replaceAllOccurences(<minecraft:lapis_block>, <ore:blockLapis>);
recipes.replaceAllOccurences(<minecraft:obsidian>, <ore:obsidian>, <buildcrafttransport:pipe_obsidian_item:*>);
recipes.replaceAllOccurences(<minecraft:sandstone>, <ore:sandstoneYellow>, <buildcrafttransport:pipe_sandstone_item:*>);
recipes.replaceAllOccurences(<ore:blockQuartz>, quartz, <buildcrafttransport:pipe_quartz_item:*>);
