#modloaded tieredmagnets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.remove;
import scripts.utils.removeAndHide.removeList;

val items = [
    <tieredmagnets:magnet_durability_iron>.withTag({filterModeBlacklist: 1 as byte, range: 10, enabled: 0 as byte}),
    <tieredmagnets:magnet_durability_redstone>.withTag({filterModeBlacklist: 1 as byte, range: 18, enabled: 0 as byte}),
    <tieredmagnets:magnet_durability_gold>.withTag({filterModeBlacklist: 1 as byte, range: 26, enabled: 0 as byte}),
    <tieredmagnets:magnet_durability_obsidian>.withTag({filterModeBlacklist: 1 as byte, range: 34, enabled: 0 as byte}),
    <tieredmagnets:magnet_durability_lapis>.withTag({filterModeBlacklist: 1 as byte, range: 42, enabled: 0 as byte}),
    <tieredmagnets:magnet_durability_diamond>.withTag({filterModeBlacklist: 1 as byte, range: 50, enabled: 0 as byte}),
    <tieredmagnets:magnet_durability_emerald>.withTag({filterModeBlacklist: 1 as byte, range: 58, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_stone>.withTag({filterModeBlacklist: 1 as byte, range: 5, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_iron>.withTag({filterModeBlacklist: 1 as byte, range: 25, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_redstone>.withTag({filterModeBlacklist: 1 as byte, range: 45, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_gold>.withTag({filterModeBlacklist: 1 as byte, range: 65, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_obsidian>.withTag({filterModeBlacklist: 1 as byte, range: 85, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_lapis>.withTag({filterModeBlacklist: 1 as byte, range: 105, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_diamond>.withTag({filterModeBlacklist: 1 as byte, range: 125, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_durability_emerald>.withTag({filterModeBlacklist: 1 as byte, range: 145, enabled: 0 as byte}),
    <tieredmagnets:magnet_energy_reinforced>.withTag({filterModeBlacklist: 1 as byte, range: 24, enabled: 0 as byte}),
    <tieredmagnets:magnet_energy_signalum>.withTag({filterModeBlacklist: 1 as byte, range: 32, enabled: 0 as byte}),
    <tieredmagnets:magnet_energy_resonant>.withTag({filterModeBlacklist: 1 as byte, range: 40, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_energy_leadstone>.withTag({filterModeBlacklist: 1 as byte, range: 8, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_energy_hardened>.withTag({filterModeBlacklist: 1 as byte, range: 16, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_energy_reinforced>.withTag({filterModeBlacklist: 1 as byte, range: 24, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_energy_signalum>.withTag({filterModeBlacklist: 1 as byte, range: 32, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_energy_resonant>.withTag({filterModeBlacklist: 1 as byte, range: 40, enabled: 0 as byte}),
    <tieredmagnets:magnet_free>.withTag({ench: [{lvl: 1 as short, id: 71 as short}], filterModeBlacklist: 1 as byte, range: 64, enabled: 0 as byte}),
    <tieredmagnets:magnet_magic_free>.withTag({ench: [{lvl: 1 as short, id: 71 as short}], filterModeBlacklist: 1 as byte, range: 64, enabled: 0 as byte})
] as IItemStack[];

removeList(items);
