#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.fullgrid;

val red_petal = <biomesoplenty:leaves_6:8>;
val yellow_petal = <biomesoplenty:leaves_6:9>;
val stem = <biomesoplenty:log_4:4>;
val poppy = <minecraft:red_flower>;
val dandelion = <minecraft:yellow_flower>;
val grass = <minecraft:tallgrass:1>;

fullgrid("giant_red_flower_petal", red_petal, poppy);
fullgrid("giant_yellow_flower_petal", yellow_petal, dandelion);
fullgrid("giant_stem_block", stem, grass);
