#modloaded buildingblocks
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:stoneGranite>.add(<buildingblocks:morestones:1>);
<ore:stoneDiorite>.add(<buildingblocks:morestones:3>);
<ore:stoneAndesite>.add(<buildingblocks:morestones:5>);
<ore:stoneLimestone>.addItems([
    <buildingblocks:morestones:7>,
    <buildingblocks:morestones:8>,
    <buildingblocks:morestones:9>
]);
<ore:stoneMarble>.addItems([
    <buildingblocks:morestones:11>,
    <buildingblocks:morestones:12>,
    <buildingblocks:morestones:13>
]);
<ore:stoneBasalt>.addItems([
    <buildingblocks:morestones2:3>,
    <buildingblocks:morestones2:4>,
    <buildingblocks:morestones2:5>
]);

<ore:sandstoneYellow>.addItems([
    <buildingblocks:morestones:14>,
    <buildingblocks:morestones:15>,
    <buildingblocks:morestones2>,
    <buildingblocks:morestones2:1>
]);
<ore:stoneSandstoneYellow>.addItems([
    <buildingblocks:morestones:14>,
    <buildingblocks:morestones2>,
    <buildingblocks:morestones2:1>
]);
<ore:sandstoneRed>.addItems([
    <buildingblocks:morestones2:6>,
    <buildingblocks:morestones2:7>,
    <buildingblocks:morestones2:8>,
    <buildingblocks:morestones2:9>
]);
<ore:stoneSandstoneRed>.addItems([
    <buildingblocks:morestones2:6>,
    <buildingblocks:morestones2:8>,
    <buildingblocks:morestones2:9>
]);

<ore:netherrack>.addItems([
    <buildingblocks:morestones2:10>,
    <buildingblocks:morestones2:11>
]);
<ore:endstone>.add(<buildingblocks:morestones2:13>);
<ore:acherite>.addItems([
    <buildingblocks:morestones3>,
    <buildingblocks:morestones3:1>,
    <buildingblocks:morestones3:2>
]);
<ore:terminochite>.addItems([
    <buildingblocks:morestones3:3>,
    <buildingblocks:morestones3:4>,
    <buildingblocks:morestones3:5>
]);

val overgrowth = <buildingblocks:overgrowth>;
recipes.remove(overgrowth * 8);
<ore:vines>.addItems([<minecraft:vine>, overgrowth]);
