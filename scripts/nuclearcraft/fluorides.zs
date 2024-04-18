#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.ChemicalReactor;
import scripts.utils.removeAndHide.hideBucket;
import scripts.utils.removeAndHide.hideLiquidAndBucket;

val fluorides = [
    <liquid:tbu_fluoride>,
    <liquid:leu_233_fluoride>,
    <liquid:heu_233_fluoride>,
    <liquid:leu_235_fluoride>,
    <liquid:heu_235_fluoride>,
    <liquid:len_236_fluoride>,
    <liquid:hen_236_fluoride>,
    <liquid:lep_239_fluoride>,
    <liquid:hep_239_fluoride>,
    <liquid:lep_241_fluoride>,
    <liquid:hep_241_fluoride>,
    <liquid:mix_239_fluoride>,
    <liquid:mix_241_fluoride>,
    <liquid:lea_242_fluoride>,
    <liquid:hea_242_fluoride>,
    <liquid:lecm_243_fluoride>,
    <liquid:hecm_243_fluoride>,
    <liquid:lecm_245_fluoride>,
    <liquid:hecm_245_fluoride>,
    <liquid:lecm_247_fluoride>,
    <liquid:hecm_247_fluoride>,
    <liquid:leb_248_fluoride>,
    <liquid:heb_248_fluoride>,
    <liquid:lecf_249_fluoride>,
    <liquid:hecf_249_fluoride>,
    <liquid:lecf_251_fluoride>,
    <liquid:hecf_251_fluoride>
] as ILiquidStack[];

val fluoride_flibes = [
    <liquid:tbu_fluoride_flibe>,
    <liquid:leu_233_fluoride_flibe>,
    <liquid:heu_233_fluoride_flibe>,
    <liquid:leu_235_fluoride_flibe>,
    <liquid:heu_235_fluoride_flibe>,
    <liquid:len_236_fluoride_flibe>,
    <liquid:hen_236_fluoride_flibe>,
    <liquid:lep_239_fluoride_flibe>,
    <liquid:hep_239_fluoride_flibe>,
    <liquid:lep_241_fluoride_flibe>,
    <liquid:hep_241_fluoride_flibe>,
    <liquid:mix_239_fluoride_flibe>,
    <liquid:mix_241_fluoride_flibe>,
    <liquid:lea_242_fluoride_flibe>,
    <liquid:hea_242_fluoride_flibe>,
    <liquid:lecm_243_fluoride_flibe>,
    <liquid:hecm_243_fluoride_flibe>,
    <liquid:lecm_245_fluoride_flibe>,
    <liquid:hecm_245_fluoride_flibe>,
    <liquid:lecm_247_fluoride_flibe>,
    <liquid:hecm_247_fluoride_flibe>,
    <liquid:leb_248_fluoride_flibe>,
    <liquid:heb_248_fluoride_flibe>,
    <liquid:lecf_249_fluoride_flibe>,
    <liquid:hecf_249_fluoride_flibe>,
    <liquid:lecf_251_fluoride_flibe>,
    <liquid:hecf_251_fluoride_flibe>
] as ILiquidStack[];

val depleted_fluorides = [
    <liquid:depleted_tbu_fluoride>,
    <liquid:depleted_leu_233_fluoride>,
    <liquid:depleted_heu_233_fluoride>,
    <liquid:depleted_leu_235_fluoride>,
    <liquid:depleted_heu_235_fluoride>,
    <liquid:depleted_len_236_fluoride>,
    <liquid:depleted_hen_236_fluoride>,
    <liquid:depleted_lep_239_fluoride>,
    <liquid:depleted_hep_239_fluoride>,
    <liquid:depleted_lep_241_fluoride>,
    <liquid:depleted_hep_241_fluoride>,
    <liquid:depleted_mix_239_fluoride>,
    <liquid:depleted_mix_241_fluoride>,
    <liquid:depleted_lea_242_fluoride>,
    <liquid:depleted_hea_242_fluoride>,
    <liquid:depleted_lecm_243_fluoride>,
    <liquid:depleted_hecm_243_fluoride>,
    <liquid:depleted_lecm_245_fluoride>,
    <liquid:depleted_hecm_245_fluoride>,
    <liquid:depleted_lecm_247_fluoride>,
    <liquid:depleted_hecm_247_fluoride>,
    <liquid:depleted_leb_248_fluoride>,
    <liquid:depleted_heb_248_fluoride>,
    <liquid:depleted_lecf_249_fluoride>,
    <liquid:depleted_hecf_249_fluoride>,
    <liquid:depleted_lecf_251_fluoride>,
    <liquid:depleted_hecf_251_fluoride>
] as ILiquidStack[];

val depleted_fluoride_flibes = [
    <liquid:depleted_tbu_fluoride_flibe>,
    <liquid:depleted_leu_233_fluoride_flibe>,
    <liquid:depleted_heu_233_fluoride_flibe>,
    <liquid:depleted_leu_235_fluoride_flibe>,
    <liquid:depleted_heu_235_fluoride_flibe>,
    <liquid:depleted_len_236_fluoride_flibe>,
    <liquid:depleted_hen_236_fluoride_flibe>,
    <liquid:depleted_lep_239_fluoride_flibe>,
    <liquid:depleted_hep_239_fluoride_flibe>,
    <liquid:depleted_lep_241_fluoride_flibe>,
    <liquid:depleted_hep_241_fluoride_flibe>,
    <liquid:depleted_mix_239_fluoride_flibe>,
    <liquid:depleted_mix_241_fluoride_flibe>,
    <liquid:depleted_lea_242_fluoride_flibe>,
    <liquid:depleted_hea_242_fluoride_flibe>,
    <liquid:depleted_lecm_243_fluoride_flibe>,
    <liquid:depleted_hecm_243_fluoride_flibe>,
    <liquid:depleted_lecm_245_fluoride_flibe>,
    <liquid:depleted_hecm_245_fluoride_flibe>,
    <liquid:depleted_lecm_247_fluoride_flibe>,
    <liquid:depleted_hecm_247_fluoride_flibe>,
    <liquid:depleted_leb_248_fluoride_flibe>,
    <liquid:depleted_heb_248_fluoride_flibe>,
    <liquid:depleted_lecf_249_fluoride_flibe>,
    <liquid:depleted_hecf_249_fluoride_flibe>,
    <liquid:depleted_lecf_251_fluoride_flibe>,
    <liquid:depleted_hecf_251_fluoride_flibe>
] as ILiquidStack[];

for name, fluid in fluorides {
    hideLiquidAndBucket(fluid);
    Electrolyzer.removeRecipeWithInput(fluid * 72);
    ChemicalReactor.removeRecipeWithOutput(fluid * 72, null);
}

for fluid in fluoride_flibes {
    hideLiquidAndBucket(fluid);
    Centrifuge.removeRecipeWithInput(fluid * 72);
    SaltMixer.removeRecipeWithOutput(fluid * 72);
}

for fluid in depleted_fluorides {
    hideLiquidAndBucket(fluid);
    Electrolyzer.removeRecipeWithInput(fluid * 72);
}

for fluid in depleted_fluoride_flibes {
    hideLiquidAndBucket(fluid);
    Centrifuge.removeRecipeWithInput(fluid * 72);
}
