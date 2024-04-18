#modloaded buildingblocks
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.removeList;

val blocks = [
	<buildingblocks:morestones2:15>,
	<buildingblocks:morestones2:14>,
	<buildingblocks:concretedyeable>.withTag({color: 16777215}),
	<buildingblocks:concretedyeable>,
	<buildingblocks:concretetiles>.withTag({color1: 16777215, color2: 16777215}),
	<buildingblocks:concretetiles>
] as IItemStack[];

removeList(blocks);

furnace.remove(blocks[0]);
