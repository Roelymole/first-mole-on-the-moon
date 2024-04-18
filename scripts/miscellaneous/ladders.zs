#modloaded speedyladders galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.removeList;

val unused = [
    <speedyladders:gold_ladder>,
    <speedyladders:diamond_ladder>,
    <speedyladders:nether_star_ladder>
] as IItemStack[];

val steel_ladder = <speedyladders:stone_ladder>;
val desh_ladder = <speedyladders:iron_ladder>;
val steel_pole = <galacticraftcore:steel_pole>;
val desh_stick = <galacticraftplanets:item_basic_mars:1>;

removeList(unused);

recipes.remove(steel_ladder * 8);
recipes.remove(desh_ladder * 3);

recipes.addShaped("steel_ladder", steel_ladder * 3,
    [[steel_pole, null, steel_pole],
     [steel_pole, steel_pole, steel_pole],
     [steel_pole, null, steel_pole]]
);
recipes.addShaped("desh_ladder", desh_ladder * 3,
    [[desh_stick, null, desh_stick],
     [desh_stick, desh_stick, desh_stick],
     [desh_stick, null, desh_stick]]
);
