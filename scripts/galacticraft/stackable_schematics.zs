#modloaded galacticraftcore galacticraftplanets

import crafttweaker.item.IItemStack;

val schematics = [
    <galacticraftcore:schematic>,
    <galacticraftcore:schematic:1>,
    <galacticraftplanets:schematic>,
    <galacticraftplanets:schematic:1>,
    <galacticraftplanets:schematic:2>
] as IItemStack[];

for schematic in schematics {
    schematic.maxStackSize = 16;
}
