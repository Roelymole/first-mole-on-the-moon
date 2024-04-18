#modloaded sgcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.hideList;

val unused = [
    <sgcraft:naquadahblock>,
    <sgcraft:naquadahore>,
    <sgcraft:zpm_console>,
    <sgcraft:naquadah>,
    <sgcraft:naquadahingot>,
    <sgcraft:zpm>
] as IItemStack[];

hideList(unused);
