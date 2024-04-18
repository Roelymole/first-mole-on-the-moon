#modloaded nuclearcraft galacticraftcore galacticraftplanets
#priority 97

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.RockCrusher;

val meteor = <galacticraftcore:fallen_meteor>;
val meteoric_iron_dust = <nuclearcraft:gem_dust:2>;
val volcanic = <galacticraftplanets:venus:2>;
val crystal_binder = <nuclearcraft:compound:1>;
val pumice = <galacticraftplanets:venus:3>;
val sulphur = <nuclearcraft:gem_dust:6>;
val scorched = <galacticraftplanets:venus_rock_scorched>;
val polonium = <nuclearcraft:fission_dust:2>;
val graphite = <nuclearcraft:dust:8>;
val carbon = <galacticraftplanets:carbon_fragments>;

val moon_rock = <galacticraftcore:basic_block_moon:4>;
val moon_soil = <galacticraftcore:basic_block_moon:3>;
val moon_turf = <galacticraftcore:basic_block_moon:5>;
val white_sand = <biomesoplenty:white_sand>;

val mars_cobblestone = <galacticraftplanets:mars:4>;
val mars_stone = <galacticraftplanets:mars:9>;
val mars_regolith = <galacticraftplanets:mars:6>;
val mars_fine_regolith = <galacticraftplanets:mars:5>;
val red_sand = <minecraft:sand:1>;

RockCrusher.addRecipe(mars_stone, mars_cobblestone, null, null, 0.75, 0.5, 0);
RockCrusher.addRecipe(mars_cobblestone, mars_regolith, null, null);
RockCrusher.addRecipe(mars_regolith, mars_fine_regolith, null, null);
RockCrusher.addRecipe(mars_fine_regolith, red_sand, null, null);

RockCrusher.addRecipe(moon_rock, moon_soil, null, null);
RockCrusher.addRecipe(moon_soil, moon_turf, null, null);
RockCrusher.addRecipe(moon_turf, white_sand, null, null);

RockCrusher.addRecipe(meteor,
    ChanceItemIngredient.create(meteoric_iron_dust * 6, 20, 3),
    null, null, 1.25, 1.0, 0.0
);

RockCrusher.addRecipe(volcanic,
    ChanceItemIngredient.create(crystal_binder * 2, 50, 1),
    null, null
);

RockCrusher.addRecipe(pumice,
    ChanceItemIngredient.create(sulphur * 2, 50, 1),
    null, null
);

RockCrusher.addRecipe(scorched,
    ChanceItemIngredient.create(polonium * 2, 50, 1),
    null, null
);

recipes.remove(crystal_binder);
recipes.addShapeless("graphite_dust", graphite, [carbon, carbon, carbon, carbon]);
