#modloaded nuclearcraft galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val replacements = {
    <galacticraftcore:item_basic_moon>: [
        <nuclearcraft:part:1>,
        <nuclearcraft:part:10>,
        <nuclearcraft:ingot_former>
    ],
    <galacticraftplanets:item_basic_mars:2>: [
        <nuclearcraft:nuclear_furnace>,
        <nuclearcraft:fuel_reprocessor>,
        <nuclearcraft:rock_crusher>
    ]
} as IItemStack[][IItemStack];

val tough_alloy = <nuclearcraft:alloy:1>;

for ingot, items in replacements {
    for item in items {
        recipes.replaceAllOccurences(tough_alloy, ingot, item);
    }
}
