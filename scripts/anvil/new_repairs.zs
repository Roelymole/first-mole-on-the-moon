#modloaded vanillaanvilrepair

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.vanillaanvilrepair.addRepairEntry;

val sets = {
    <galacticraftcore:basic_item:10>: [
        <galacticraftcore:standard_wrench>
    ],
    <nuclearcraft:alloy:5>: [
        <galacticraftcore:steel_pickaxe>,
        <galacticraftcore:steel_axe>,
        <galacticraftcore:steel_hoe>,
        <galacticraftcore:steel_shovel>,
        <galacticraftcore:steel_sword>,
        <galacticraftcore:steel_helmet>,
        <galacticraftcore:steel_chestplate>,
        <galacticraftcore:steel_leggings>,
        <galacticraftcore:steel_boots>,
        <galacticraftplanets:grapple>,
        <theoneprobe:iron_helmet_probe>
    ],
    <galacticraftplanets:item_basic_mars:2>: [
        <galacticraftplanets:desh_pick>,
        <galacticraftplanets:desh_axe>,
        <galacticraftplanets:desh_hoe>,
        <galacticraftplanets:desh_spade>,
        <galacticraftplanets:desh_sword>,
        <galacticraftplanets:desh_pick_slime>,
        <theoneprobe:diamond_helmet_probe>
    ],
    <galacticraftplanets:item_basic_asteroids>: [
        <galacticraftplanets:titanium_pickaxe>,
        <galacticraftplanets:titanium_axe>,
        <galacticraftplanets:titanium_hoe>,
        <galacticraftplanets:titanium_shovel>,
        <galacticraftplanets:titanium_sword>,
        <galacticraftplanets:titanium_helmet>,
        <galacticraftplanets:titanium_chestplate>,
        <galacticraftplanets:titanium_leggings>,
        <galacticraftplanets:titanium_boots>,
        <theoneprobe:gold_helmet_probe>
    ],
    <galacticraftcore:basic_item:9>: [
        <nuclearcraft:spaxelhoe_tough>
    ],
    <galacticraftplanets:item_basic_mars:5>: [
        <nuclearcraft:spaxelhoe_hard_carbon>
    ],
    <galacticraftplanets:item_basic_asteroids:6>: [
        <nuclearcraft:spaxelhoe_boron_nitride>
    ],
    <biomesoplenty:gem:3>: [
        <galacticraftplanets:volcanic_pickaxe>
    ],
    <biomesoplenty:gem:5>: [
        <chisel:chisel_diamond>,
        <chisel:chisel_hitech>
    ],
    <galacticraftcore:basic_item:11>: [
        <cfm:item_knife>
    ],
    <appliedenergistics2:material:10>: [
        <appliedenergistics2:certus_quartz_cutting_knife>
    ],
    <appliedenergistics2:material:11>: [
        <appliedenergistics2:nether_quartz_cutting_knife>
    ],
    <galacticraftcore:item_basic_moon>: [
        <tieredmagnets:magnet_durability_stone>
    ]
} as IItemStack[][IItemStack];

val label = {
    <galacticraftcore:basic_item:10>: "Compressed Bronze",
    <minecraft:iron_ingot>: "an Iron Ingot",
    <nuclearcraft:alloy:5>: "a Steel Ingot",
    <galacticraftplanets:item_basic_mars:2>: "a Desh Ingot",
    <galacticraftplanets:item_basic_asteroids>: "a Titanium Ingot",
    <galacticraftcore:basic_item:9>: "Compressed Steel",
    <galacticraftplanets:item_basic_mars:5>: "Compressed Desh",
    <galacticraftplanets:item_basic_asteroids:6>: "Compressed Titanium",
    <biomesoplenty:gem:3>: "Topaz",
    <biomesoplenty:gem:5>: "Malachite",
    <galacticraftcore:basic_item:11>: "Compressed Iron",
    <appliedenergistics2:material:10>: "Certus Quartz",
    <appliedenergistics2:material:11>: "Nether Quartz",
    <galacticraftcore:item_basic_moon>: "a Meteoric Iron Ingot"
} as string[IItemStack];

for material, set in sets {
    for item in set {
        addRepairEntry(item, material);
        item.addTooltip("Can be repaired with " ~ label[material] ~ ".");
    }
}

val desh_armour = [
    <galacticraftplanets:desh_helmet>,
    <galacticraftplanets:desh_chestplate>,
    <galacticraftplanets:desh_leggings>,
    <galacticraftplanets:desh_boots>
] as IItemStack[];

for item in desh_armour {
    item.addTooltip("Can be repaired with a Desh Ingot.");
}
