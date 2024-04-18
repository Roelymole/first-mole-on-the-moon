#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Melter;

val water = <liquid:water>;
val lava = <liquid:lava>;
val obsidian = <liquid:obsidian>;
val stone = <ore:stone>;
val cobblestone = <ore:cobblestone>;
val mossy = <ore:blockMossy>;

// Allow Molten Obsidian to be made directly from water and lava
SaltMixer.addRecipe(water * 500, lava * 1000, obsidian * 288);

Melter.addRecipe(stone, lava * 1000, 7.5, 1.5, 0);
Melter.addRecipe(cobblestone, lava * 1000, 10, 1.75, 0);
Melter.addRecipe(mossy, lava * 1000, 10, 1.75, 0);
