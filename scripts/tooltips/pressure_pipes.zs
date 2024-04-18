#modloaded pressure

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

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

pipe.addShiftTooltip("Can transfer fluids at an unlimited rate.",
    "Press LSHIFT for more info"
);
valve.addShiftTooltip("Applying a Redstone signal prevents fluid from flowing.",
    "Press LSHIFT for more info"
);
sensor.addShiftTooltip("Emits a Redstone signal when fluid is flowing through.",
    "Press LSHIFT for more info"
);
pump.addShiftTooltip("Applying a Redstone signal transfers fluid");
pump.addShiftTooltip("from one side of the Pump to the other.",
    "Press LSHIFT for more info"
);
input.addShiftTooltip("Inserts fluid into High-Pressure Pipes.",
    "Press LSHIFT for more info"
);
output.addShiftTooltip("Extracts fluid from High-Pressure Pipes.",
    "Press LSHIFT for more info"
);
drain.addShiftTooltip("Places fluid from High-Pressure Pipes in the world.",
    "Press LSHIFT for more info"
);
sluice.addShiftTooltip("Places fluid from High-Pressure Pipes in the world.");
sluice.addShiftTooltip("Will only place fluid if the Sluice pointing into an Air block.",
    "Press LSHIFT for more info"
);
router.addShiftTooltip("Filter and sort fluids in a High-Pressure Pipe network.",
    "Press LSHIFT for more info"
);

controller.addShiftTooltip("The brain of a Tank. Required to form the Tank multiblock.",
    "Press LSHIFT for more info"
);
tank.addShiftTooltip("Adds 32 buckets to the capacity of a Tank.",
    "Press LSHIFT for more info"
);
indicator.addShiftTooltip("Gives a visual indication of how much fluid is in a Tank.");
indicator.addShiftTooltip("Also adds 32 buckets to the capacity of a Tank.",
    "Press LSHIFT for more info"
);
tank_output.addShiftTooltip("Allows fluid to be removed from a Tank.");
tank_output.addShiftTooltip("Requires something to pull the fluid.",
    "Press LSHIFT for more info"
);
tank_output_powered.addShiftTooltip("Actively pushes fluid into adjacent Pipes and fluid containers.",
    "Press LSHIFT for more info"
);
tank_input.addShiftTooltip("Accepts fluid from Pipes.",
    "Press LSHIFT for more info"
);
tank_access.addShiftTooltip("Acts as both a Tank Input and a Tank Output.",
    "Press LSHIFT for more info"
);
pressure_output.addShiftTooltip("Actively pushes fluid into adjacent High-Pressure Pipes.",
    "Press LSHIFT for more info"
);
pressure_input.addShiftTooltip("Accepts fluid from High-Pressure Pipes.",
    "Press LSHIFT for more info"
);
interface.addShiftTooltip("Allows the draining and filling of containers (e.g. Buckets).");
interface.addShiftTooltip("Containers can be inserted and removed using Pipes and Hoppers.",
    "Press LSHIFT for more info"
);
filter.addShiftTooltip("Shows the current filter setting of a Tank.");
filter.addShiftTooltip("Can be configured by right-clicking with a Configurator.",
    "Press LSHIFT for more info"
);
tank_sensor.addShiftTooltip("Can check for different conditions and output.");
tank_sensor.addShiftTooltip("a Redstone signal when the conditions are met.",
    "Press LSHIFT for more info"
);
data_port.addShiftTooltip("Interface with a Tank using OpenComputers.",
    "Press LSHIFT for more info"
);
