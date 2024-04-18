#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.alternate;

val empty_frame = <nuclearcraft:part:11>;
val heat_sink_frame = <nuclearcraft:part:14>;
val heavy_water = <forge:bucketfilled>.withTag({FluidName: "heavy_water", Amount: 1000});
val moderator = <nuclearcraft:heavy_water_moderator>;
val cryotheum = <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000});
val cryotheum_heat_sink = <nuclearcraft:solid_fission_sink2:15>;
val prismarine = <minecraft:prismarine:1>;
val shard = <minecraft:prismarine_shard>;
val prismarine_heat_sink = <nuclearcraft:solid_fission_sink:9>;
val obsidian = <minecraft:obsidian>;
val obsidian_dust = <nuclearcraft:gem_dust:3>;
val obsidian_heat_sink = <nuclearcraft:solid_fission_sink:4>;
val red_nether_brick = <minecraft:red_nether_brick>;
val nether_brick = <minecraft:netherbrick>;
val nether_brick_heat_sink = <nuclearcraft:solid_fission_sink:5>;

recipes.remove(prismarine_heat_sink);
recipes.remove(obsidian_heat_sink);
recipes.remove(nether_brick_heat_sink);

recipes.addShapeless("heavy_water_moderator", moderator, [empty_frame, heavy_water]);
recipes.addShapeless("cryotheum_heat_sink", cryotheum_heat_sink, [heat_sink_frame, cryotheum]);
alternate("prismarine_heat_sink", prismarine_heat_sink, shard, prismarine, heat_sink_frame);
alternate("obsidian_heat_sink", obsidian_heat_sink, obsidian_dust, obsidian, heat_sink_frame);
alternate("nether_brick_heat_sink", nether_brick_heat_sink, nether_brick, red_nether_brick, heat_sink_frame);
