import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val stew = [
    <minecraft:mushroom_stew>,
    <minecraft:rabbit_stew>,
    <minecraft:beetroot_soup>
] as IItemStack[];

for item in stew {
    item.maxStackSize = 16;
}

if (loadedMods has "biomesoplenty") {
    <biomesoplenty:ricebowl>.maxStackSize = 16;
}
