#modloaded chargers galacticraftcore galacticraftplanets wirelessredstone

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val chargers = [
    <chargers:charger>, //.withTag({Energy: 25000})
    <chargers:charger:1>, //.withTag({Energy: 500000})
    <chargers:charger:2>, //.withTag({Energy: 1000000})
    <chargers:wireless_charger>, //.withTag({Energy: 200000})
] as IItemStack[];

val compressed = [
    <galacticraftcore:basic_item:9>,
    <galacticraftcore:item_basic_moon:1>,
    <galacticraftplanets:item_basic_mars:5>,
    <galacticraftplanets:item_basic_asteroids:6>
] as IItemStack[];

val circuits = [
    <galacticraftcore:basic_item:13>,
    <galacticraftcore:basic_item:14>,
    <galacticraftcore:basic_item:14>,
    <wirelessredstone:circuit>
] as IItemStack[];

val wires = [
    <galacticraftcore:aluminum_wire>,
    <galacticraftcore:aluminum_wire:1>,
    <galacticraftcore:aluminum_wire:1>,
    <galacticraftcore:aluminum_wire>
] as IItemStack[];

val energy_storage = [
    <galacticraftcore:battery:100>.withTag({}),
    <galacticraftcore:machine_tiered>,
    <galacticraftcore:machine_tiered:8>,
    <galacticraftcore:machine_tiered>
] as IItemStack[];

recipes.removeByMod("chargers");

for i, charger in chargers {
    recipes.addShaped("tier_" ~ (i + 1) ~ "_charger", charger,
        [[compressed[i],     compressed[i], compressed[i]],
         [compressed[i], energy_storage[i], compressed[i]],
         [     wires[i],       circuits[i],      wires[i]]]
    );
}
