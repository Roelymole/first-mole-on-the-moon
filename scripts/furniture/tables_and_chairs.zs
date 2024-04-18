#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.tablepattern;
import scripts.utils.patterns.chairpattern;
import scripts.utils.patterns.benchpattern;

val logs = {
    "oak": <minecraft:log>,
    "spruce": <minecraft:log:1>,
    "birch": <minecraft:log:2>,
    "jungle": <minecraft:log:3>,
    "acacia": <minecraft:log2>,
    "dark_oak": <minecraft:log2:1>,
    "stone": <chisel:stonebrick2:9>,
    "granite": <minecraft:stone:2>,
    "diorite": <minecraft:stone:4>,
    "andesite": <minecraft:stone:6>
} as IItemStack[string];
val planks = {
    "oak": <ore:plankOak>,
    "spruce": <ore:plankSpruce>,
    "birch": <ore:plankBirch>,
    "jungle": <ore:plankJungle>,
    "acacia": <ore:plankAcacia>,
    "dark_oak": <ore:plankDarkOak>,
    "stone": <minecraft:stone>,
    "granite": <minecraft:stone:1>,
    "diorite": <minecraft:stone:3>,
    "andesite": <minecraft:stone:5>
} as IIngredient[string];

val blocks = {
    "oak": {
        "coffee_table": <cfm:coffee_table_oak>,
        "table": <cfm:table_oak>,
        "chair": <cfm:chair_oak>
    },
    "spruce": {
        "coffee_table": <cfm:coffee_table_spruce>,
        "table": <cfm:table_spruce>,
        "chair": <cfm:chair_spruce>
    },
    "birch": {
        "coffee_table": <cfm:coffee_table_birch>,
        "table": <cfm:table_birch>,
        "chair": <cfm:chair_birch>
    },
    "jungle": {
        "coffee_table": <cfm:coffee_table_jungle>,
        "table": <cfm:table_jungle>,
        "chair": <cfm:chair_jungle>
    },
    "acacia": {
        "coffee_table": <cfm:coffee_table_acacia>,
        "table": <cfm:table_acacia>,
        "chair": <cfm:chair_acacia>
    },
    "dark_oak": {
        "coffee_table": <cfm:coffee_table_dark_oak>,
        "table": <cfm:table_dark_oak>,
        "chair": <cfm:chair_dark_oak>
    },
    "stone": {
        "coffee_table": <cfm:coffee_table_stone>,
        "table": <cfm:table_stone>,
        "chair": <cfm:chair_stone>
    },
    "granite": {
        "coffee_table": <cfm:coffee_table_granite>,
        "table": <cfm:table_granite>,
        "chair": <cfm:chair_granite>
    },
    "diorite": {
        "coffee_table": <cfm:coffee_table_diorite>,
        "table": <cfm:table_diorite>,
        "chair": <cfm:chair_diorite>
    },
    "andesite": {
        "coffee_table": <cfm:coffee_table_andesite>,
        "table": <cfm:table_andesite>,
        "chair": <cfm:chair_andesite>
    },
} as IItemStack[string][string];

val grand_chair = <cfm:grand_chair_bottom>;
val red_wool = <ore:blockWoolRed>;
val bench = <cfm:bench>;
val outdoor_table = <cfm:table_outdoor>;
val brown_glass = <ore:blockGlassBrown>;

for name, block in blocks {
    benchpattern(name ~ "_coffee_table", block["coffee_table"], logs[name], planks[name]);
    tablepattern(name ~ "_table", block["table"], logs[name], null, planks[name]);
    chairpattern(name ~ "_chair", block["chair"], planks[name]);
}

recipes.remove(grand_chair);
recipes.remove(bench);
recipes.remove(outdoor_table);

chairpattern("grand_chair", grand_chair, planks["spruce"], planks["dark_oak"], red_wool);
benchpattern("outdoor_bench", bench, logs["oak"], planks["oak"], planks["oak"]);
tablepattern("outdoor_table", outdoor_table, logs["oak"], planks["oak"], null, brown_glass);
