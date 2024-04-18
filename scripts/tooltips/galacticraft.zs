#modloaded galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val platform = <galacticraftcore:platform>;
val collector = <galacticraftcore:collector>;
val valve = <galacticraftplanets:atmospheric_valve>;
val radioisotope_core = <galacticraftplanets:basic_item_venus:2>;
val geothermal_generator = <galacticraftplanets:geothermal_generator>;

platform.addShiftTooltip("Platforms must not be more than");
platform.addShiftTooltip("16 blocks apart, vertically.");

collector.removeTooltip("store");
collector.removeTooltip("leaves");
collector.removeTooltip("area");
collector.addShiftTooltip("Collects oxygen from crops and");
collector.addShiftTooltip("leaves in an 11x11x11 cube");
collector.addShiftTooltip("centred on the Oxygen Collector.");

valve.addShiftTooltip("Can be used to collect gases from");
valve.addShiftTooltip("the atmosphere and also discharge");
valve.addShiftTooltip("gases into the atmosphere.",
    "Press LSHIFT for more info."
);

radioisotope_core.addTooltip("Can be obtained by breaking a Crashed Probe.");

geothermal_generator.removeTooltip("When");
geothermal_generator.removeTooltip("sulphur");
geothermal_generator.removeTooltip("generates");
geothermal_generator.removeTooltip("oscillating");

geothermal_generator.addShiftTooltip("Generates energy at an oscillating rate");
geothermal_generator.addShiftTooltip("when placed on a valid Vapour Spout.");
geothermal_generator.addShiftTooltip("A Vapour Spout is considered valid");
geothermal_generator.addShiftTooltip("if there is Sulphuric Acid below it.",
    "Press LSHIFT for more info"
);
