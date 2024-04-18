#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import scripts.utils.patterns.diagonal;

val kebab = <cfm:item_kebab>;
val stick = <minecraft:stick>;
var chicken = <minecraft:chicken>;
if (loadedMods has "contenttweaker") {
    chicken = <contenttweaker:diced_chicken>;
}

diagonal("kebab", kebab * 2, stick, chicken, stick);

events.onEntityLivingUseItemFinish(function (event as Finish) {
    if (event.item.definition.id has "cfm:item_kebab") {
        event.player.give(<minecraft:stick>);
    }
});
