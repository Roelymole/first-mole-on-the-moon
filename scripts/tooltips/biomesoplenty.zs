#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

/*
val amethyst = <biomesoplenty:gem>;
val ruby = <biomesoplenty:gem:1>;
val peridot = <biomesoplenty:gem:2>;
val topaz = <biomesoplenty:gem:3>;
val tanzanite = <biomesoplenty:gem:4>;
val malachite = <biomesoplenty:gem:5>;
val sapphire = <biomesoplenty:gem:6>;
val amber = <biomesoplenty:gem:7>;
val emerald = <minecraft:emerald>;
*/

val biome_essence = <biomesoplenty:biome_block>;
val amethyst = <biomesoplenty:gem_ore>;
val ruby = <biomesoplenty:gem_ore:1>;
val peridot = <biomesoplenty:gem_ore:2>;
val topaz = <biomesoplenty:gem_ore:3>;
val tanzanite = <biomesoplenty:gem_ore:4>;
val malachite = <biomesoplenty:gem_ore:5>;
val sapphire = <biomesoplenty:gem_ore:6>;
val amber = <biomesoplenty:gem_ore:7>;
val emerald = <minecraft:emerald_ore>;

val apple = <minecraft:apple>;
val pear = <biomesoplenty:pear>;
val peach = <biomesoplenty:peach>;
val persimmon = <biomesoplenty:persimmon>;

val celestial_crystal = <biomesoplenty:crystal>;

val poison_ivy = <biomesoplenty:plant_0:4>;
val root = <biomesoplenty:plant_1:9>;

biome_essence.addTooltip("Can be found in the End.");
amethyst.addTooltip("Can be found in the End.");

ruby.addTooltip("Can be found in arid biomes.");
ruby.addShiftTooltip(" - Brushland");
ruby.addShiftTooltip(" - Desert");
ruby.addShiftTooltip(" - Lush Desert");
ruby.addShiftTooltip(" - Mesa");
ruby.addShiftTooltip(" - Oasis");
ruby.addShiftTooltip(" - Outback");
ruby.addShiftTooltip(" - Savanna");
ruby.addShiftTooltip(" - Steppe");
ruby.addShiftTooltip(" - Volcanic Island");
ruby.addShiftTooltip(" - Wasteland");
ruby.addShiftTooltip(" - Xeric Shrubland",
    "Press LSHIFT for more info"
);

peridot.addTooltip("Can be found in plains biomes.");
peridot.addShiftTooltip(" - Chaparral");
peridot.addShiftTooltip(" - Flower Field");
peridot.addShiftTooltip(" - Grassland");
peridot.addShiftTooltip(" - Lavender Fields");
peridot.addShiftTooltip(" - Meadow");
peridot.addShiftTooltip(" - Orchard");
peridot.addShiftTooltip(" - Pasture");
peridot.addShiftTooltip(" - Plains");
peridot.addShiftTooltip(" - Prairie");
peridot.addShiftTooltip(" - Shrubland",
    "Press LSHIFT for a full list"
);

topaz.addTooltip("Can be found in lush biomes.");
topaz.addShiftTooltip(" - Bamboo Forest");
topaz.addShiftTooltip(" - Cherry Blossom Grove");
topaz.addShiftTooltip(" - Eucalyptus Forest");
topaz.addShiftTooltip(" - Flower Island");
topaz.addShiftTooltip(" - Jungle");
topaz.addShiftTooltip(" - Mystic Grove");
topaz.addShiftTooltip(" - Rainforest");
topaz.addShiftTooltip(" - Sacred Springs");
topaz.addShiftTooltip(" - Tropical Island");
topaz.addShiftTooltip(" - Tropical Rainforest",
    "Press LSHIFT for a full list"
);

tanzanite.addTooltip("Can be found in cold biomes.");
tanzanite.addShiftTooltip(" - Cold Desert");
tanzanite.addShiftTooltip(" - Dead Forest");
tanzanite.addShiftTooltip(" - Glacier");
tanzanite.addShiftTooltip(" - Maple Woods");
tanzanite.addShiftTooltip(" - Mega Taiga");
tanzanite.addShiftTooltip(" - Snowy Coniferous Forest");
tanzanite.addShiftTooltip(" - Snowy Forest");
tanzanite.addShiftTooltip(" - Snowy Tundra");
tanzanite.addShiftTooltip(" - Tundra");
tanzanite.addShiftTooltip(" - Ice Plains");
tanzanite.addShiftTooltip(" - Taiga",
    "Press LSHIFT for a full list"
);

