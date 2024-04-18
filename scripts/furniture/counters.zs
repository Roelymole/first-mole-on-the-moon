#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.tablepattern;
import scripts.utils.patterns.cupboardpattern;

val counter = <cfm:counter>.definition;
val sink = <cfm:counter_sink>.definition;
val drawer = <cfm:counter_drawer>.definition;
val cabinet = <cfm:cabinet_kitchen>.definition;
val modern_sofa = <cfm:modern_couch>.definition;
val bar_stool = <cfm:bar_stool>.definition;

val terracotta = [
    <minecraft:stained_hardened_clay>,
    <minecraft:stained_hardened_clay:1>,
    <minecraft:stained_hardened_clay:2>,
    <minecraft:stained_hardened_clay:3>,
    <minecraft:stained_hardened_clay:4>,
    <minecraft:stained_hardened_clay:5>,
    <minecraft:stained_hardened_clay:6>,
    <minecraft:concrete:7>,
    <minecraft:stained_hardened_clay:8>,
    <minecraft:stained_hardened_clay:9>,
    <minecraft:stained_hardened_clay:10>,
    <minecraft:stained_hardened_clay:11>,
    <minecraft:stained_hardened_clay:12>,
    <minecraft:stained_hardened_clay:13>,
    <minecraft:stained_hardened_clay:14>,
    <minecraft:concrete:15>
] as IItemStack[];

val white = <minecraft:concrete>;
val basin = <cfm:basin>;
val chest = <minecraft:chest>;
val steel = <galacticraftcore:basic_item:9>;
val steel_ingot = <nuclearcraft:alloy:5>;
val pole = <galacticraftcore:steel_pole>;

for i in 0 to 16 {
    tablepattern("counter_" ~ i, counter.makeStack(i), terracotta[i], white, white);
    tablepattern("sink_" ~ i, sink.makeStack(i), terracotta[i], white, white, basin);
    tablepattern("drawer_" ~ i, drawer.makeStack(i), terracotta[i], white, chest);
    cupboardpattern("cabinet_" ~ i, cabinet.makeStack(i), terracotta[i], white);
    recipes.addShapedMirrored("modern_sofa_" ~ i, modern_sofa.makeStack(i),
        [[terracotta[i],  steel_ingot,   steel_ingot ],
         [terracotta[i], terracotta[i], terracotta[i]],
         [ steel_ingot,   steel_ingot,   steel_ingot ]]
    );
    recipes.addShapedMirrored("bar_stool_" ~ i, bar_stool.makeStack(i),
        [[steel, terracotta[i], steel],
         [pole,   steel_ingot,   pole],
         [pole,      null,       pole]]
    );
}
