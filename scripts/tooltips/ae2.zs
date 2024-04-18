#modloaded appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val inscriber = <appliedenergistics2:inscriber>;
val accelerator = <appliedenergistics2:quartz_growth_accelerator>;
val energy_acceptor = <appliedenergistics2:energy_acceptor>;
val vibration_chamber = <appliedenergistics2:vibration_chamber>;
val name_press = <appliedenergistics2:material:21>;
val quantum_entangled_singularity = <appliedenergistics2:material:48>;

inscriber.addShiftTooltip("The Inscriber is used to press items");
inscriber.addShiftTooltip("using various Inscriber Plates.");
inscriber.addShiftTooltip("Top Input: Automated from the");
inscriber.addShiftTooltip("side with the top press.");
inscriber.addShiftTooltip("Centre Input: Automated from");
inscriber.addShiftTooltip("any side without a press.");
inscriber.addShiftTooltip("Bottom Input: Automated from the");
inscriber.addShiftTooltip("side with the bottom press.");
inscriber.addShiftTooltip("Output: Automated from any");
inscriber.addShiftTooltip("side without a press.",
	"Press LSHIFT for more info"
);

accelerator.addShiftTooltip("Used to accelerate the process of");
accelerator.addShiftTooltip("purifying crystals. Must be powered");
accelerator.addShiftTooltip("from an ME Network via the top or");
accelerator.addShiftTooltip("the bottom. Crystal seeds must be in");
accelerator.addShiftTooltip("an adjacent water block to be affected.",
	"Press LSHIFT for more info"
);

energy_acceptor.addShiftTooltip("Used to convert power from other");
energy_acceptor.addShiftTooltip("mods to power an ME Network.",
	"Press LSHIFT for more info"
);

vibration_chamber.addTooltip("Power an ME Network using Furnace Fuel.");

name_press.addShiftTooltip("Craft by right clicking a cutting knife,");
name_press.addShiftTooltip("inserting an iron ingot and typing in");
name_press.addShiftTooltip("the desired name.",
	"Press LSHIFT for more info"
);

quantum_entangled_singularity.addShiftTooltip("Create a pair of Quantum Entangled");
quantum_entangled_singularity.addShiftTooltip("Singularities by exploding a Singularity");
quantum_entangled_singularity.addShiftTooltip("with a piece of Ender Dust.",
	"Press LSHIFT for more info"
);
