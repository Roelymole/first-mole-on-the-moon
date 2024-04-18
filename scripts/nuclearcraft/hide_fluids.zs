#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.utils.removeAndHide.hideList;
import scripts.utils.removeAndHide.hideLiquidsAndBuckets;

val items = [
    <nuclearcraft:fluid_steam>,
    <nuclearcraft:fluid_low_pressure_steam>,
    <nuclearcraft:fluid_low_quality_steam>,
    <nuclearcraft:fluid_preheated_water>,
    <nuclearcraft:fluid_condensate_water>,
    /*
    <nuclearcraft:fluid_emergency_coolant_heated>,
    <nuclearcraft:fluid_nak>,
    <nuclearcraft:fluid_nak_hot>,
    <nuclearcraft:fluid_sodium>,
    <nuclearcraft:fluid_potassium>,
    <nuclearcraft:fluid_potassium_fluoride_solution>,
    <nuclearcraft:fluid_potassium_hydroxide_solution>,
    <nuclearcraft:fluid_koh>,
    */
    <nuclearcraft:fluid_boron_10>,
    <nuclearcraft:fluid_boron_11>,
    <nuclearcraft:fluid_bas>,
    <nuclearcraft:fluid_lithium_6>,
    <nuclearcraft:fluid_lithium_7>,
    <nuclearcraft:fluid_lif>,
    <nuclearcraft:fluid_bef2>,
    <nuclearcraft:fluid_flibe>,
    <nuclearcraft:fluid_lead_platinum>,
    <nuclearcraft:fluid_enderium>,
    <nuclearcraft:fluid_arsenic>,
    <nuclearcraft:fluid_fluorine>,
    <nuclearcraft:fluid_oxygen_difluoride>,
    <nuclearcraft:fluid_ammonia>,
    <nuclearcraft:fluid_plasma>,
    <nuclearcraft:fluid_oxygen>,
    <nuclearcraft:fluid_hydrogen>,
    <nuclearcraft:fluid_helium>,
    <nuclearcraft:fluid_nitrogen>,
    // <nuclearcraft:fluid_liquid_nitrogen>,
    <nuclearcraft:fluid_boron_nitride_solution>,
    <nuclearcraft:fluid_sulfuric_acid>,
    <nuclearcraft:fluid_sic_vapor>
] as IItemStack[];

val fluids = [
    <liquid:steam>,
    <liquid:low_pressure_steam>,
    <liquid:low_quality_steam>,
    <liquid:preheated_water>,
    <liquid:condensate_water>,
    <liquid:emergency_coolant_heated>,
    <liquid:nak>,
    <liquid:nak_hot>,
    <liquid:sodium>,
    <liquid:potassium>,
    <liquid:potassium_fluoride_solution>,
    <liquid:potassium_hydroxide_solution>,
    <liquid:koh>,
    <liquid:boron_10>,
    <liquid:boron_11>,
    <liquid:bas>,
    <liquid:lithium_6>,
    <liquid:lithium_7>,
    <liquid:lif>,
    <liquid:bef2>,
    <liquid:flibe>,
    <liquid:lead_platinum>,
    <liquid:enderium>,
    <liquid:fluorite>,
    <liquid:villiaumite>,
    <liquid:carobbiite>,
    <liquid:arsenic>,
    <liquid:fluorine>,
    <liquid:oxygen_difluoride>,
    <liquid:ammonia>,
    <liquid:plasma>,
    //<liquid:liquid_nitrogen>,
    <liquid:boron_nitride_solution>,
    <liquid:sulfuric_acid>,
    <liquid:sic_vapor>
] as ILiquidStack[];

hideList(items);
hideLiquidsAndBuckets(fluids);
