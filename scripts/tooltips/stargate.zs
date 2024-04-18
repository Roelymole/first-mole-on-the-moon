#modloaded sgcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val controller = <sgcraft:stargatecontroller>;
val core_crystal = <sgcraft:sgcorecrystal>;
val controller_crystal = <sgcraft:sgcontrollercrystal>;
val pegasus_crystal = <sgcraft:pegasus_upgrade>;
val chevron_upgrade = <sgcraft:sgchevronupgrade>;
val iris = <sgcraft:sgirisupgrade>;
val phase_shifter = <sgcraft:tollan_phase_shift_device>;
val gdo = <sgcraft:gdo>;
val pdd = <sgcraft:pdd>;

controller.addShiftTooltip("Place within 6 blocks of the Stargate Base to connect.");
controller.addShiftTooltip("If a connection is made the button in the centre will turn");
controller.addShiftTooltip("orange (or blue if the Stargate is upgraded to Pegasus).",
    "Press LSHIFT for more info"
);
core_crystal.addShiftTooltip("Can be found in Dungeons on the Moon.",
    "Press LSHIFT for more info");
controller_crystal.addShiftTooltip("Can be found in Dungeons on Mars.",
    "Press LSHIFT for more info"
);
pegasus_crystal.addShiftTooltip("Can be found in Dungeons on Venus.");
pegasus_crystal.addShiftTooltip("Decreases the time it takes a Stargate to dial.");
pegasus_crystal.addShiftTooltip("Shift right-click a Stargate to apply the upgrade.",
    "Press LSHIFT for more info"
);
chevron_upgrade.addShiftTooltip("Allows travel between Stargates in different dimensions.");
chevron_upgrade.addShiftTooltip("Shift right-click a Stargate to apply the upgrade.",
    "Press LSHIFT for more info"
);
iris.addShiftTooltip("Can be closed to protect against transient damage");
iris.addShiftTooltip("when the wormhole opens as well as preventing");
iris.addShiftTooltip("unwanted visitors emerging from the Stargate.");
iris.addShiftTooltip("Shift right-click a Stargate to apply the upgrade.",
    "Press LSHIFT for more info"
);
phase_shifter.addShiftTooltip("Hold in the off-hand to prevent emerging from a");
phase_shifter.addShiftTooltip("Stargate with a closed Iris from being fatal.",
    "Press LSHIFT for more info"
);
gdo.addShiftTooltip("Used to disconnect and control the Iris of nearby Stargates.",
    "Press LSHIFT for more info"
);
pdd.addShiftTooltip("Store a list of Stargates for easier dialling.",
    "Press LSHIFT for more info"
);
