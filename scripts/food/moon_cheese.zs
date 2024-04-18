#modloaded jmc galacticraftcore appliedenergistics2
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.cakerecipe;

val cheese = <jmc:cheese>;
val cheese_curd = <galacticraftcore:cheese_curd>;
val cheese_block = <galacticraftcore:cheese>;
val carrot_cake = <jmc:carrot_cake>;
val carrot = <minecraft:carrot>;
val milk = <minecraft:milk_bucket>;
val sugar = <minecraft:sugar>;
val egg = <minecraft:egg>;
val flour = <appliedenergistics2:material:4>;

cheese.maxStackSize = 64;
cheese_block.maxStackSize = 64;

recipes.remove(cheese);
recipes.remove(carrot_cake);
recipes.replaceAllOccurences(cheese, cheese_curd);

recipes.addShapedMirrored("cheese", cheese,
	[[null, cheese_curd],
	 [cheese_curd, cheese_curd]]
);
cakerecipe("carrot_cake", carrot_cake, cheese_curd | milk, sugar | egg, flour | carrot);
