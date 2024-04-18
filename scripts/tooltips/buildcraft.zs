#modloaded buildcraftenergy

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.formatters.formatRF;
import scripts.utils.formatters.formatTime;

val fuels = {
    "oil": <forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}),
    "heavy_oil": <forge:bucketfilled>.withTag({FluidName: "oil_heavy", Amount: 1000}),
    "dense_oil": <forge:bucketfilled>.withTag({FluidName: "oil_dense", Amount: 1000}),
    "distilled_oil": <forge:bucketfilled>.withTag({FluidName: "oil_distilled", Amount: 1000}),
    "dense_fuel": <forge:bucketfilled>.withTag({FluidName: "fuel_dense", Amount: 1000}),
    "mixed_heavy": <forge:bucketfilled>.withTag({FluidName: "fuel_mixed_heavy", Amount: 1000}),
    "light_fuel": <forge:bucketfilled>.withTag({FluidName: "fuel_light", Amount: 1000}),
    "mixed_light": <forge:bucketfilled>.withTag({FluidName: "fuel_mixed_light", Amount: 1000}),
    "gaseous": <forge:bucketfilled>.withTag({FluidName: "fuel_gaseous", Amount: 1000}),
    "galacticraft_fuel": <galacticraftcore:bucket_fuel>
} as IItemStack[string];

// In MJ
val energy = {
    "oil": 30000,
    "heavy_oil": 80000,
    "dense_oil": 120000,
    "distilled_oil": 37500,
    "dense_fuel": 360000,
    "mixed_heavy": 96000,
    "light_fuel": 90000,
    "mixed_light": 30000,
    "gaseous": 15000,
    "galacticraft_fuel": 45000
} as int[string];

// In MJ/t
val rate = {
    "oil": 3.0,
    "heavy_oil": 2.0,
    "dense_oil": 4.0,
    "distilled_oil": 1.0,
    "dense_fuel": 4.0,
    "mixed_heavy": 5.0,
    "light_fuel": 6.0,
    "mixed_light": 3.0,
    "gaseous": 8.0,
    "galacticraft_fuel": 5.0
} as double[string];

// A variable to store the time in seconds
var time as int; //= (energy["light_fuel"] / (rate["light_fuel"] * 20.0)) as int;

for name, item in fuels {
    time = (energy[name] / (rate[name] * 20.0)) as int;
    item.addShiftTooltip("Burns for " ~ formatTime(time));
    item.addShiftTooltip("in a Combustion Engine");
    item.addShiftTooltip("producing " ~ formatRF(10 * energy[name]) ~ ".",
        "Press LSHIFT for more info"
    );
}
