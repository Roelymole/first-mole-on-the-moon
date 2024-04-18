#modloaded ironjetpacks galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.removeList;

val jetpacks = [
	<ironjetpacks:tier_1_jetpack>.withTag({display: {LocName: "Tier 1 Jetpack"}}),
	<ironjetpacks:tier_2_jetpack>.withTag({display: {LocName: "Tier 2 Jetpack"}}),
	<ironjetpacks:tier_3_jetpack>.withTag({display: {LocName: "Tier 3 Jetpack"}})
] as IItemStack[];

val plates = [
	<galacticraftcore:heavy_plating>,
	<galacticraftplanets:item_basic_mars:3>,
	<galacticraftplanets:item_basic_asteroids:5>
] as IItemStack[];

val tanks = [
	<galacticraftcore:oxygen_tank_light_full:900>,
	<galacticraftcore:oxygen_tank_med_full:1800>,
	<galacticraftcore:oxygen_tank_heavy_full:2700>
] as IItemStack[];

val thrusters = [
	<galacticraftcore:engine>,
	<galacticraftplanets:item_basic_asteroids:9>,
	<galacticraftplanets:item_basic_asteroids:1>.withTag({display: {LocName: "Tier 3 Rocket Engine"}})
] as IItemStack[];

// Unnamed Thrusters
val unnamed = [
	<galacticraftcore:engine>,
	<galacticraftplanets:item_basic_asteroids:9>,
	<galacticraftplanets:item_basic_asteroids:1>
] as IItemStack[];

val strap = <ironjetpacks:strap>;
val leather = <minecraft:leather>;
val compressed_iron = <galacticraftcore:basic_item:11>;
val button = <minecraft:stone_button>;
val flint_and_steel = <minecraft:flint_and_steel>;
val canister = <galacticraftcore:canister:*>;
val vent = <galacticraftcore:air_vent>;

val hidden = [
	<ironjetpacks:basic_coil>,
	<ironjetpacks:advanced_coil>,
	<ironjetpacks:elite_coil>,
	<ironjetpacks:ultimate_coil>,
	<ironjetpacks:tier_1_cell>,
	<ironjetpacks:tier_2_cell>,
	<ironjetpacks:tier_3_cell>,
	<ironjetpacks:tier_1_capacitor>,
	<ironjetpacks:tier_2_capacitor>,
	<ironjetpacks:tier_3_capacitor>,
	<ironjetpacks:tier_1_thruster>,
	<ironjetpacks:tier_2_thruster>,
	<ironjetpacks:tier_3_thruster>
] as IItemStack[];

// Remove all of the recipes for the Ironjetpacks mod
recipes.removeByMod("ironjetpacks");

// Hide all of the items we do not need
removeList(hidden);

// Re-add the Leather Strap recipe
recipes.addShaped("leather_strap", strap, [[leather, compressed_iron, leather]]);

for i, jetpack in jetpacks {
	recipes.addShaped("tier_" ~ (i + 1) ~ "_jetpack", jetpack,
		[[   plates[i], strap,    plates[i]],
		 [   plates[i], tanks[i], plates[i]],
		 [thrusters[i], null,  thrusters[i]]]);
}

recipes.addHiddenShaped("tier_3_jetpack_alt", jetpacks[2],
	[[ plates[2], strap,    plates[2]],
	 [ plates[2], tanks[2], plates[2]],
	 [unnamed[2], null,    unnamed[2]]]);

for i in 1 to 3 {
	recipes.remove(unnamed[i]);

	recipes.addShapedMirrored("tier_" ~ (i + 1) ~ "_thruster", thrusters[i],
		[[button, flint_and_steel,  null],
		 [plates[i], canister, plates[i]],
		 [plates[i],   vent,   plates[i]]]
	);
}

if (loadedMods has "galacticrafttweaker") {
	val nose_cone = <galacticraftcore:nose_cone>;
	val fin = <galacticraftcore:rocket_fins>;
	val booster = <galacticraftcore:engine:1>;
	val t2_engine = thrusters[1];
	val t2_plate = <galacticraftplanets:item_basic_mars:3>;

	mods.GalacticraftTweaker.removeNASATier2RocketRecipe();
	mods.GalacticraftTweaker.addNASATieredRocketRecipe(2,
		[nose_cone,
		 t2_plate, t2_plate, t2_plate, t2_plate, t2_plate,
		 t2_plate, t2_plate, t2_plate, t2_plate, t2_plate,
		 booster, fin, fin,
		 t2_engine,
		 booster, fin, fin]
	);
}
