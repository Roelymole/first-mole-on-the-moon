import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerAnvilUpdateEvent;
import scripts.utils.enchantments.silk_touch_first;
import scripts.arrays.tools.picks;

/*
Rearrange the order of enchantments on pickaxes to make silk touch come first
This is to fix an issue with the Just Build It! mod where blocks aren't
silk-touched properly when silk touch is not the first enchantment
*/

// Add crafting recipes to put silk touch first as a workaround
for key, pick in picks {
    recipes.addHiddenShapeless(key.split(":")[1] ~ "_silk_touch_first", pick,
        [pick.anyDamage().marked("s")],
        function(out, ins, cInfo) {
            if (ins.keys has "s") {
                return silk_touch_first(ins.s);
            } else {
                return null;
            }
        }, null
    );
}

// Put silk touch first when using the anvil
// Need to reimplement vanilla behaviour to get this to work
/*
events.onPlayerAnvilUpdate(function (event as PlayerAnvilUpdateEvent) {
    var left = event.leftItem.definition.id;
    if (picks.keys has left) {
        event.outputItem = silk_touch_first(event.outputItem);
    }
});
*/
