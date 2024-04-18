#modloaded galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.PlayerDestroyItemEvent;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommandSender;
import mods.contenttweaker.Commands.call;
import scripts.utils.items.drop;

val kit = <galacticraftcore:emergency_kit>;
val replacements = {
    "minecraft:healing": <nuclearcraft:rad_x>,
    "minecraft:long_night_vision": <nuclearcraft:radaway>
} as IItemStack[string];

/*
events.onPlayerRightClickItem(function (event as PlayerRightClickItemEvent) {
    // Consume the item even in creative in order for the behaviour in
    // the function events.onPlayerDestroyItem to take place
    if (event.player.creative) {
        if (event.item.definition.id == "galacticraftcore:emergency_kit") {
            print("Right click");
        }
    }
});*/

events.onPlayerDestroyItem(function (event as PlayerDestroyItemEvent) {
    if !isNull(event.originalItem) {
        if (event.originalItem.definition.id == "galacticraftcore:emergency_kit") {
            print("Used Space Emergency Kit");

            var potion_type as string;
            var position = {
                "minecraft:healing": null,
                "minecraft:long_night_vision": null
            } as int[string];

            val inventory = event.player.inventoryContainer;
            for i, item in inventory {
                if !isNull(item) {
                    if (item.definition.id == "minecraft:potion") {
                        potion_type = item.tag.Potion.asString();
                        print("Found " + potion_type + " in slot " + i);
                        if (position.keys has potion_type) {
                            if !isNull(position[potion_type]) {
                                if (i < 36) {
                                    position[potion_type] = i;
                                }
                            } else {
                                position[potion_type] = i;
                            }
                        }
                    }
                }
            }

            var item as IItemStack;
            var command as string;
            for potion_type, i in position {
                item = replacements[potion_type];
                if !isNull(i) {
                    inventory.setStack(i, item);
                    print("Replaced potion in slot " + i + " with " + item.definition.id);
                } else {
                    // Replace item entity at the player's position
                    drop(item, event.player.world, event.player.position);

                    // Tag potion item entities to be killed
                    command = '/scoreboard players tag @e[type=Item,r=2] add potion {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"' + potion_type + '"},Damage:0s}}';
                    print("Executing command " + command);
                    call(command, event.player, event.player.world, false, false);
                }
            }

            if (position.values has null) {
                print("Killing potion items");
                call("/kill @e[tag=potion]", event.player, event.player.world, false, true);
            }
        }
    }
});
