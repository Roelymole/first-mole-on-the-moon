#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val blocks_to_add = {
    "tin_decoration_blocks": [
        <galacticraftcore:basic_block_core:3>,
        <galacticraftcore:basic_block_core:4>
    ],
    "tin_decoration_stairs": [
        <galacticraftcore:tin_stairs_1>,
        <galacticraftcore:tin_stairs_2>
    ],
    "tin_decoration_walls": [
        <galacticraftcore:wall_gc>,
        <galacticraftcore:wall_gc:1>
    ],
    "tin_decoration_slabs": [
        <galacticraftcore:slab_gc_half>,
        <galacticraftcore:slab_gc_half:1>
    ]
} as IItemStack[][string];

for groupName, blocks in blocks_to_add {
    Carving.addGroup(groupName);

    for block in blocks {
        Carving.addVariation(groupName, block);
    }
}
