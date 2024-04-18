#modloaded bdsandm
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.hideList;

val items = [
    <bdsandm:upgrade>,
    <bdsandm:upgrade:1>,
    <bdsandm:upgrade:2>,
    <bdsandm:upgrade:3>,
    //<bdsandm:upgrade:4>,
    <bdsandm:wood_crate>,
    <bdsandm:metal_crate>,
    <bdsandm:shipping_container>
] as IItemStack[];

recipes.removeByMod("bdsandm");
hideList(items);
