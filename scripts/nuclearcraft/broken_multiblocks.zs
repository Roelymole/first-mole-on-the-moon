#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.FissionHeating;
import mods.nuclearcraft.Turbine;
import mods.nuclearcraft.Supercooler;
import mods.nuclearcraft.FissionEmergencyCooling;
import scripts.utils.removeAndHide.removeList;

// val coolant_heater = <nuclearcraft:salt_fission_heater2>.definition;
// val coolant_heater_port = <nuclearcraft:fission_heater_port2>.definition;

val water = <liquid:water>;
val high_pressure_steam = <liquid:high_pressure_steam>;
val exhaust_steam = <liquid:exhaust_steam>;
val low_quality_steam = <liquid:low_quality_steam>;
val preheated_water = <liquid:preheated_water>;
val condensate_water = <liquid:condensate_water>;
val emergency_coolant = <liquid:emergency_coolant>;

val items = [
    /*
    <nuclearcraft:salt_fission_heater:*>,
    <nuclearcraft:salt_fission_heater2:*>,
    <nuclearcraft:fission_heater_port:*>,
    <nuclearcraft:fission_heater_port2:*>,
    <nuclearcraft:fission_monitor>,
    <nuclearcraft:fission_vessel_port>,
    <nuclearcraft:salt_fission_controller>,
    <nuclearcraft:salt_fission_vessel>,
    */
    <nuclearcraft:heat_exchanger_controller>,
    <nuclearcraft:heat_exchanger_casing>,
    <nuclearcraft:heat_exchanger_glass>,
    <nuclearcraft:heat_exchanger_vent>,
    <nuclearcraft:heat_exchanger_tube_copper>,
    <nuclearcraft:heat_exchanger_tube_hard_carbon>,
    <nuclearcraft:heat_exchanger_tube_thermoconducting>,
    <nuclearcraft:heat_exchanger_computer_port>,
    <nuclearcraft:condenser_controller>,
    <nuclearcraft:condenser_tube_copper>,
    <nuclearcraft:condenser_tube_hard_carbon>,
    <nuclearcraft:condenser_tube_thermoconducting>
] as IItemStack[];

removeList(items);

/*
for i in 12 to 16 {
    Infuser.removeRecipeWithOutput(coolant_heater.makeStack(i));
    Infuser.removeRecipeWithOutput(coolant_heater_port.makeStack(i));
}
*/

FissionHeating.addRecipe(water * 1, high_pressure_steam * 4, 64);
FissionHeating.removeRecipeWithInput(preheated_water * 1);
FissionHeating.removeRecipeWithInput(condensate_water * 1);
Turbine.removeRecipeWithOutput(low_quality_steam * 2);
// FissionEmergencyCooling.removeRecipeWithInput(emergency_coolant * 1);
// Supercooler.removeRecipeWithOutput(emergency_coolant * 250);

Supercooler.removeRecipeWithInput(high_pressure_steam * 288);
Supercooler.removeRecipeWithInput(exhaust_steam * 288);
Supercooler.addRecipe(high_pressure_steam * 288, water * 72);
Supercooler.addRecipe(exhaust_steam * 288, water * 18);
