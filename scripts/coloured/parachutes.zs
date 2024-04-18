#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import scripts.utils.recolour.redye;
import scripts.arrays.dyes.colours;
import scripts.arrays.wool.wool;

val strint = <minecraft:string>;
val chutes = <galacticraftcore:parachute:*>;
val parachutes = [
    <galacticraftcore:parachute>,
    <galacticraftcore:parachute:10>,
    <galacticraftcore:parachute:9>,
    <galacticraftcore:parachute:2>,
    <galacticraftcore:parachute:15>,
    <galacticraftcore:parachute:3>,
    <galacticraftcore:parachute:11>,
    <galacticraftcore:parachute:6>,
    <galacticraftcore:parachute:8>,
    <galacticraftcore:parachute:14>,
    <galacticraftcore:parachute:12>,
    <galacticraftcore:parachute:5>,
    <galacticraftcore:parachute:4>,
    <galacticraftcore:parachute:7>,
    <galacticraftcore:parachute:13>,
    <galacticraftcore:parachute:1>
] as IItemStack[];

for i, colour in colours {
    recipes.remove(parachutes[i]);
    recipes.addShaped("parachute_" ~ colour, parachutes[i],
        [[wool[colour], wool[colour], wool[colour]],
         [strint, null, strint],
         [null, strint, null]]
    );

    redye("parachute_redye_" ~ colour, parachutes[i], chutes, colour);
}
