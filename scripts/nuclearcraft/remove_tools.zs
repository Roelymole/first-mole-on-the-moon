#modloaded nuclearcraft

import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.removeList;

val tools = [
    <nuclearcraft:sword_boron_nitride>,
    <nuclearcraft:pickaxe_boron_nitride>,
    <nuclearcraft:shovel_boron_nitride>,
    <nuclearcraft:axe_boron_nitride>,
    <nuclearcraft:hoe_boron_nitride>,
    <nuclearcraft:sword_tough>,
    <nuclearcraft:pickaxe_tough>,
    <nuclearcraft:shovel_tough>,
    <nuclearcraft:axe_tough>,
    <nuclearcraft:hoe_tough>,
    <nuclearcraft:sword_hard_carbon>,
    <nuclearcraft:pickaxe_hard_carbon>,
    <nuclearcraft:shovel_hard_carbon>,
    <nuclearcraft:axe_hard_carbon>,
    <nuclearcraft:hoe_hard_carbon>
] as IItemStack[];

removeList(tools);
