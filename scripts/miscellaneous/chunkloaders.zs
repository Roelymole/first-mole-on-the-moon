#modloaded chickenchunks

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;

val enchanting = <minecraft:enchanting_table>;
val chunk = <chickenchunks:chunk_loader>;
val spot = <chickenchunks:chunk_loader:1>;
val book = <minecraft:book>;
val eye = <minecraft:ender_eye>;
val diamond = <minecraft:diamond>;
val redstone = <ore:blockRedstone>;
val gold = <ore:blockGold>;
val obsidian = <ore:obsidian>;

recipes.remove(enchanting);
recipes.removeByMod("chickenchunks");

// Make Enchanting Table recipe consistent
recipes.addShaped("enchanting_table", enchanting,
    [[null, book, null],
     [diamond, redstone, diamond],
     [obsidian, obsidian, obsidian]]
);
recipes.addShaped("chunk_loader", chunk,
    [[null, eye, null],
     [diamond, gold, diamond],
     [obsidian, obsidian, obsidian]]
);
surround("spot_loader", spot * 9, eye, chunk);
