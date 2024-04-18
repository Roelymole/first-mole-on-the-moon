#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;
import crafttweaker.event.BlockBreakEvent;
import scripts.utils.items.drop;
import scripts.utils.items.silk_touched;

events.onBlockBreak(function (event as BlockBreakEvent) {
    if (event.block.definition.id has "cfm:crate") {
        val block = event.world.getBlock(event.position) as IBlock;
        if !block.data.Sealed.asBool() {
            var id as string;
            var count as int;
            var meta as int;
            var item as IItemStack;
            for item_data in block.data.Items.asList() {
                id = item_data.id.asString();
                meta = item_data.Damage.asInt();
                count = item_data.Count.asInt();
                item = itemUtils.getItem(id, meta) * count;
                if !isNull(item_data.tag) {
                    item = item.withTag(item_data.tag);
                }
                drop(item, event.world, event.position);
            }
            drop(itemUtils.getItem(event.block.definition.id), event.world, event.position);
        }
    }
});
