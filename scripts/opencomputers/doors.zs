#modloaded opencomputers opensecurity

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val door = <minecraft:iron_door>;
val secure_door = <opensecurity:secure_door>;
val private_door = <opensecurity:private_secure_door>;
val mag_door = <opensecurity:mag_secure_door>;
val mag_reader = <opensecurity:mag_reader>;
val chip = <opencomputers:material:8>;
val transistor = <opencomputers:material:6>;
val SiC = <nuclearcraft:alloy:13>;
val glass = <galacticraftcore:space_glass_strong:*>;

recipes.addShaped("secure_door", secure_door,
    [[chip, glass, chip],
     [SiC, door, SiC],
     [transistor, SiC, transistor]]
);
recipes.addShaped("private_secure_door", private_door,
    [[chip, SiC, chip],
     [SiC, door, SiC],
     [transistor, SiC, transistor]]
);
recipes.addShapeless("mag_secure_door", mag_door,
    [private_door, mag_reader]
);
