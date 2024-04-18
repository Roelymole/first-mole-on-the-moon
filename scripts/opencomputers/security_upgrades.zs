#modloaded opencomputers opensecurity nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.surround;

val SiC = <nuclearcraft:alloy:13>;
val upgrades = {
    <opensecurity:energy_upgrade>: <opencomputers:upgrade:1>,
    <opensecurity:damage_upgrade>: <minecraft:fire_charge>,
    <opensecurity:movement_upgrade>: <nuclearcraft:part:7>,
    <opensecurity:cooldown_upgrade>: <forge:bucketfilled>.withTag({FluidName: "emergency_coolant", Amount: 1000})
} as IItemStack[IItemStack];

for upgrade, item in upgrades {
    surround(upgrade.name, upgrade, SiC, item);
}
