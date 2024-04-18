#modloaded pressure

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.game.IGame;

val canister = <pressure:canister>;
val bucket = <minecraft:bucket>;
val exclusions = [
    "honey"
] as string[];
val extras = [
    "fuel",
    "bacterialsludge",
    "sulphuricacid"
] as string[];

function full_bucket(name as string) as IItemStack {
    val exceptions = {
        "water": <minecraft:water_bucket>,
        "lava": <minecraft:lava_bucket>,
        "fuel": <galacticraftcore:bucket_fuel>,
        "bacterialsludge": <galacticraftplanets:bucket_sludge>,
        "sulphuricacid": <galacticraftplanets:bucket_sulphuric_acid>
    } as IItemStack[string];

    if (exceptions.keys has name) {
        return exceptions[name];
    } else {
        return <forge:bucketfilled>.withTag({"FluidName": name, "Amount": 1000});
    }
}

function fill(name as string) as void {
    recipes.addShapeless("full_" ~ name ~ "_bucket",
        full_bucket(name),
        [<minecraft:bucket>, <pressure:canister>.only(
            function(item) {
                if (item.tag has "FluidName") {
                    if (item.tag.FluidName == name) {
                        return item.tag.Amount >= 1000;
                    }
                }
                return false;
            }
        ).transformNew(
            function(item) {
                if (item.tag.Amount == 1000) {
                    return item.removeTag("FluidName").removeTag("Amount");
                } else {
                    return item.updateTag({"Amount": item.tag.Amount - 1000});
                }
            }
        )]
    );
}

function empty(name as string, input_bucket as IItemStack = <minecraft:bucket>, id as string = "") as void {
    var input = input_bucket as IItemStack;
    if (input_bucket.definition.id == "minecraft:bucket") {
        input = full_bucket(name);
    }
    var recipe_id = id as string;
    if (id == "") {
        recipe_id = "empty_" ~ name ~ "_bucket";
    }
    recipes.addShapeless(recipe_id, <minecraft:bucket>,
        [input.noReturn(),
        <pressure:canister>.transformNew(
            function(item) {
                if (item.tag has "Amount") {
                    return item.updateTag({"FluidName": name, "Amount": item.tag.Amount + 1000});
                } else {
                    return item.updateTag({"FluidName": name, "Amount": 1000});
                }
            }
        ).marked("c")],
        function(out, ins, cInfo) {
            if (ins.c.tag has "FluidName") {
                if (ins.c.tag.FluidName == name) {
                    if (ins.c.tag.Amount <= 15000) {
                        return out;
                    }
                }
            } else {
                return out;
            }
            return null;
        }, null
    );
}

for liquid in game.liquids {
    if !(exclusions has liquid.name) {
        fill(liquid.name);
        empty(liquid.name);
        if (extras has liquid.name) {
            empty(liquid.name,
                <forge:bucketfilled>.withTag({"FluidName": liquid.name, "Amount": 1000}),
                "empty_" ~ liquid.name ~ "_bucket_alt"
            );
        }
    }
}
