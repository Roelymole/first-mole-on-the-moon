import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val magnet = <tieredmagnets:magnet_durability_stone>.withTag({filterModeBlacklist: 1 as byte, range: 5, enabled: 0 as byte});
val meteoric = <galacticraftcore:item_basic_moon>;

val electromagnet = <tieredmagnets:magnet_energy_leadstone>.withTag({filterModeBlacklist: 1 as byte, range: 5, enabled: 0 as byte});
val advanced = <tieredmagnets:magnet_energy_hardened>.withTag({filterModeBlacklist: 1 as byte, range: 10, enabled: 0 as byte});
val lever = <minecraft:lever>;
val wire = <galacticraftcore:aluminum_wire>;
val heavy_wire = <galacticraftcore:aluminum_wire:1>;
val battery = <galacticraftcore:battery:100>.withTag({});
val lithium = <nuclearcraft:lithium_ion_cell>.withTag({energyStorage: {energy: 0 as long, capacity: 8000000 as long}});
val solid_meteoric = <galacticraftcore:basic_block_core:12>;
val aluminium = <galacticraftcore:basic_item:8>;
val titanium = <galacticraftplanets:item_basic_asteroids:6>;

val insulator = <tieredmagnets:magnetic_insulator>;
val projector = <tieredmagnets:magnetic_projector>;
val end_rod = <minecraft:end_rod>;
val steel_pole = <galacticraftcore:steel_pole>;
val blue_wire = <buildcrafttransport:wire:11>;
val yellow_wire = <buildcrafttransport:wire:4>;
val basic_wafer = <galacticraftcore:basic_item:13>;
val advanced_wafer = <galacticraftcore:basic_item:14>;
val titanium_ingot = <galacticraftplanets:item_basic_asteroids>;
val tin = <galacticraftcore:basic_item:4>;
val glass = <ore:paneGlassColorless>;
val hopper = <minecraft:hopper>;

recipes.removeByMod("tieredmagnets");

recipes.addShaped("magnet", magnet,
    [[<ore:blockRedstone>, null, <ore:blockLapis>],
     [meteoric, null, meteoric],
     [meteoric, meteoric, meteoric]]
);

recipes.addShaped("electromagnet", electromagnet,
    [[lever, wire, wire],
     [battery, null, solid_meteoric],
     [aluminium, wire, wire]]
);
recipes.addShaped("advanced_electromagnet", advanced,
    [[lever, heavy_wire, heavy_wire],
     [lithium, null, solid_meteoric],
     [titanium, heavy_wire, heavy_wire]]
);

recipes.addShaped("insulator", insulator,
    [[titanium_ingot, end_rod, titanium_ingot],
     [blue_wire, steel_pole, yellow_wire],
     [titanium, basic_wafer, titanium]]
);
recipes.addShaped("projector", projector,
    [[tin, glass, tin],
     [titanium, advanced_wafer, titanium],
     [titanium, hopper, titanium]]
);
