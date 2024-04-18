#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.fencepattern;
import scripts.utils.recolour.repaint;

val white_fence = <cfm:white_fence>;
val white_gate = <cfm:white_gate>;
val nether_fence = <cfm:upgraded_fence_nether_brick>;
val brick_fence = <minecraft:nether_brick_fence>;
val brick = <ore:brickNether>;
val upgraded_fences = <ore:fenceUpgraded>;
upgraded_fences.addItems([
    <cfm:upgraded_fence_oak>,
    <cfm:upgraded_fence_spruce>,
    <cfm:upgraded_fence_birch>,
    <cfm:upgraded_fence_jungle>,
    <cfm:upgraded_fence_acacia>,
    <cfm:upgraded_fence_dark_oak>,
]);
val upgraded_gates = <ore:gateUpgraded>;
upgraded_gates.addItems([
    <cfm:upgraded_gate_oak>,
    <cfm:upgraded_gate_spruce>,
    <cfm:upgraded_gate_birch>,
    <cfm:upgraded_gate_jungle>,
    <cfm:upgraded_gate_acacia>,
    <cfm:upgraded_gate_dark_oak>
]);

if (loadedMods has "buildcraftcore") {
    val paintbrush = <buildcraftcore:paintbrush:1>;
    val new_paintbrush = paintbrush.transformReplace(paintbrush.withTag({"damage": 1 as byte}));
    val used_paintbrush = paintbrush.withTag({}).transformNew(
        function(item) {
            if (item.tag has "damage") {
                if (item.tag.damage >= 63) {
                    return null;
                } else {
                    return item.updateTag({"damage": (item.tag.damage + 1) as byte});
                }
            } else {
                return item.withTag({"damage": 1 as byte});
            }
        }
    );

    repaint("white_fence", white_fence, upgraded_fences, "white");
    repaint("white_gate", white_gate, upgraded_gates, "white");
}

recipes.remove(brick_fence * 3);
fencepattern("netherbrick_fence", brick_fence * 3, brick);
fencepattern("netherbrick_fence_upgrade", nether_fence * 3, brick, brick_fence);

if ((loadedMods has "galacticraftcore") && (loadedMods has "nuclearcraft")) {
    val electric_fence = <cfm:electric_fence>;
    val steel = <nuclearcraft:alloy:5>;
    val pole = <galacticraftcore:steel_pole>;
    val torch = <minecraft:redstone_torch>;

    recipes.addShaped("electric_fence", electric_fence * 3,
        [[pole, steel, pole],
         [pole, steel, pole],
         [null, torch, null]]
    );
}
