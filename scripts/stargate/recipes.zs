#modloaded sgcraft opencomputers galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.surround;

// Stargate items
val ring = <sgcraft:stargatering>;
val chevron_block = <sgcraft:stargatering:1>;
val base = <sgcraft:stargatebase>;
val controller = <sgcraft:stargatecontroller>;
val power_unit = <sgcraft:sgpowerunit>;
val core_crystal = <sgcraft:sgcorecrystal>;
val controller_crystal = <sgcraft:sgcontrollercrystal>;
val chevron = <contenttweaker:chevron>;
val chevron_upgrade = <sgcraft:sgchevronupgrade>;
val iris = <sgcraft:sgirisupgrade>;
val blade = <sgcraft:sgirisblade>;
val phase_shifter = <sgcraft:tollan_phase_shift_device>;
val gdo = <sgcraft:gdo>;
val pdd = <sgcraft:pdd>;
val interface = <sgcraft:ocinterface>;

// Galacticraft items
val steel = <galacticraftcore:basic_item:9>;
val aluminium = <galacticraftcore:basic_item:8>;
val titanium = <galacticraftplanets:item_basic_asteroids:6>;
val titanium_ingot = <galacticraftplanets:item_basic_asteroids>;
val energy_storage = <galacticraftcore:machine_tiered:8>;
val wire = <galacticraftcore:aluminum_wire:1>;
val advanced_wafer = <galacticraftcore:basic_item:14>;
val wireless_wafer = <wirelessredstone:circuit>;
val atomic_battery = <galacticraftplanets:atomic_battery>;

// Dusts + Totem
val redstone = <minecraft:redstone>;
val glowstone = <minecraft:glowstone_dust>;
val ender_dust = <appliedenergistics2:material:8>;
val fluix_dust = <appliedenergistics2:material:46>;
val totem = <minecraft:totem_of_undying>;

// OpenComputers items
val button = <minecraft:stone_button>;
val keypad = <opencomputers:material:16>;
val tier_2_screen = <opencomputers:screen2>;
val tier_3_screen = <opencomputers:screen3>;
val cable = <opencomputers:cable>;
val chip = <opencomputers:material:7>;
val pcb = <opencomputers:material:4>;

surround("sg_ring", ring, titanium_ingot, null);
surround("sg_chevron_block", chevron_block, titanium_ingot, chevron);
surround("sg_base", base, titanium_ingot, core_crystal);
recipes.addShaped("sg_controller", controller,
    [[keypad, keypad, keypad],
     [titanium, controller_crystal, titanium],
     [titanium, wireless_wafer, titanium]]
);
recipes.addShaped("sg_power_unit", power_unit,
    [[steel, steel, steel],
     [steel, energy_storage, steel],
     [wire, advanced_wafer, wire]]
);
recipes.addShaped("sg_chevron", chevron,
    [[redstone, glowstone, redstone],
     [titanium_ingot, redstone, titanium_ingot],
     [null, titanium_ingot, null]]
);
recipes.addShapeless("sg_chevron_upgrade", chevron_upgrade, [chevron, chevron]);
surround("sg_iris", iris, blade, null);
recipes.addShapedMirrored("sg_iris_blade", blade,
    [[null, aluminium, aluminium],
     [aluminium, aluminium, null],
     [titanium, null, null]]
);
recipes.addHiddenShaped("sg_iris_blade_alt", blade,
    [[null, aluminium, aluminium],
     [aluminium, aluminium, null],
     [titanium, null, null]],
    null, null, true
);
recipes.addShapedMirrored("sg_tollan_phase_shift_device", phase_shifter,
    [[aluminium, fluix_dust, aluminium],
     [ender_dust, totem, ender_dust],
     [aluminium, fluix_dust, aluminium]]
);
recipes.addShapedMirrored("sg_pdd", pdd,
    [[titanium, controller_crystal, titanium],
     [atomic_battery, tier_3_screen, wireless_wafer],
     [titanium, button, titanium]]
);
recipes.addShapedMirrored("sg_gdo", gdo,
    [[aluminium, wireless_wafer, aluminium],
     [atomic_battery, keypad, tier_2_screen],
     [aluminium, aluminium, aluminium]]
);
recipes.addShaped("sg_oc_interface", interface,
    [[titanium_ingot, controller_crystal, titanium_ingot],
     [cable, chip, cable],
     [titanium_ingot, pcb, titanium_ingot]]
);

phase_shifter.maxStackSize = 1;
