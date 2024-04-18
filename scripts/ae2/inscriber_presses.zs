#modloaded appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;

val presses = [
    <appliedenergistics2:material:13>,
    <appliedenergistics2:material:14>,
    <appliedenergistics2:material:15>,
    <appliedenergistics2:material:19>
] as IItemStack[];

for press in presses {
    Inscriber.removeRecipe(press);
}
