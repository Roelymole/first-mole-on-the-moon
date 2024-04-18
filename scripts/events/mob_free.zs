import crafttweaker.events.IEventManager;
import crafttweaker.event.IEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

val biomes = [
	"Mystic Grove",
	"Sacred Springs",
	"Flower Island"
] as string[];

val mobs = [
	"minecraft:creeper",
	"minecraft:enderman",
	"minecraft:skeleton",
	"minecraft:spider",
	"minecraft:witch",
	"minecraft:zombie",
	"minecraft:zombie_villager"
] as string[];

val evolved = [
	"galacticraftcore:evolved_creeper",
	"galacticraftcore:evolved_enderman",
	"galacticraftcore:evolved_skeleton",
	"galacticraftcore:evolved_spider",
	"galacticraftcore:evolved_witch",
	"galacticraftcore:evolved_zombie"
] as string[];

val villagers = [
	"minecraft:villager",
	"minecraft:zombie_villager"
] as string[];

val surface = [
	"minecraft:vex",
	"minecraft:witch",
	"minecraft:wither_skeleton",
	"minecraft:cave_spider"
] as string[];

val caves = [
	"minecraft:vex",
	"minecraft:wither_skeleton"
] as string[];

events.onEntityJoinWorld(function (event as EntityJoinWorldEvent) {
	if (!isNull(event.entity)) {
		if (!isNull(event.entity.definition)) {
			if (biomes has event.world.getBiome(event.entity.position3f).name) {
				// Prevent mobs from spawning in certain Biomes
				if (mobs has event.entity.definition.id) {
					event.cancel();
				}
			} else if (event.world.getDimension() == -30) {
				// Prevent mobs from spawning in the Asteroids
				if (evolved has event.entity.definition.id) {
					event.cancel();
				}
			} else if (villagers has event.entity.definition.id) {
				// Prevent Tok'ra Merchants from spawning
				if (event.entity.nbt.ProfessionName == "sgcraft:tokra") {
					event.cancel();
				}
			} else if ((event.world.getDimension() == 0) && (event.entity.definition.id == "minecraft:zombie_pigman")) {
				// Prevent hoards of Zombie Pigmen from pouring out into the Overworld
				event.cancel();
			} else if (event.world.getBiome(event.entity.position3f).name == "Ominous Woods") {
				if ((event.entity.position.y > 63) && !(surface has event.entity.definition.id)) {
					event.cancel();
				} else if ((event.entity.position.y <= 63) && (caves has event.entity.definition.id)) {
					event.cancel();
				}
			}
		}
	}
});
