#modloaded nuclearcraft
#priority 96

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.RockCrusher;

val inputs = {
    "coal": <ore:oreCoal>,
    "iron": <ore:oreIron>,
    "gold": <ore:oreGold>,
    "diamond": <ore:oreDiamond>,
    "redstone": <ore:oreRedstone>,
    "lapis": <ore:oreLapis>,
    "tin": <ore:oreTin>,
    "copper": <ore:oreCopper>,
    "aluminium": <ore:oreAluminum>,
    "lead": <ore:oreLead>,
    "silicon": <ore:oreSilicon>,
    "cheese": <ore:oreCheese>,
    "desh": <ore:oreDesh>,
    "solar": <ore:oreSolar>,
    "ilmenite": <ore:oreIlmenite>,
    "quartz": <ore:oreQuartz>,
    "certus_quartz": <ore:oreCertusQuartz>,
    "thorium": <ore:oreThorium>,
    "uranium": <ore:oreUranium>,
    "boron": <ore:oreBoron>,
    "lithium": <ore:oreLithium>,
    "magnesium": <ore:oreMagnesium>,
    "obsidian": <ore:obsidian>,
    "end_stone": <ore:endstone>
} as IOreDictEntry[string];

val outputs = {
    "coal": <nuclearcraft:gem_dust:7>,
    "iron": <appliedenergistics2:material:49>,
    "gold": <appliedenergistics2:material:51>,
    "diamond": <nuclearcraft:gem_dust>,
    "redstone": <minecraft:redstone>,
    "lapis": <minecraft:dye:4>,
    "tin": <nuclearcraft:dust:1>,
    "copper": <nuclearcraft:dust>,
    "aluminium": <nuclearcraft:dust:12>,
    "lead": <nuclearcraft:dust:2>,
    "silicon": <galacticraftcore:basic_item:2>,
    "cheese": <galacticraftcore:cheese_curd>,
    "solar": <galacticraftplanets:basic_item_venus:4>,
    "meteoric_iron": <nuclearcraft:gem_dust:2>,
    "desh": <nuclearcraft:gem_dust:9>,
    "titanium": <nuclearcraft:gem_dust:10>,
    "carbon": <galacticraftplanets:carbon_fragments>,
    "thorium": <nuclearcraft:dust:3>,
    "uranium": <nuclearcraft:dust:4>,
    "boron": <nuclearcraft:dust:5>,
    "lithium": <nuclearcraft:dust:6>,
    "magnesium": <nuclearcraft:dust:7>,
    "quartz": <appliedenergistics2:material:3>,
    "certus_quartz": <appliedenergistics2:material:2>,
    "sky_stone": <appliedenergistics2:material:45>,
    "obsidian": <nuclearcraft:gem_dust:3>,
    "end_stone": <nuclearcraft:gem_dust:11>
} as IItemStack[string];

val exceptions = [
    "coal",
    "ilmenite",
    "sky_stone",
    "obsidian",
    "end_stone"
] as string[];

val sky_stone = <appliedenergistics2:sky_stone_block>;

// Add the standard recipes which give 2 dust per ore
for name, input in inputs {
    if (!(exceptions has name)) {
        RockCrusher.addRecipe(input,
            ChanceItemIngredient.create(outputs[name] * 3, 20, 2),
            null, null, 1.25, 1, 0);
    }
}

// Add the non-standard recipes
RockCrusher.addRecipe(inputs["coal"],
    ChanceItemIngredient.create(outputs["coal"] * 4, 20, 2),
    ChanceItemIngredient.create(outputs["carbon"] * 2, 20, 0),
    null, 1.25, 1, 0
);

RockCrusher.addRecipe(inputs["ilmenite"],
    ChanceItemIngredient.create(outputs["titanium"] * 2, 10, 1),
    ChanceItemIngredient.create(outputs["iron"] * 2, 10, 1),
    null, 1.25, 1, 0
);

/*
RockCrusher.addRecipe(sky_stone,
    ChanceItemIngredient.create(outputs["sky_stone"] * 2, 50, 1),
    null, null
);
*/

RockCrusher.addRecipe(inputs["obsidian"], outputs["obsidian"] * 4,
    //ChanceItemIngredient.create(outputs["obsidian"] * 2, 50, 1),
    null, null, 2, 1, 0
);

RockCrusher.addRecipe(inputs["end_stone"], outputs["end_stone"] * 4,
    //ChanceItemIngredient.create(outputs["end_stone"] * 2, 50, 1),
    null, null, 1.5, 1, 0
);
