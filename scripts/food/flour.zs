#modloaded jmc appliedenergistics2 nuclearcraft
#priority 49

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var flour = <appliedenergistics2:material:4>;
var sugar = <minecraft:sugar>;
var egg = <minecraft:egg>;
var cocoa = <nuclearcraft:cocoa_solids>;
var chocolate = <nuclearcraft:milk_chocolate>;
val wheat = <minecraft:wheat>;
val cake = <minecraft:cake>;
val burger_bun = <galacticraftcore:food:5>;
val cookies = <minecraft:cookie> * 8;

recipes.replaceAllOccurences(wheat, flour, cake);
recipes.replaceAllOccurences(wheat, flour, burger_bun);
recipes.replaceAllOccurences(wheat, flour,
    <*>.only(function (item as IItemStack) {
        return item.definition.owner == "jmc";
    })
);

recipes.remove(cookies);
recipes.addShapeless("cookies", cookies,
    [flour, sugar, egg, chocolate]
);
