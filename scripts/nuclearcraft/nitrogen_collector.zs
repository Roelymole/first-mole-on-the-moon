#modloaded nuclearcraft galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.surround;

val basic = <nuclearcraft:nitrogen_collector>;
val compact = <nuclearcraft:nitrogen_collector_compact>;
val dense = <nuclearcraft:nitrogen_collector_dense>;
val plating = <nuclearcraft:part:1>;
val beryllium = <nuclearcraft:ingot:9>;
val vent = <galacticraftcore:air_vent>;
val valve = <galacticraftplanets:atmospheric_valve>;
val pipe = <galacticraftcore:fluid_pipe>;
val titanium = <galacticraftplanets:item_basic_asteroids>;

recipes.remove(basic);
recipes.remove(dense);

recipes.addShaped("nitrogen_collector", basic,
    [[plating, vent, plating],
     [beryllium, valve, beryllium],
     [plating, pipe, plating]]
);
surround("dense_nitrogen_collector", dense, compact, titanium);
