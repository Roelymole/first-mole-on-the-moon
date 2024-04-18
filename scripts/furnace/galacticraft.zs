#modloaded galacticraftcore galacticraftplanets
#priority 97

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val iron = <minecraft:iron_ingot>;
val copper = <galacticraftcore:basic_item:3>;
val tin = <galacticraftcore:basic_item:4>;
val aluminium = <galacticraftcore:basic_item:5>;
val silicon = <galacticraftcore:basic_item:2>;
val meteoric_iron = <galacticraftcore:item_basic_moon>;
val desh = <galacticraftplanets:item_basic_mars:2>;
val titanium = <galacticraftplanets:item_basic_asteroids>;
val solar_dust = <galacticraftplanets:basic_item_venus:4>;

val iron_ore = <ore:oreIron>;
val copper_ore = <ore:oreCopper>;
val tin_ore = <ore:oreTin>;
val aluminium_ore = <ore:oreAluminium>;
val silicon_ore = <ore:oreSilicon>;
val raw_meteoric_iron = <galacticraftcore:meteoric_iron_raw>;
val desh_ore = <galacticraftplanets:mars:2>;
val titanium_ore = <galacticraftplanets:asteroids_block:4>;
val solar_ore = <galacticraftplanets:venus:13>;
val unrefined_desh = <galacticraftplanets:item_basic_mars>;
val titanium_shard = <galacticraftplanets:item_basic_asteroids:4>;
val iron_shard = <galacticraftplanets:item_basic_asteroids:3>;
val fragmented_carbon = <galacticraftplanets:carbon_fragments>;
val planks = <ore:plankWood>;

val copper_canister = <galacticraftcore:canister:1>;
val tin_canister = <galacticraftcore:canister>;
val ground_beef = <galacticraftcore:food:6>;
val beef_patty = <galacticraftcore:food:7>;
val cheese = <jmc:cheese>;
val cheese_curd = <galacticraftcore:cheese_curd>;
val cheese_ore = <galacticraftcore:basic_block_moon:2>;
val mars_stone = <galacticraftplanets:mars:9>;
val mars_cobble = <galacticraftplanets:mars:4>;

furnace.remove(copper);
furnace.remove(tin);
furnace.remove(aluminium);
furnace.remove(meteoric_iron);
furnace.remove(desh);
furnace.remove(titanium);
furnace.remove(fragmented_carbon);
furnace.remove(beef_patty);
furnace.remove(cheese_curd);
furnace.remove(mars_stone);

furnace.addRecipe(iron, iron_ore, 0.7);
furnace.addRecipe(iron, iron_shard, 0.7);
furnace.addRecipe(copper, copper_ore, 0.5);
furnace.addRecipe(copper * 3, copper_canister, 0.5);
furnace.addRecipe(tin, tin_ore, 0.35);
furnace.addRecipe(tin * 3, tin_canister, 0.35);
furnace.addRecipe(aluminium, aluminium_ore, 0.7);
furnace.addRecipe(silicon, silicon_ore, 0.2);
furnace.addRecipe(meteoric_iron, raw_meteoric_iron, 0.85);
furnace.addRecipe(desh, desh_ore, 0.85);
furnace.addRecipe(desh, unrefined_desh, 0.85);
furnace.addRecipe(titanium, titanium_ore, 1.0);
furnace.addRecipe(titanium, titanium_shard, 1.0);
furnace.addRecipe(solar_dust, solar_ore, 1.0);
furnace.addRecipe(fragmented_carbon, planks, 0.1);
//furnace.addRecipe(beef_patty, ground_beef, 0.2);
furnace.addRecipe(cheese, cheese_ore, 0.2);
furnace.addRecipe(mars_stone, mars_cobble, 0.2);
