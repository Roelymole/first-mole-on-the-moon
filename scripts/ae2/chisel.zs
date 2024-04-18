#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val sky_stone = [
    <appliedenergistics2:smooth_sky_stone_block>,
    <appliedenergistics2:sky_stone_brick>,
    <appliedenergistics2:sky_stone_small_brick>
] as IItemStack[];

val sky_stone_slabs = [
    <appliedenergistics2:smooth_sky_stone_slab>,
    <appliedenergistics2:sky_stone_brick_slab>,
    <appliedenergistics2:sky_stone_small_brick_slab>
] as IItemStack[];

val sky_stone_stairs = [
    <appliedenergistics2:smooth_sky_stone_stairs>,
    <appliedenergistics2:sky_stone_brick_stairs>,
    <appliedenergistics2:sky_stone_small_brick_stairs>
] as IItemStack[];

val quartz_slabs = [
    <appliedenergistics2:quartz_slab>,
    <appliedenergistics2:chiseled_quartz_slab>,
    <appliedenergistics2:quartz_pillar_slab>
] as IItemStack[];

val quartz_stairs = [
    <appliedenergistics2:quartz_stairs>,
    <appliedenergistics2:chiseled_quartz_stairs>,
    <appliedenergistics2:quartz_pillar_stairs>
] as IItemStack[];

Carving.addGroup("sky_stone");
Carving.addGroup("sky_stone_slabs");
Carving.addGroup("sky_stone_stairs");
Carving.addGroup("certus_quartz_slabs");
Carving.addGroup("certus_quartz_stairs");

for block in sky_stone {
    recipes.remove(block);

    Carving.addVariation("sky_stone", block);
}

for slab in sky_stone_slabs {
    Carving.addVariation("sky_stone_slabs", slab);
}

for stair in sky_stone_stairs {
    Carving.addVariation("sky_stone_stairs", stair);
}

for slab in quartz_slabs {
    Carving.addVariation("certus_quartz_slabs", slab);
}

for stair in quartz_stairs {
    Carving.addVariation("certus_quartz_stairs", stair);
}

recipes.remove(<appliedenergistics2:quartz_pillar>);
recipes.remove(<appliedenergistics2:chiseled_quartz_block>);
