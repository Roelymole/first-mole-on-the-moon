#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val wanderer = <biomesoplenty:record_wanderer>;
val other_disc = <ore:recordOther>;
other_disc.addAll(<ore:record>);
other_disc.remove(wanderer);

if (loadedMods has "appliedenergistics2") {
    mods.appliedenergistics2.Inscriber.addRecipe(wanderer, other_disc, true, wanderer, null);
} else {
    recipes.addShapeless("record_wanderer", wanderer,
        [wanderer.reuse(), other_disc]
    );
}
