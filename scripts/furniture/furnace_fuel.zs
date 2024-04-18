#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val items = {
    <cfm:couch:*>: 300,
    //<cfm:wreath>: 300,
    <cfm:door_mat:*>: 300,
    <cfm:tv>: 0,
    <cfm:stereo>: 0,
    <cfm:toaster>: 0,
    <cfm:microwave>: 0,
    <cfm:counter:*>: 0,
    <cfm:counter_sink:*>: 0,
    <cfm:counter_drawer:*>: 0,
    <cfm:cabinet_kitchen:*>: 0,
    <cfm:bar_stool:*>: 0,
    <cfm:modern_window>: 0,
    <cfm:modern_sliding_door>: 0,
    <cfm:light_switch_off>: 0,
    <cfm:ceiling_fan>: 0,
    <cfm:digital_clock:*>: 0,
    <cfm:photo_frame:*>: 0,
    <cfm:modern_table>: 0,
    <cfm:modern_chair>: 0,
    <cfm:modern_coffee_table>: 0,
    <cfm:modern_table_outdoor>: 0,
    <cfm:modern_stair>: 0,
    <cfm:modern_bed_bottom:*>: 0,
    <cfm:tv_stand>: 0
} as int[IItemStack];

for item, burn_time in items {
    furnace.setFuel(item, burn_time);
}
