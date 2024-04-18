#modloaded opencomputers opensecurity

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.removeByMod("opensecurity");

val desh = <galacticraftplanets:item_basic_mars:2>;
val compressed = <galacticraftplanets:item_basic_mars:5>;
val chip1 = <opencomputers:material:7>;
val chip2 = <opencomputers:material:8>;
val chip3 = <opencomputers:material:9>;
val transistor = <opencomputers:material:6>;
val pcb = <opencomputers:material:4>;
val cable = <opencomputers:cable>;
val cu = <opencomputers:material:11>;
val capacitor = <opencomputers:capacitor>;
val redstone = <minecraft:redstone>;
val keypad = <opencomputers:material:16>;
val rfid_reader = <opensecurity:rfid_reader_card>;
val chamelium = <opencomputers:chameliumblock>;
val bio_card = <appliedenergistics2:biometric_card>.withTag({});
val electromagnet = <tieredmagnets:magnet_energy_leadstone>.withTag({filterModeBlacklist: 1 as byte, range: 5, enabled: 0 as byte});
val memory = <opencomputers:component:6>;
val data = <opencomputers:card:10>;
val network = <opencomputers:card:7>;
val laser = <buildcraftsilicon:laser>;
val beam_core = <galacticraftplanets:item_basic_asteroids:8>;
val servo = <nuclearcraft:part:7>;
val motor = <nuclearcraft:part:8>;
val note_block = <minecraft:noteblock>;

recipes.addShapedMirrored("biometric_reader", <opensecurity:biometric_reader>,
    [[desh, transistor, desh],
     [pcb, bio_card, cable],
     [desh, chip1, desh]]
);
recipes.addShapedMirrored("card_writer", <opensecurity:card_writer>,
    [[desh, memory, desh],
     [pcb, electromagnet, cable],
     [desh, chip2, desh]]
);
recipes.addShapedMirrored("nanofog_terminal", <opensecurity:nanofog_terminal>,
    [[desh, network, desh],
     [chip2, cu, transistor],
     [desh, capacitor, desh]]
);
recipes.addShaped("energy_turret", <opensecurity:energy_turret>,
    [[chip3, laser, beam_core],
     [null, cable, null],
     [compressed, servo, compressed]]
);
recipes.addHiddenShaped("energy_turret_alt", <opensecurity:energy_turret>,
    [[beam_core, laser, chip3],
     [null, cable, null],
     [compressed, servo, compressed]]
);
recipes.addShapedMirrored("alarm", <opensecurity:alarm>,
    [[desh, redstone, desh],
     [pcb, note_block, cable],
     [desh, chip1, desh]]
);
recipes.addShapedMirrored("security_terminal", <opensecurity:security_terminal>,
    [[desh, transistor, desh],
     [capacitor, capacitor, capacitor],
     [desh, chip2, desh]]
);
recipes.addShapedMirrored("keypad", <opensecurity:keypad>,
    [[desh, transistor, desh],
     [pcb, keypad, cable],
     [desh, chip1, desh]]
);
recipes.addShapedMirrored("rfid_reader", <opensecurity:rfid_reader>,
    [[desh, transistor, desh],
     [pcb, rfid_reader, cable],
     [desh, chip2, desh]]
);
recipes.addShapedMirrored("data_block", <opensecurity:data_block>,
    [[desh, redstone, desh],
     [pcb, data, cable],
     [desh, chip1, desh]]
);
recipes.addShapedMirrored("mag_reader", <opensecurity:mag_reader>,
    [[desh, transistor, desh],
     [pcb, electromagnet, cable],
     [desh, chip2, desh]]
);
recipes.addShapedMirrored("mag_reader_camo", <opensecurity:mag_reader_camo>,
    [[chamelium, transistor, chamelium],
     [pcb, electromagnet, cable],
     [chamelium, chip2, chamelium]]
);
recipes.addShapedMirrored("entity_detector", <opensecurity:entity_detector>,
    [[desh, memory, desh],
     [pcb, cu, cable],
     [desh, chip2, desh]]
);
recipes.addShapedMirrored("rolldoor_controller", <opensecurity:rolldoor_controller>,
    [[desh, transistor, desh],
     [pcb, cu, cable],
     [desh, chip3, desh]]
);
recipes.addShapedMirrored("rolldoor", <opensecurity:rolldoor>,
    [[desh, transistor, desh],
     [pcb, motor, cable],
     [desh, chip1, desh]]
);
recipes.addShapedMirrored("door_controller", <opensecurity:door_controller>,
    [[desh, transistor, desh],
     [pcb, cu, cable],
     [desh, chip2, desh]]
);
