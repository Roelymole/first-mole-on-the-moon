#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.replaceAllOccurences(<minecraft:stick>, <ore:stickWood>,
    <*>.only(function(item) {
        return !isNull(item) & item.definition.owner == "biomesoplenty";
    })
);
