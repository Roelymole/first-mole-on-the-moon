#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.DecayHastener;
import scripts.utils.removeAndHide.removeList;

val carbides = [
    <nuclearcraft:uranium:1>,
    <nuclearcraft:uranium:6>,
    <nuclearcraft:uranium:11>,
    <nuclearcraft:neptunium:1>,
    <nuclearcraft:neptunium:6>,
    <nuclearcraft:plutonium:1>,
    <nuclearcraft:plutonium:6>,
    <nuclearcraft:plutonium:11>,
    <nuclearcraft:plutonium:16>,
    <nuclearcraft:americium:1>,
    <nuclearcraft:americium:6>,
    <nuclearcraft:americium:11>,
    //<nuclearcraft:americium:16>,
    <nuclearcraft:curium:1>,
    <nuclearcraft:curium:6>,
    <nuclearcraft:curium:11>,
    <nuclearcraft:curium:16>,
    <nuclearcraft:berkelium:1>,
    <nuclearcraft:berkelium:6>,
    <nuclearcraft:californium:1>,
    <nuclearcraft:californium:6>,
    <nuclearcraft:californium:11>,
    <nuclearcraft:californium:16>,
    <nuclearcraft:pellet_thorium:1>,
    <nuclearcraft:pellet_uranium:1>,
    <nuclearcraft:pellet_uranium:3>,
    <nuclearcraft:pellet_uranium:5>,
    <nuclearcraft:pellet_uranium:7>,
    <nuclearcraft:pellet_neptunium:1>,
    <nuclearcraft:pellet_neptunium:3>,
    <nuclearcraft:pellet_plutonium:1>,
    <nuclearcraft:pellet_plutonium:3>,
    <nuclearcraft:pellet_plutonium:5>,
    <nuclearcraft:pellet_plutonium:7>,
    <nuclearcraft:pellet_americium:1>,
    <nuclearcraft:pellet_americium:3>,
    <nuclearcraft:pellet_curium:1>,
    <nuclearcraft:pellet_curium:3>,
    <nuclearcraft:pellet_curium:5>,
    <nuclearcraft:pellet_curium:7>,
    <nuclearcraft:pellet_curium:9>,
    <nuclearcraft:pellet_curium:11>,
    <nuclearcraft:pellet_berkelium:1>,
    <nuclearcraft:pellet_berkelium:3>,
    <nuclearcraft:pellet_californium:1>,
    <nuclearcraft:pellet_californium:3>,
    <nuclearcraft:pellet_californium:5>,
    <nuclearcraft:pellet_californium:7>
] as IItemStack[];

val mixed = [
    <nuclearcraft:pellet_mixed:1>,
    <nuclearcraft:pellet_mixed:3>
] as IItemStack[];

val decay_hastener = [
    <nuclearcraft:uranium:1>,
    <nuclearcraft:uranium:6>,
    <nuclearcraft:uranium:11>,
    <nuclearcraft:neptunium:6>,
    <nuclearcraft:plutonium:6>,
    <nuclearcraft:plutonium:11>,
    <nuclearcraft:plutonium:16>,
    <nuclearcraft:americium:11>,
    <nuclearcraft:curium:6>,
    <nuclearcraft:curium:11>,
    <nuclearcraft:curium:16>
] as IItemStack[];

removeList(carbides);
removeList(mixed);

for carbide in carbides {
    AlloyFurnace.removeRecipeWithOutput(carbide);
    Separator.removeRecipeWithInput(carbide);
}

for carbide in mixed {
    AlloyFurnace.removeRecipeWithOutput(carbide);
    Separator.removeRecipeWithInput(carbide * 9);
}

for carbide in decay_hastener {
    DecayHastener.removeRecipeWithOutput(carbide);
}

<ore:ingotPlutonium238All>.remove(<nuclearcraft:plutonium:1>);
<ore:ingotAmericium241All>.remove(<nuclearcraft:americium:1>);
<ore:ingotCalifornium250All>.remove(<nuclearcraft:californium:6>);
<ore:ingotCalifornium252All>.remove(<nuclearcraft:californium:16>);
