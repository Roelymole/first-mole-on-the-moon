#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.FuelReprocessor;
import scripts.utils.removeAndHide.removeList;

val pebbles = [
    <nuclearcraft:fuel_thorium>,
    <nuclearcraft:fuel_uranium>,
    <nuclearcraft:fuel_uranium:4>,
    <nuclearcraft:fuel_uranium:8>,
    <nuclearcraft:fuel_uranium:12>,
    <nuclearcraft:fuel_neptunium>,
    <nuclearcraft:fuel_neptunium:4>,
    <nuclearcraft:fuel_plutonium>,
    <nuclearcraft:fuel_plutonium:4>,
    <nuclearcraft:fuel_plutonium:8>,
    <nuclearcraft:fuel_plutonium:12>,
    <nuclearcraft:fuel_mixed>,
    <nuclearcraft:fuel_mixed:4>,
    <nuclearcraft:fuel_americium>,
    <nuclearcraft:fuel_americium:4>,
    <nuclearcraft:fuel_curium>,
    <nuclearcraft:fuel_curium:4>,
    <nuclearcraft:fuel_curium:8>,
    <nuclearcraft:fuel_curium:12>,
    <nuclearcraft:fuel_curium:16>,
    <nuclearcraft:fuel_curium:20>,
    <nuclearcraft:fuel_berkelium>,
    <nuclearcraft:fuel_berkelium:4>,
    <nuclearcraft:fuel_californium>,
    <nuclearcraft:fuel_californium:4>,
    <nuclearcraft:fuel_californium:8>,
    <nuclearcraft:fuel_californium:12>
] as IItemStack[];

val depleted_pebbles = [
    <nuclearcraft:depleted_fuel_thorium>,
    <nuclearcraft:depleted_fuel_uranium>,
    <nuclearcraft:depleted_fuel_uranium:4>,
    <nuclearcraft:depleted_fuel_uranium:8>,
    <nuclearcraft:depleted_fuel_uranium:12>,
    <nuclearcraft:depleted_fuel_neptunium>,
    <nuclearcraft:depleted_fuel_neptunium:4>,
    <nuclearcraft:depleted_fuel_plutonium>,
    <nuclearcraft:depleted_fuel_plutonium:4>,
    <nuclearcraft:depleted_fuel_plutonium:8>,
    <nuclearcraft:depleted_fuel_plutonium:12>,
    <nuclearcraft:depleted_fuel_mixed>,
    <nuclearcraft:depleted_fuel_mixed:4>,
    <nuclearcraft:depleted_fuel_americium>,
    <nuclearcraft:depleted_fuel_americium:4>,
    <nuclearcraft:depleted_fuel_curium>,
    <nuclearcraft:depleted_fuel_curium:4>,
    <nuclearcraft:depleted_fuel_curium:8>,
    <nuclearcraft:depleted_fuel_curium:12>,
    <nuclearcraft:depleted_fuel_curium:16>,
    <nuclearcraft:depleted_fuel_curium:20>,
    <nuclearcraft:depleted_fuel_berkelium>,
    <nuclearcraft:depleted_fuel_berkelium:4>,
    <nuclearcraft:depleted_fuel_californium>,
    <nuclearcraft:depleted_fuel_californium:4>,
    <nuclearcraft:depleted_fuel_californium:8>,
    <nuclearcraft:depleted_fuel_californium:12>
] as IItemStack[];

removeList(pebbles);
removeList(depleted_pebbles);

for pebble in depleted_pebbles {
    FuelReprocessor.removeRecipeWithInput(pebble * 9);
}
