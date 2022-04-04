// TR: Sync Scripts #5 | 22/1/15

import crafttweaker.item.IItemStack;

// Refined Iron Ingot

furnace.remove(<techreborn:ingot:19>);
furnace.addRecipe(<techreborn:nuggets:19> * 3, <minecraft:iron_ingot>, 5);
furnace.addRecipe(<techreborn:ingot:19>, <contenttweaker:refined_iron_dust>, 0);
