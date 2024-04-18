#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.rows;
import scripts.utils.patterns.fencepattern;
import scripts.utils.patterns.chairpattern;
import scripts.utils.patterns.alternate;

val logs = {
    "oak": <minecraft:log>,
    "spruce": <minecraft:log:1>,
    "birch": <minecraft:log:2>,
    "jungle": <minecraft:log:3>,
    "acacia": <minecraft:log2>,
    "dark_oak": <minecraft:log2:1>
} as IItemStack[string];
val planks = {
    "oak": <ore:plankOak>,
    "spruce": <ore:plankSpruce>,
    "birch": <ore:plankBirch>,
    "jungle": <ore:plankJungle>,
    "acacia": <ore:plankAcacia>,
    "dark_oak": <ore:plankDarkOak>
} as IOreDictEntry[string];
val fences = {
    "oak": <minecraft:fence>,
    "spruce": <minecraft:spruce_fence>,
    "birch": <minecraft:birch_fence>,
    "jungle": <minecraft:jungle_fence>,
    "acacia": <minecraft:acacia_fence>,
    "dark_oak": <minecraft:dark_oak_fence>
} as IItemStack[string];
val gates = {
    "oak": <minecraft:fence_gate>,
    "spruce": <minecraft:spruce_fence_gate>,
    "birch": <minecraft:birch_fence_gate>,
    "jungle": <minecraft:jungle_fence_gate>,
    "acacia": <minecraft:acacia_fence_gate>,
    "dark_oak": <minecraft:dark_oak_fence_gate>
} as IItemStack[string];

val blocks = {
    "oak": {
        "blinds": <cfm:blinds_open>,
        "mailbox": <cfm:mail_box>,
        "doorbell": <cfm:door_bell>,
        "fence": <cfm:upgraded_fence_oak>,
        "gate": <cfm:upgraded_gate_oak>,
        "bench": <cfm:park_bench_oak>,
        "crate": <cfm:crate>
    },
    "spruce": {
        "blinds": <cfm:blinds_spruce_open>,
        "mailbox": <cfm:mail_box_spruce>,
        "doorbell": <cfm:door_bell_spruce>,
        "fence": <cfm:upgraded_fence_spruce>,
        "gate": <cfm:upgraded_gate_spruce>,
        "bench": <cfm:park_bench_spruce>,
        "crate": <cfm:crate_spruce>
    },
    "birch": {
        "blinds": <cfm:blinds_birch_open>,
        "mailbox": <cfm:mail_box_birch>,
        "doorbell": <cfm:door_bell_birch>,
        "fence": <cfm:upgraded_fence_birch>,
        "gate": <cfm:upgraded_gate_birch>,
        "bench": <cfm:park_bench_birch>,
        "crate": <cfm:crate_birch>
    },
    "jungle": {
        "blinds": <cfm:blinds_jungle_open>,
        "mailbox": <cfm:mail_box_jungle>,
        "doorbell": <cfm:door_bell_jungle>,
        "fence": <cfm:upgraded_fence_jungle>,
        "gate": <cfm:upgraded_gate_jungle>,
        "bench": <cfm:park_bench_jungle>,
        "crate": <cfm:crate_jungle>
    },
    "acacia": {
        "blinds": <cfm:blinds_acacia_open>,
        "mailbox": <cfm:mail_box_acacia>,
        "doorbell": <cfm:door_bell_acacia>,
        "fence": <cfm:upgraded_fence_acacia>,
        "gate": <cfm:upgraded_gate_acacia>,
        "bench": <cfm:park_bench_acacia>,
        "crate": <cfm:crate_acacia>
    },
    "dark_oak": {
        "blinds": <cfm:blinds_dark_oak_open>,
        "mailbox": <cfm:mail_box_dark_oak>,
        "doorbell": <cfm:door_bell_dark_oak>,
        "fence": <cfm:upgraded_fence_dark_oak>,
        "gate": <cfm:upgraded_gate_dark_oak>,
        "bench": <cfm:park_bench_dark_oak>,
        "crate": <cfm:crate_dark_oak>
    }
} as IItemStack[string][string];

val stick = <ore:stickWood>;
val chest = <minecraft:chest>;
val note_block = <minecraft:noteblock>;
var button = <minecraft:stone_button>;
if (loadedMods has "sbmwoolbuttons") {
    button = <sbmwoolbuttons:wool_button_white>;
}

for name, block in blocks {
    rows(name ~ "_blinds", block["blinds"] * 2, logs[name], stick, stick);
    recipes.addShaped(name ~ "_mailbox", block["mailbox"],
        [[logs[name], logs[name], logs[name]],
         [planks[name], chest, planks[name]],
         [null, fences[name], null]]
    );
    recipes.addShapedMirrored(name ~ "_doorbell", block["doorbell"],
        [[planks[name], null],
         [note_block, button],
         [planks[name], null]]
    );
    fencepattern(name ~ "_fence_upgrade", block["fence"] * 3, logs[name], fences[name]);
    fencepattern(name ~ "_gate_upgrade", block["gate"] * 2,  logs[name],  gates[name]);
    chairpattern(name ~ "_bench", block["bench"], logs[name], planks[name]);
    alternate(name ~ "_crate", block["crate"], logs[name], planks[name]);

    block["crate"].maxStackSize = 1;
}
