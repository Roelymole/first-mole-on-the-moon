#modloaded chisel
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.rows;

val oak = <ore:plankOak>;
val dark_oak = <ore:plankDarkOak>;
val tiles = <chisel:obsidian:12>;
val crate = <chisel:obsidian:14>;
val dark_iron = <chisel:iron:8>;
val light_iron = <chisel:iron:9>;
val dark_gold = <chisel:gold:6>;
val light_gold = <chisel:gold:7>;

val iron = <ore:blockIronSquare>;
val gold = <ore:blockGoldSquare>;
iron.addItems([<chisel:iron:1>, <chisel:iron:3>]);
gold.addItems([<chisel:gold:1>, <chisel:gold:2>]);

<ore:obsidian>.remove(crate);
<ore:blockIron>.removeItems([dark_iron, light_iron]);
<ore:blockGold>.removeItems([dark_gold, light_gold]);

Carving.removeVariation("obsidian", crate);
rows("obsidian_crates", crate * 3, tiles, oak, oak);
rows("dark_iron_crates", dark_iron * 3, iron, dark_oak, dark_oak);
rows("light_iron_crates", light_iron * 3, iron, oak, oak);
rows("dark_gold_crates", dark_gold * 3, gold, dark_oak, dark_oak);
rows("light_gold_crates", light_gold * 3, gold, oak, oak);
