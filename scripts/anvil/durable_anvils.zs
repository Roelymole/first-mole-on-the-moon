import crafttweaker.event.PlayerAnvilRepairEvent;

events.onPlayerAnvilRepair(function (event as PlayerAnvilRepairEvent) {
    print(event.breakChance);
    event.breakChance /= 2.0;
});
