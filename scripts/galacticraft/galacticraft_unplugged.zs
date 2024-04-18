#modloaded galacticraftcore wirelessredstone

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val transmitter = <wirelessredstone:redstone_transmitter>;
val receiver = <wirelessredstone:redstone_receiver>;
val circuit = <wirelessredstone:circuit>;
val freq_tool = <wirelessredstone:frequency_tool>;
val sniffer = <wirelessredstone:sniffer>;
val remote = <wirelessredstone:remote>;

val redstone = <minecraft:redstone>;
val torch = <minecraft:redstone_torch>;
val diamond = <minecraft:diamond>;
val enderpearl = <minecraft:ender_pearl>;
val silicon = <galacticraftcore:basic_item:2>;
val steel = <galacticraftcore:basic_item:9>;
val aluminium = <galacticraftcore:basic_item:8>;

// Make the Wireless Wafer be made using the Circuit Fabricator like the other Wafers
if (loadedMods has "galacticrafttweaker") {
	recipes.remove(circuit * 2);
	mods.GalacticraftTweaker.addCircuitFabricatorRecipe(circuit * 2, diamond, silicon, silicon, redstone, enderpearl);
}

// Remove the old recipes we are replacing
recipes.remove(transmitter);
recipes.remove(receiver);

// Make the crafting recipes for the Transmitter and Receiver similar to the recipes
// for other Galacticraft machines like the Electric Furnace
recipes.addShaped("galacticraft_transmitter", transmitter,
	[[steel, steel, steel],
	 [steel, torch, steel],
	 [aluminium, circuit, aluminium]]);

recipes.addShaped("galacticraft_receiver", receiver,
	[[steel, steel, steel],
	 [steel, redstone, steel],
	 [aluminium, circuit, aluminium]]);

// Change the recipes for the three tools
// Replace iron with compressed steel once the tools have new textures
