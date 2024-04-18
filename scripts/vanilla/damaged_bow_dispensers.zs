import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val dispenser = <minecraft:dispenser>;
val cobble = <ore:cobblestone>;
val redstone = <minecraft:redstone>;
val bow = <minecraft:bow>.anyDamage();

// Allow dispensers to be crafted using a damaged bow
recipes.remove(dispenser);
recipes.addShaped("damaged_bow_dispenser", dispenser,
	[[cobble, cobble, cobble],
	 [cobble, bow, cobble],
	 [cobble, redstone, cobble]]
);
