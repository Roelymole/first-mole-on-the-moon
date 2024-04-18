#modloaded appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val iron = <minecraft:iron_ingot>;
val fluix = <appliedenergistics2:material:7> | <appliedenergistics2:material:12>;
val processor = <appliedenergistics2:material:24>;

val tunnels = {
    <appliedenergistics2:part:469>: <ore:blockGold>,
    <appliedenergistics2:part:463>: <ore:blockLapis>,
    <appliedenergistics2:part:462>: <ore:blockIron>,
    <appliedenergistics2:part:467>: <ore:blockQuartz>,
    <appliedenergistics2:part:460>: <ore:blockCertusQuartz>,
    <appliedenergistics2:part:461>: <ore:blockRedstone>
} as IOreDictEntry[IItemStack];

recipes.remove(<appliedenergistics2:part:460>);

var i = 0;
for tunnel, blocks in tunnels {
    recipes.addShaped("p2p_tunnel_" ~ i, tunnel,
        [[ null,   iron,    null],
         [ iron, processor, iron],
         [fluix,  blocks,  fluix]]
    );
    i += 1;
}
