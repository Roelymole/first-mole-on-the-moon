#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.tablepattern;
import scripts.utils.patterns.cupboardpattern;

val logs = {
    "oak": <minecraft:log>,
    "spruce": <minecraft:log:1>,
    "birch": <minecraft:log:2>,
    "jungle": <minecraft:log:3>,
    "acacia": <minecraft:log2>,
    "dark_oak": <minecraft:log2:1>,
    "stone": <minecraft:stone>,
    "granite": <minecraft:stone:2>,
    "diorite": <minecraft:stone:3>,
    "andesite": <minecraft:stone:6>
} as IItemStack[string];
val planks = {
    "oak": <ore:plankOak>,
    "spruce": <ore:plankSpruce>,
    "birch": <ore:plankBirch>,
    "jungle": <ore:plankJungle>,
    "acacia": <ore:plankAcacia>,
    "dark_oak": <ore:plankDarkOak>,
    "stone": <chisel:stonebrick2:9>,
    "granite": <minecraft:stained_hardened_clay>,
    "diorite": <minecraft:concrete>,
    "andesite": <minecraft:concrete:8>
} as IIngredient[string];
val andesite = <minecraft:stone:5>;
val drawers = {
    "oak": <minecraft:concrete:12>,
    "spruce": <minecraft:stained_hardened_clay:15>,
    "birch": <minecraft:concrete:8>,
    "jungle": <minecraft:stained_hardened_clay:13>,
    "acacia": <minecraft:stained_hardened_clay:4>,
    "dark_oak": <minecraft:stained_hardened_clay:12>,
    "stone": <minecraft:concrete:7>,
    "granite": <minecraft:stained_hardened_clay:8>,
    "diorite": <minecraft:stone:4>,
    "andesite": <minecraft:stained_hardened_clay:9>
} as IItemStack[string];

val blocks = {
    "oak": {
        "cabinet": <cfm:cabinet_oak>,
        "bedside_cabinet": <cfm:bedside_cabinet_oak>,
        "desk": <cfm:desk_oak>,
        "desk_cabinet": <cfm:desk_cabinet_oak>
    },
    "spruce": {
        "cabinet": <cfm:cabinet_spruce>,
        "bedside_cabinet": <cfm:bedside_cabinet_spruce>,
        "desk": <cfm:desk_spruce>,
        "desk_cabinet": <cfm:desk_cabinet_spruce>
    },
    "birch": {
        "cabinet": <cfm:cabinet_birch>,
        "bedside_cabinet": <cfm:bedside_cabinet_birch>,
        "desk": <cfm:desk_birch>,
        "desk_cabinet": <cfm:desk_cabinet_birch>
    },
    "jungle": {
        "cabinet": <cfm:cabinet_jungle>,
        "bedside_cabinet": <cfm:bedside_cabinet_jungle>,
        "desk": <cfm:desk_jungle>,
        "desk_cabinet": <cfm:desk_cabinet_jungle>
    },
    "acacia": {
        "cabinet": <cfm:cabinet_acacia>,
        "bedside_cabinet": <cfm:bedside_cabinet_acacia>,
        "desk": <cfm:desk_acacia>,
        "desk_cabinet": <cfm:desk_cabinet_acacia>
    },
    "dark_oak": {
        "cabinet": <cfm:cabinet_dark_oak>,
        "bedside_cabinet": <cfm:bedside_cabinet_dark_oak>,
        "desk": <cfm:desk_dark_oak>,
        "desk_cabinet": <cfm:desk_cabinet_dark_oak>
    },
    "stone": {
        "cabinet": <cfm:cabinet_stone>,
        "bedside_cabinet": <cfm:bedside_cabinet_stone>,
        "desk": <cfm:desk_stone>,
        "desk_cabinet": <cfm:desk_cabinet_stone>
    },
    "granite": {
        "cabinet": <cfm:cabinet_granite>,
        "bedside_cabinet": <cfm:bedside_cabinet_granite>,
        "desk": <cfm:desk_granite>,
        "desk_cabinet": <cfm:desk_cabinet_granite>
    },
    "diorite": {
        "cabinet": <cfm:cabinet_diorite>,
        "bedside_cabinet": <cfm:bedside_cabinet_diorite>,
        "desk": <cfm:desk_diorite>,
        "desk_cabinet": <cfm:desk_cabinet_diorite>
    },
    "andesite": {
        "cabinet": <cfm:cabinet_andesite>,
        "bedside_cabinet": <cfm:bedside_cabinet_andesite>,
        "desk": <cfm:desk_andesite>,
        "desk_cabinet": <cfm:desk_cabinet_andesite>
    },
} as IItemStack[string][string];

val chest = <minecraft:chest>;

for name, block in blocks {
    cupboardpattern(name ~ "_cabinet", block["cabinet"], logs[name], planks[name]);
    if (name == "andesite") {
        tablepattern(name ~ "_bedside_cabinet", block["bedside_cabinet"], logs[name], andesite, chest);
    } else {
        tablepattern(name ~ "_bedside_cabinet", block["bedside_cabinet"], logs[name], planks[name], chest);
    }
    tablepattern(name ~ "_desk", block["desk"], drawers[name], logs[name], planks[name]);
    tablepattern(name ~ "_desk_cabinet", block["desk_cabinet"], drawers[name], logs[name], chest);
}
