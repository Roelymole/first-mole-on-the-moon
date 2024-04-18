#modloaded galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val titanium = <galacticraftplanets:item_basic_asteroids:6>;
val meteoric_iron = <galacticraftcore:item_basic_moon:1>;
val telepad = <galacticraftplanets:telepad_short>;

recipes.replaceAllOccurences(titanium, meteoric_iron, telepad);
