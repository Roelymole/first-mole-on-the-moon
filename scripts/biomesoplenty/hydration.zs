#modloaded biomesoplenty nuclearcraft
#priority 49

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.Crystallizer;

val water = <liquid:water>;
val dirt = <ore:dirt>;
val mud = <biomesoplenty:mud>;
val sand = <minecraft:sand>;
val dried_sand = <biomesoplenty:dried_sand>;
val quicksand = <liquid:sand>;

recipes.removeByRecipeName("biomesoplenty:mud_from_dirt");
recipes.removeByRecipeName("biomesoplenty:sand_from_dried_sand");

Infuser.addRecipe(dirt, water * 500, mud);
Infuser.addRecipe(dried_sand, water * 250, sand);
Extractor.addRecipe(mud, dirt, water * 500, 0.5, 1, 0);
Crystallizer.addRecipe(quicksand * 250, sand, 2, 1, 0);
