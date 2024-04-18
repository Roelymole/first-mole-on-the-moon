import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.checkerboard;

val granite = <minecraft:stone:1>;
val diorite = <ore:dioriteAll>;
val netherrack = <minecraft:netherrack>;

recipes.remove(granite);
checkerboard("granite", granite * 2, diorite, netherrack, true);
