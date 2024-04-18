#modloaded galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val torch = <galacticraftcore:glowstone_torch>;
val web_string = <galacticraftplanets:web_torch>;
val web_torch = <galacticraftplanets:web_torch:1>;

recipes.addShapeless("web_torch", web_torch, [torch, web_string]);
