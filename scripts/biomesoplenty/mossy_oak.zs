#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val blocks = {
    <biomesoplenty:log_0:4>: <minecraft:log>,
    <biomesoplenty:planks_0>: <ore:plankOak>,
    <biomesoplenty:sacred_oak_stairs>: <minecraft:oak_stairs>,
    <biomesoplenty:wood_slab_0>: <minecraft:wooden_slab>,
    <biomesoplenty:sacred_oak_fence>: <minecraft:fence>,
    <biomesoplenty:sacred_oak_fence_gate>: <minecraft:fence_gate>,
    <biomesoplenty:sacred_oak_door>: <minecraft:wooden_door>,
    <biomesoplenty:boat_sacred_oak>: <minecraft:boat>,
    <moarsigns:moar_sign>.withTag({SignTexture: "bop/sacred_oak_sign"}):
        <moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"})
} as IIngredient[IItemStack];
val names = {
    <biomesoplenty:log_0:4>: "log",
    <biomesoplenty:planks_0>: "planks",
    <biomesoplenty:sacred_oak_stairs>: "stairs",
    <biomesoplenty:wood_slab_0>: "slab",
    <biomesoplenty:sacred_oak_fence>: "fence",
    <biomesoplenty:sacred_oak_fence_gate>: "gate",
    <biomesoplenty:sacred_oak_door>: "door",
    <biomesoplenty:boat_sacred_oak>: "boat",
    <moarsigns:moar_sign>.withTag({SignTexture: "bop/sacred_oak_sign"}): "sign"
} as string[IItemStack];
val vines = <ore:vines>;

for sacred, oak in blocks {
    recipes.addShapeless("sacred_oak_" ~ names[sacred], sacred, [oak, vines]);
}
