#modloaded galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val grapple = <galacticraftplanets:grapple>;
val pole = <galacticraftcore:steel_pole>;
val strint = <minecraft:string>;

recipes.remove(grapple);
recipes.addShapedMirrored("grapple", grapple,
    [[strint, null, null],
     [null, strint, pole],
     [null, pole, pole]]
);
