#modloaded chisel nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.chisel.Carving;
import mods.nuclearcraft.Infuser;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.surround;

val double_slab = <chisel:stonebrick2:9>;
val cracked = <chisel:stonebrick>;
val pink = <minecraft:dye:9>;
val grey = <minecraft:dye:8>;
val blaze = <minecraft:blaze_powder>;
val lab = <chisel:laboratory:2> | <chisel:laboratory:5>;
val skull = <minecraft:skull:*>;
val sodium = <liquid:sodium> * 100;

val pink_stone = <chisel:valentines>;
val pink_heart = <chisel:valentines:2>;
val pink_rock = <chisel:valentines:3>;
val grey_rock = <chisel:valentines:1>;
val flame = <chisel:valentines:7>;
val panel = <chisel:valentines:4> | <chisel:valentines:8>;
val companion_cube = <chisel:valentines:9>;
val other_pink = [
    <chisel:valentines:2>,
    <chisel:valentines:4>,
    <chisel:valentines:5>,
    <chisel:valentines:6>,
    <chisel:valentines:7>,
    <chisel:valentines:8>
] as IItemStack[];

Carving.removeVariation("valentines", pink_stone);
Carving.removeVariation("valentines", pink_heart);
Carving.addVariation("valentines", pink_heart);
Carving.removeVariation("valentines", pink_rock);
Carving.removeVariation("valentines", grey_rock);
Carving.removeVariation("valentines", flame);
Carving.removeVariation("valentines", companion_cube);

recipes.remove(pink_stone * 4);
recipes.remove(companion_cube * 32);
recipes.addShapeless("valentines_pink_stone", pink_stone, [double_slab, pink]);
recipes.addShapeless("valentines_pink_rocky", pink_rock, [cracked, pink]);
recipes.addShapeless("valentines_grey_rocky", grey_rock, [cracked, grey]);
surround("valentines_flame", flame * 8, panel, blaze);
alternate("companion_cube", companion_cube * 4, lab, pink, skull);

Infuser.addRecipe(pink_rock, sodium, other_pink[0]);
Infuser.addRecipe(grey_rock, sodium, other_pink[0]);
Infuser.addRecipe(double_slab, sodium, other_pink[1]);
Infuser.addRecipe(cracked, sodium, other_pink[2]);
