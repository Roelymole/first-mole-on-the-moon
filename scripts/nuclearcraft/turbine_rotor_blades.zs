#modloaded nuclearcraft galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.columns;

val hsla_steel = <nuclearcraft:alloy:15>;

val blades = {
    "steel": <nuclearcraft:turbine_rotor_blade_steel>,
    "meteoric": <nuclearcraft:turbine_rotor_blade_extreme>,
    "desh": <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>,
    "titanium": <nuclearcraft:turbine_rotor_stator>
} as IItemStack[string];

val materials = {
    <nuclearcraft:turbine_rotor_blade_steel>: <galacticraftcore:basic_item:9>,
    <nuclearcraft:turbine_rotor_blade_extreme>: <galacticraftcore:item_basic_moon:1>,
    <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>: <galacticraftplanets:item_basic_mars:5>,
    <nuclearcraft:turbine_rotor_stator>: <galacticraftplanets:item_basic_asteroids:6>
} as IItemStack[IItemStack];

for name, rotor in blades {
    recipes.remove(rotor);
    columns(name ~ "_rotor", rotor, materials[rotor], hsla_steel, materials[rotor]);
}
