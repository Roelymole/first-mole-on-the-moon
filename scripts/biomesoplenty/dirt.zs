#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.checkerboard;
import scripts.utils.patterns.vertical;

val dirt = <minecraft:dirt>;
val loamy_dirt = <biomesoplenty:dirt>;
val mud = <biomesoplenty:mud>;
val sandy_dirt = <biomesoplenty:dirt:1>;
val sand = <minecraft:sand>;
val silty_dirt = <biomesoplenty:dirt:2>;
var quartz = <minecraft:quartz>;
if (loadedMods has "appliedenergistics2") {
    quartz = <appliedenergistics2:material:3>;
}

val stone = <minecraft:stone>;
val netherrack = <minecraft:netherrack>;
val grass = <minecraft:grass>;
val vines = <ore:vines>;
val flowers = <biomesoplenty:flower_0>;
val overgrown_stone = <biomesoplenty:grass:1>;
val overgrown_netherrack = <biomesoplenty:grass:6>;
val flowering_grass = <biomesoplenty:grass:7>;

checkerboard("loamy_dirt", loamy_dirt * 4, dirt, mud, true);
checkerboard("sandy_dirt", sandy_dirt * 4, dirt, sand, true);
checkerboard("silty_dirt", silty_dirt * 2, dirt, quartz, true);

vertical("overgrown_stone", overgrown_stone, vines, stone);
vertical("overgrown_netherrack", overgrown_netherrack, vines, netherrack);
vertical("flowering_grass", flowering_grass, flowers, grass);
