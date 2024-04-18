#modloaded theoneprobe

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val probe = <theoneprobe:probe>;

// {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUIDLeast: 1 as long,UUIDMost: 1 as long,Slot:"head"},
//                      {AttributeName:"generic.armorToughness",Name:"generic.armor",Amount:6,Operation:0,UUIDLeast: 1 as long,UUIDMost: 2 as long,Slot:"head"}]}

if (loadedMods has "galacticraftcore") {
    val steel = <galacticraftcore:steel_helmet>;
    val steel_probe = <theoneprobe:iron_helmet_probe>.withTag({theoneprobe: 1 as int,
        AttributeModifiers:[{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:3,Operation:0,UUIDLeast: 1 as long,UUIDMost: 1 as long,Slot:"head"},
            {AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast: 1 as long,UUIDMost: 2 as long,Slot:"head"}]});

    steel_probe.maxDamage = 330;

    recipes.removeByRecipeName("theoneprobe:iron_helmet_probe");

    recipes.addShapeless("steel_helmet_probe", steel_probe,
        [steel, probe]
    );
    recipes.addHiddenShapeless("steel_helmet_probe_alt", steel_probe, [steel, probe]);
}

if (loadedMods has "galacticraftplanets") {
    val desh = <galacticraftplanets:desh_helmet>;
    val titanium = <galacticraftplanets:titanium_helmet>;
    val desh_probe = <theoneprobe:diamond_helmet_probe>.withTag({theoneprobe: 1 as int,
        AttributeModifiers:[{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:4,Operation:0,UUIDLeast: 1 as long,UUIDMost: 2 as long,Slot:"head"},
            {AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast: 1 as long,UUIDMost: 2 as long,Slot:"head"}]});
    val titanium_probe = <theoneprobe:gold_helmet_probe>.withTag({theoneprobe: 1 as int,
        AttributeModifiers:[{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:5,Operation:0,UUIDLeast: 1 as long,UUIDMost: 2 as long,Slot:"head"},
            {AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast: 1 as long,UUIDMost: 2 as long,Slot:"head"}]});

    desh_probe.maxDamage = 462;
    titanium_probe.maxDamage = 286;

    recipes.removeByRecipeName("theoneprobe:gold_helmet_probe");
    recipes.removeByRecipeName("theoneprobe:diamond_helmet_probe");

    recipes.addShapeless("desh_helmet_probe", desh_probe, [desh, probe]);
    recipes.addShapeless("titanium_helmet_probe", titanium_probe, [titanium, probe]);
}
