#modloaded opencomputers opensecurity

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.surround;

val mag = <opensecurity:mag_card>;
val rfid = <opensecurity:rfid_card>;
val rfid_reader = <opensecurity:rfid_reader_card>;

val paper = <minecraft:paper>;
val transistor = <opencomputers:material:6>;
val chip1 = <opencomputers:material:7>;
val chip2 = <opencomputers:material:8>;
val cu = <opencomputers:material:11>;
val base = <opencomputers:material:5>;
val memory = <opencomputers:component:6>;
val network = <opencomputers:upgrade:31>;

val nanodna = <opensecurity:nanodna>;
val nanomachines = <opencomputers:tool:5>;
val chamelium = <opencomputers:chameliumblock>;

recipes.addShaped("mag_card", mag,
    [[paper, transistor, paper],
     [paper, paper, paper]]
);
recipes.addShaped("rfid_card", rfid,
    [[paper, transistor, paper],
     [paper, chip1, paper]]
);
recipes.addShapedMirrored("rfid_reader_card", rfid_reader,
    [[chip2, memory, chip2],
     [null, network, null],
     [base, cu, null]]
);
surround("nanodna", nanodna, chamelium, nanomachines);
