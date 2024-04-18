#modloaded nuclearcraft
#priority 96

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val inputs = {
    "copper": [<nuclearcraft:dust>],
    "tin": [<nuclearcraft:dust:1>],
    "lead": [<nuclearcraft:dust:2>, <nuclearcraft:ore:2>],
    "thorium": [<nuclearcraft:dust:3>, <nuclearcraft:ore:3>],
    "uranium": [<nuclearcraft:dust:4>, <nuclearcraft:ore:4>],
    "boron": [<nuclearcraft:dust:5>, <nuclearcraft:ore:5>],
    "lithium": [<nuclearcraft:dust:6>, <nuclearcraft:ore:6>],
    "magnesium": [<nuclearcraft:dust:7>, <nuclearcraft:ore:7>],
    "graphite": [<nuclearcraft:dust:8>],
    "beryllium": [<nuclearcraft:dust:9>],
    "zirconium": [<nuclearcraft:dust:10>],
    "manganese": [<nuclearcraft:dust:11>, <nuclearcraft:ingot:14>],
    "aluminium": [<nuclearcraft:dust:12>],
    "silver": [<nuclearcraft:dust:13>],
    "manganese_oxide_dust": [<nuclearcraft:gem_dust:1>],
    "manganese_oxide": [<nuclearcraft:dust:14>, <nuclearcraft:ingot:15>],
    "manganese_dioxide": [<nuclearcraft:dust:15>],
    "cocoa": [<minecraft:dye:3>]
} as IItemStack[][string];

val outputs = {
    "copper": <galacticraftcore:basic_item:3>,
    "tin": <galacticraftcore:basic_item:4>,
    "lead": <nuclearcraft:ingot:2>,
    "thorium": <nuclearcraft:ingot:3>,
    "uranium": <nuclearcraft:ingot:4>,
    "boron": <nuclearcraft:ingot:5>,
    "lithium": <nuclearcraft:ingot:6>,
    "magnesium": <nuclearcraft:ingot:7>,
    "graphite": <nuclearcraft:ingot:8>,
    "beryllium": <nuclearcraft:ingot:9>,
    "zirconium": <nuclearcraft:ingot:10>,
    "manganese": <nuclearcraft:ingot:11>,
    "aluminium": <galacticraftcore:basic_item:5>,
    "silver": <nuclearcraft:ingot:13>,
    "manganese_oxide_dust": <nuclearcraft:dust:14>,
    "manganese_oxide": <nuclearcraft:ingot:14>,
    "manganese_dioxide": <nuclearcraft:ingot:15>,
    "cocoa": <nuclearcraft:roasted_cocoa_beans>
} as IItemStack[string];

val xp = {
    "copper": 0.5,
    "tin": 0.35,
    "lead": 0.85,
    "thorium": 0.15,
    "uranium": 0.7,
    "boron": 0.5,
    "lithium": 0.5,
    "magnesium": 0.35,
    "graphite": 0.15,
    "beryllium": 0.5,
    "zirconium": 0.7,
    "manganese": 0.35,
    "aluminium": 0.7,
    "silver": 1.0,
    "manganese_oxide_dust": 0.15,
    "manganese_oxide": 0.35,
    "manganese_dioxide": 0.2,
    "cocoa": 0.2
} as double[string];

val do_not_remove = [
    "copper",
    "tin",
    "aluminium"
] as string[];

for name, input in inputs {
    for item in input {
        if !(do_not_remove has name) {
            furnace.remove(outputs[name]);
        }

        furnace.addRecipe(outputs[name], item, xp[name]);
    }
}

//furnace.remove(outputs["graphite"]);
