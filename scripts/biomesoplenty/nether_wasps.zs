#modloaded biomesoplenty
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidStack;
import scripts.utils.removeAndHide.removeList;
import scripts.utils.removeAndHide.hideLiquid;

val items = [
	<biomesoplenty:hive>,
	<biomesoplenty:hive:1>,
	<biomesoplenty:hive:2>,
	<biomesoplenty:hive:3>,
	<biomesoplenty:honeycomb>,
	<biomesoplenty:filled_honeycomb>,
	<biomesoplenty:honey_block>,
	<biomesoplenty:jar_filled>,
	<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000}),
	<minecraft:spawn_egg>.withTag({EntityTag: {id: "biomesoplenty:wasp"}})
] as IItemStack[];

removeList(items);
hideLiquid(<liquid:honey> * 1000);

val hive_def = <biomesoplenty:hive>.definition;

for i in 0 to 4 {
	furnace.setFuel(hive_def.makeStack(i), 0);
}
