#modloaded biomesoplenty galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.fencepattern;
import scripts.utils.patterns.columns;

val fence = <biomesoplenty:ethereal_fence>;
val gate = <biomesoplenty:ethereal_fence_gate>;
val door = <biomesoplenty:ethereal_door>;
val tin_block = <galacticraftcore:basic_block_core:4>;
val tin_slab = <galacticraftcore:slab_gc_half:1>;

val intake = <biomesoplenty:log_1:4>;
val concrete = <minecraft:concrete:4>;
val lead = <galacticraftplanets:venus:12>;

fencepattern("tin_fence", fence * 3, tin_block, tin_slab);
fencepattern("tin_gate", gate, tin_slab, tin_block);
columns("tin_door", door * 3, tin_block, tin_block);
recipes.addShaped("tb4_intake", intake * 2,
    [[concrete, lead, concrete],
     [concrete, null, concrete],
     [concrete, lead, concrete]]
);
