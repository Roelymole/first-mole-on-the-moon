#modloaded biomesoplenty nuclearcraft
#priority 1

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;

val blue_orchid = <minecraft:red_flower:1>;
val glowflower = <biomesoplenty:flower_0:3>;
val burning_blossom = <biomesoplenty:flower_0:15>;
val goldenrod = <biomesoplenty:flower_1:1>;
val icy_iris = <biomesoplenty:flower_1:4>;

val glowstone = <liquid:glowstone>;
val lava = <liquid:lava>;
val gold = <liquid:gold>;
val nc_nitrogen = <liquid:liquid_nitrogen>;
val gc_nitrogen = <liquid:liquidnitrogen>;

Infuser.addRecipe(blue_orchid, glowstone * 100, glowflower);
Infuser.addRecipe(<ore:flowerBase>, lava * 100, burning_blossom);
//Infuser.addRecipe(<ore:flowerBase>, gold * 16, goldenrod);
Infuser.addRecipe(<ore:flowerBase>, nc_nitrogen * 100, icy_iris);
Infuser.addRecipe(<ore:flowerBase>, gc_nitrogen * 100, icy_iris);
