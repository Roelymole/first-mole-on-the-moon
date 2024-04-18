import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val charger = <appliedenergistics2:charger>;
val security = <appliedenergistics2:security_station>;
val interface = <appliedenergistics2:interface>;
val fluid_interface = <appliedenergistics2:fluid_interface>;
val accelerator = <appliedenergistics2:quartz_growth_accelerator>;
val iron = <minecraft:iron_ingot>;
val steel = <nuclearcraft:alloy:5>;
val pole = <galacticraftcore:steel_pole>;
val fluix = <appliedenergistics2:material:7>;
val sapphire = <biomesoplenty:gem:6>;
val amber = <biomesoplenty:gem:7>;
val me_chest = <appliedenergistics2:chest>;
val cable = <appliedenergistics2:part:16>;
val storage_16 = <appliedenergistics2:material:37>;
val engineering = <appliedenergistics2:material:24>;
val annihilation = <appliedenergistics2:material:43>;
val formation = <appliedenergistics2:material:44>;
val manipulator = <galacticraftplanets:item_basic_mars:6>;
val fluix_block = <appliedenergistics2:fluix_block>;
val bars = <ore:ironBars>;

val items = [
    <appliedenergistics2:cell_workbench>,
    <appliedenergistics2:sky_compass>,
    <appliedenergistics2:inscriber>,
    <appliedenergistics2:quantum_ring>,
    <appliedenergistics2:spatial_io_port>,
    <appliedenergistics2:drive>,
    <appliedenergistics2:chest>,
    <appliedenergistics2:io_port>,
    <appliedenergistics2:vibration_chamber>,
    <appliedenergistics2:molecular_assembler>
] as IItemStack[];

for item in items {
    recipes.replaceAllOccurences(iron, steel, item);
}

recipes.replaceAllOccurences(<ore:wool>, sapphire, items[0]);

recipes.remove(charger);
recipes.remove(security);
recipes.remove(interface);
recipes.remove(fluid_interface);
recipes.remove(accelerator);

recipes.addShapedMirrored("charger", charger,
    [[steel, fluix, steel],
     [pole, null, null],
     [steel, fluix, steel]]
);
recipes.addShaped("me_security_terminal", security,
    [[amber, me_chest, amber],
     [cable, storage_16, cable],
     [steel, engineering, steel]]
);
recipes.addShapedMirrored("me_interface", interface,
    [[steel, iron, steel],
     [annihilation, null, formation],
     [steel, iron, steel]]
);
recipes.addShapedMirrored("me_fluid_interface", fluid_interface,
    [[steel, iron, steel],
     [annihilation, manipulator, formation],
     [steel, iron, steel]]
);
recipes.addShapeless("me_fluid_interface_alt", fluid_interface,
    [interface, manipulator]
);
recipes.addShaped("crystal_growth_accelerator", accelerator,
    [[bars, cable, bars],
     [bars, fluix_block, bars],
     [bars, cable, bars]]
);
