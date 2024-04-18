#modloaded galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.plus;
import scripts.utils.patterns.surround;

val vent = <galacticraftcore:air_vent>;
val emergency = <galacticraftcore:emergency_box>;
val applicator = <galacticraftcore:machine3>;
val beam_core = <galacticraftplanets:item_basic_asteroids:8>;
val platforms = <galacticraftcore:platform> * 4;
val grating = <galacticraftcore:grating>;
val steel = <nuclearcraft:alloy:5>;
val tin = <galacticraftcore:basic_item:7>;
val red = <minecraft:dye:1>;
val iron = <galacticraftcore:basic_item:11>;
val glass = <ore:paneGlassColorless>;
val redstone = <minecraft:redstone>;
val sealant = <buildcrafttransport:waterproof>;
val stripes = <chisel:factory:6>;
val compressed = <galacticraftcore:basic_item:9>;
val piston = <minecraft:piston>;
val wafer = <galacticraftcore:basic_item:13>;

var colour = <biomesoplenty:terrestrial_artifact>;
if (loadedMods has "bdsandm") {
    colour = <bdsandm:color_tool>;
}

recipes.remove(vent);
recipes.remove(emergency);
recipes.remove(applicator);
recipes.remove(beam_core);
recipes.remove(platforms);

plus("air_vent", vent * 2, grating, steel);
plus("emergency_box", emergency, tin, red);
surround("chromatic_applicator", applicator, steel, colour);
recipes.addShapedMirrored("beam_core", beam_core,
    [[redstone, iron, sealant],
     [iron,    glass,    iron],
     [redstone, iron, sealant]]
);
recipes.addHiddenShaped("beam_core_alt", beam_core,
    [[sealant,  iron,  sealant],
     [iron,    glass,     iron],
     [redstone, iron, redstone]]
);
recipes.addHiddenShaped("beam_core_alt2", beam_core,
    [[redstone, iron, redstone],
     [iron,    glass,     iron],
     [sealant,  iron,  sealant]]
);
recipes.addShaped("hydraulic_platform", platforms,
    [[stripes,  compressed,  stripes],
     [compressed, piston, compressed],
     [compressed,  wafer, compressed]]
);
