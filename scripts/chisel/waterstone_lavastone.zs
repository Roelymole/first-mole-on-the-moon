#modloaded nuclearcraft chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;

var stone = <chisel:stonebrick>.definition;
var waterstone = <chisel:waterstone>.definition;
var lavastone = <chisel:lavastone>.definition;
val water = <liquid:water>;
val lava = <liquid:lava>;

val chisel_stone = {
    [<chisel:stonebrick>, <chisel:waterstone>, <chisel:lavastone>]: 15,
    [<chisel:stonebrick1>, <chisel:waterstone1>, <chisel:lavastone1>]: 7,
    [<minecraft:stonebrick>, <chisel:waterstone1:8>, <chisel:lavastone1:8>]: 1,
    [<chisel:stonebrick2>, <chisel:waterstone1:9>, <chisel:lavastone1:9>]: 1,
    [<minecraft:stonebrick:3>, <chisel:waterstone1:10>, <chisel:lavastone1:10>]: 1,
    [<chisel:stonebrick2:1>, <chisel:waterstone1:11>, <chisel:lavastone1:11>]: 1,
    [<chisel:stonebrick2:2>, <chisel:waterstone1:12>, <chisel:lavastone1:12>]: 1,
    [<chisel:stonebrick2:3>, <chisel:waterstone1:13>, <chisel:lavastone1:13>]: 1,
    [<chisel:stonebrick2:4>, <chisel:waterstone1:14>, <chisel:lavastone1:14>]: 1,
    [<chisel:stonebrick1:8>, <chisel:waterstone1:15>, <chisel:lavastone1:15>]: 1,
    [<chisel:stonebrick1:9>, <chisel:waterstone2>, <chisel:lavastone2>]: 1,
    [<minecraft:stonebrick:2>, <chisel:waterstone:2>, <chisel:lavastone:2>]: 1,
} as int[IItemStack[]];

recipes.remove(<chisel:waterstone> * 8);
recipes.remove(<chisel:lavastone> * 8);

for items, n in chisel_stone {
    stone = items[0].definition;
    waterstone = items[1].definition;
    lavastone = items[2].definition;
    if (n == 1) {
        Infuser.addRecipe(items[0], water * 100, items[1]);
        Infuser.addRecipe(items[0], lava * 100, items[2]);
    } else {
        for i in 0 to n + 1 {
            Infuser.addRecipe(stone.makeStack(i), water * 100, waterstone.makeStack(i));
            Infuser.addRecipe(stone.makeStack(i), lava * 100, lavastone.makeStack(i));
        }
    }
}