malachite.addTooltip("Can be found in swamp biomes.");
malachite.addShiftTooltip(" - Bayou");
malachite.addShiftTooltip(" - Bog");
malachite.addShiftTooltip(" - Dead Swamp");
malachite.addShiftTooltip(" - Fen");
malachite.addShiftTooltip(" - Land of Lakes");
malachite.addShiftTooltip(" - Lush Swamp");
malachite.addShiftTooltip(" - Marsh");
malachite.addShiftTooltip(" - Quagmire");
malachite.addShiftTooltip(" - Swampland");
malachite.addShiftTooltip(" - Wetland",
    "Press LSHIFT for a full list"
);

sapphire.addTooltip("Can be found in ocean biomes.");
sapphire.addShiftTooltip(" - Coral Reef");
sapphire.addShiftTooltip(" - Deep Ocean");
sapphire.addShiftTooltip(" - Kelp Forest");
sapphire.addShiftTooltip(" - Ocean",
    "Press LSHIFT for a full list"
);

amber.addTooltip("Can be found in forest biomes.");
amber.addShiftTooltip(" - Birch Forest");
amber.addShiftTooltip(" - Boreal Forest");
amber.addShiftTooltip(" - Coniferous Forest");
amber.addShiftTooltip(" - Forest");
amber.addShiftTooltip(" - Grove");
amber.addShiftTooltip(" - Redwood Forest");
amber.addShiftTooltip(" - Redwood Forest Edge");
amber.addShiftTooltip(" - Roofed Forest");
amber.addShiftTooltip(" - Seasonal Forest");
amber.addShiftTooltip(" - Shield");
amber.addShiftTooltip(" - Temperate Rainforest");
amber.addShiftTooltip(" - Woodland",
    "Press LSHIFT for a full list"
);

emerald.addTooltip("Can be found in mountain biomes.");
emerald.addShiftTooltip(" - Alps");
emerald.addShiftTooltip(" - Alps Foothills");
emerald.addShiftTooltip(" - Crag");
emerald.addShiftTooltip(" - Extreme Hills");
emerald.addShiftTooltip(" - Highland");
emerald.addShiftTooltip(" - Mountain");
emerald.addShiftTooltip(" - Mountain Foothills");
emerald.addShiftTooltip(" - Overgrown Cliffs",
    "Press LSHIFT for a full list"
);

/*
amethyst_ore.addTooltip("Can be found in the End.");
ruby_ore.addTooltip("Can be found in lush biomes.");
peridot_ore.addTooltip("Can be found in plains biomes.");
topaz_ore.addTooltip("Can be found in lush biomes.");
tanzanite_ore.addTooltip("Can be found in cold biomes.");
malachite_ore.addTooltip("Can be found in swamp biomes.");
sapphire_ore.addTooltip("Can be found in ocean biomes.");
amber_ore.addTooltip("Can be found in forest biomes.");
emerald_ore.addTooltip("Can be found in mountain biomes.");
*/

apple.addShiftTooltip("Sometimes dropped by Oak,");
apple.addShiftTooltip("Dark Oak and Origin Leaves.",
    "Press LSHIFT for more info"
);
pear.addShiftTooltip("Sometimes dropped by Orange Autumn,");
pear.addShiftTooltip("Mangrove, Palm and Willow Leaves.",
    "Press LSHIFT for more info"
);
peach.addShiftTooltip("Sometimes dropped by Flowering Oak,");
peach.addShiftTooltip("Jacaranda and Mahonany Leaves.",
    "Press LSHIFT for more info"
);
persimmon.addShiftTooltip("Sometimes dropped by Yellow");
persimmon.addShiftTooltip("Autumn, Maple and Dead Leaves.",
    "Press LSHIFT for more info"
);

celestial_crystal.addTooltip("End Glowstone");

poison_ivy.addShiftTooltip("Can be obtained from breaking Ivy with an axe.");
poison_ivy.addShiftTooltip("Each level of Fortune increases the probability.",
    "Press LSHIFT for more info"
);
root.addShiftTooltip("Can be obtained from breaking crops with a shovel.");
root.addShiftTooltip("Each level of Fortune increases the probability.",
    "Press LSHIFT for more info"
);
