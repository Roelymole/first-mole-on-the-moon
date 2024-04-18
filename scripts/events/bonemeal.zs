import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.event.PlayerBonemealEvent;
import scripts.utils.items.drop;

val plant = <biomesoplenty:plant_1>.definition;
val double_plant = <biomesoplenty:double_plant>.definition;
val flower = <biomesoplenty:flower_0>.definition;

events.onPlayerBonemeal(function (event as PlayerBonemealEvent) {
    if (event.block.definition.id == "biomesoplenty:plant_1") {
        val meta = event.blockState.meta;
        if (meta == 8) {
            drop(plant.makeStack(meta), event.world, event.position);
            event.process();
        } else {
            event.cancel();
        }
    } else if (event.block.definition.id == "biomesoplenty:double_plant") {
        val meta = event.blockState.meta % 8;
        if (meta < 4) {
            drop(double_plant.makeStack(meta), event.world, event.position);
            event.process();
        } else {
            event.cancel();
        }
    } else if (event.block.definition.id == "biomesoplenty:flower_0") {
        val meta = event.blockState.meta;
        if (meta == 11) {
            drop(flower.makeStack(meta), event.world, event.position);
            event.process();
        } else {
            event.cancel();
        }
    }
});
