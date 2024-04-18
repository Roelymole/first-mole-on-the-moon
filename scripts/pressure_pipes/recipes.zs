#modloaded pressure galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.rows;

val pipe = <pressure:pipe>;
val valve = <pressure:check_valve>;
val sensor = <pressure:pipe_sensor>;
val pump = <pressure:pump>;
val input = <pressure:input>;
val output = <pressure:output>;
val drain = <pressure:drain>;
val sluice = <pressure:sluice>;
val router = <pressure:router>;

val controller = <pressure:tank_controller>;
val tank = <pressure:tank_block>;
val indicator = <pressure:tank_indicator>;
val tank_output = <pressure:tank_fluid_output>;
val tank_output_powered = <pressure:tank_fluid_output_auto>;
val tank_input = <pressure:tank_fluid_input>;
val tank_access = <pressure:tank_fluid_access>;
val pressure_output = <pressure:tank_pressure_output>;
val pressure_input = <pressure:tank_pressure_input>;
val interface = <pressure:tank_interface>;
val filter = <pressure:tank_filter>;
val tank_sensor = <pressure:tank_sensor>;
val data_port = <pressure:tank_data_port>;

val configurator = <pressure:configurator>;
val wrench = <buildcraftcore:wrench>;
val fluid_manipulator = <galacticraftplanets:item_basic_mars:6>;
val hand_pump = <pressure:hand_pump>;
val canister = <pressure:canister>;

val steel_ingot = <nuclearcraft:alloy:5>;
val steel = <galacticraftcore:basic_item:9>;
val aluminium = <galacticraftcore:basic_item:8>;
val tin = <galacticraftcore:basic_item:7>;
val repeater = <minecraft:repeater>;
val comparator = <minecraft:comparator>;
val motor = <nuclearcraft:part:8>;
val iron_bars = <ore:ironBars>;
val basic_wafer = <galacticraftcore:basic_item:13>;
val vacuum_glass = <galacticraftcore:space_glass_strong>;
val hopper = <minecraft:hopper>;
val wooden_pipe = <buildcrafttransport:pipe_wood_fluid>;
val iron_pipe = <buildcrafttransport:pipe_iron_fluid>;
val cable = <opencomputers:cable>;
val chip = <opencomputers:material:7>;
val pcb = <opencomputers:material:4>;
val stick = <ore:stickWood>;

// Remove all recipes for the Pressure Pipes mod
recipes.removeByMod("pressure");

rows("pressure_pipe", pipe * 3, steel, null, steel);
recipes.addShapeless("pressure_valve", valve, [pipe, repeater]);
recipes.addShapeless("pressure_sensor", sensor, [pipe, comparator]);
recipes.addShaped("pressure_pump", pump,
    [[steel, steel, steel],
     [pipe, motor, pipe],
     [steel, steel, steel]]
);
recipes.addShapedMirrored("pressure_input", input,
    [[steel, steel, steel],
     [iron_pipe, null, pipe],
     [steel, steel, steel]]
);
recipes.addShapedMirrored("pressure_output", output,
    [[steel, steel, steel],
     [pipe, null, wooden_pipe],
     [steel, steel, steel]]
);
recipes.addShapedMirrored("pressure_drain", drain,
    [[steel, steel, iron_bars],
     [pipe, null, iron_bars],
     [steel, steel, iron_bars]]
);
recipes.addShapedMirrored("pressure_sluice", sluice,
    [[steel, steel, steel],
     [pipe, null, iron_bars],
     [steel, steel, steel]]
);
alternate("pressure_router", router, steel, pipe);

surround("tank_controller", controller, aluminium, basic_wafer);
surround("pressure_tank", tank * 2, aluminium, null);
recipes.addShaped("tank_indicator", indicator * 2,
    [[aluminium, aluminium, aluminium],
     [vacuum_glass, null, vacuum_glass],
     [aluminium, aluminium, aluminium]]
);
recipes.addShapedMirrored("tank_fluid_output", tank_output,
    [[aluminium, aluminium, aluminium],
     [aluminium, null, wooden_pipe],
     [aluminium, aluminium, aluminium]]
);
recipes.addShapedMirrored("tank_powered_output", tank_output_powered,
    [[aluminium, aluminium, aluminium],
     [aluminium, motor, wooden_pipe],
     [aluminium, aluminium, aluminium]]
);
recipes.addShapedMirrored("tank_fluid_input", tank_input,
    [[aluminium, aluminium, aluminium],
     [iron_pipe, null, aluminium],
     [aluminium, aluminium, aluminium]]
);
recipes.addShapedMirrored("tank_access", tank_access,
    [[aluminium, aluminium, aluminium],
     [iron_pipe, null, wooden_pipe],
     [aluminium, aluminium, aluminium]]
);
recipes.addShapedMirrored("tank_pressurised_output", pressure_output,
    [[aluminium, aluminium, aluminium],
     [aluminium, motor, pipe],
     [aluminium, aluminium, aluminium]]
);
recipes.addShapedMirrored("tank_pressurised_input", pressure_input,
    [[aluminium, aluminium, aluminium],
     [pipe, null, aluminium],
     [aluminium, aluminium, aluminium]]
);
recipes.addShaped("tank_interface", interface,
    [[aluminium, hopper, aluminium],
     [aluminium, null, aluminium],
     [aluminium, hopper, aluminium]]
);
alternate("tank_filter", filter, aluminium, vacuum_glass);
recipes.addShapeless("tank_sensor", tank_sensor, [tank, comparator]);
recipes.addShaped("tank_data_port", data_port,
    [[aluminium, cable, aluminium],
     [cable, chip, cable],
     [aluminium, pcb, aluminium]]
);

recipes.addShapeless("configurator", configurator, [wrench, fluid_manipulator]);
recipes.addShapedMirrored("hand_pump", hand_pump,
    [[null, null, tin],
     [motor, tin, null],
     [stick, null, null]]
);
recipes.addShapedMirrored("canister", canister,
    [[steel_ingot, steel_ingot, steel],
     [steel, null, steel],
     [steel, steel, steel]]
);

configurator.maxStackSize = 1;
