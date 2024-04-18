import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val woolly = [
	<minecraft:painting>,
	<buildcraftcore:paintbrush:64>,
	<galacticraftcore:aluminum_wire>,
	<galacticraftplanets:item_basic_asteroids:7>,
	<chisel:cloud>,
	<davincisvessels:seat>,
	<davincisvessels:floater>
] as IItemStack[];

for item in woolly {
	recipes.replaceAllOccurences(<minecraft:wool:*>, <ore:wool>, item);
}
