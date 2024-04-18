#modloaded pressure

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.removeList;

val items = [
    <pressure:debugger>,
    <pressure:interface>,
    <pressure:tank_wall>,
    <pressure:fluid_interface>,
    //<pressure:hand_pump>,
    //<pressure:canister>
] as IItemStack[];

removeList(items);
