#modloaded bdsandm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;

val wood = <ore:logWood>;
val compressed = <galacticraftcore:basic_item:11>;
val barrel = <bdsandm:wood_barrel>;
val drum = <bdsandm:metal_barrel>;

barrel.maxStackSize = 1;
drum.maxStackSize = 1;

surround("wooden_barrel", barrel, wood, null);
surround("metal_drum", drum, compressed, null);
