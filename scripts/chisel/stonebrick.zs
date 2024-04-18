#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val stone_bricks = <minecraft:stonebrick>;
val mossy_bricks = <minecraft:stonebrick:1>;
val cracked_bricks = <minecraft:stonebrick:2>;
val chiselled_bricks = <minecraft:stonebrick:3>;
val polished_stone = <buildingblocks:morestones2:12>;
val vines = <ore:vines>;

furnace.remove(cracked_bricks);
recipes.remove(mossy_bricks);
recipes.remove(chiselled_bricks);
recipes.removeShaped(stone_bricks,
    [[polished_stone, polished_stone],
     [polished_stone, polished_stone]]
);

recipes.addShapeless("mossy_stone_bricks", mossy_bricks, [stone_bricks, vines]);

Carving.addVariation("stonebrick", stone_bricks);
Carving.addVariation("stonebrick", cracked_bricks);
Carving.addVariation("stonebrick", chiselled_bricks);
