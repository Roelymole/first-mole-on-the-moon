#modloaded biomesoplenty nuclearcraft
#priority 49

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Manufactory;

<ore:leavesAlive>.addItems([
    <minecraft:leaves>,
    <minecraft:leaves:2>,
    <minecraft:leaves:3>,
    <minecraft:leaves2>,
    <minecraft:leaves2:1>]);

<ore:leavesDead>.addItems([
    <biomesoplenty:leaves_0:8>,
    <biomesoplenty:leaves_0:9>,
    <biomesoplenty:leaves_1:9>,
    <biomesoplenty:leaves_2:11>,
    <biomesoplenty:leaves_3:8>]);

<ore:leavesMagic>.addItems([
    <biomesoplenty:leaves_0:11>,
    <biomesoplenty:leaves_2:8>,
    <biomesoplenty:leaves_3:11>]);

<ore:leavesFlower>.addItems([
    <biomesoplenty:leaves_2:9>,
    <biomesoplenty:leaves_2:10>,
    <biomesoplenty:leaves_3:9>]);

val array = {
    <ore:leavesAlive>: <biomesoplenty:plant_0:11>,
    <ore:leavesDead>: <biomesoplenty:plant_0:12>,
    <ore:leavesMagic>: <biomesoplenty:plant_0:10>,
    <ore:leavesFlower>: <biomesoplenty:flower_0>
} as IItemStack[IOreDictEntry];

for leaves, product in array {
    Manufactory.addRecipe(leaves, product, 0.25, 0.25, 0);
}
