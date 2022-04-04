// TR: Sync Scripts #24 | 22/1/11

import mods.techreborn.alloySmelter;


// Conductive Iron

alloySmelter.addRecipe(<enderio:item_alloy_nugget:4> * 2, <ore:ingotRefinedIron>,
		<fluxnetworks:flux>, 3600, 48);
alloySmelter.addRecipe(<enderio:item_alloy_nugget:4> * 2, <ore:dustRefinedIron>,
		<fluxnetworks:flux>, 2400, 48);


// Energetic Alloy

alloySmelter.addRecipe(<contenttweaker:rough_energetic_alloy_ingot>, <ore:ingotGold>,
		<minecraft:redstone> * 2, 1200, 16);
alloySmelter.addRecipe(<contenttweaker:rough_energetic_alloy_ingot>, <ore:dustGold>,
		<minecraft:redstone> * 2, 800, 16);

alloySmelter.addRecipe(<enderio:item_alloy_nugget:1> * 2, <ore:ingotConductiveIron>,
		<contenttweaker:rough_energetic_alloy_ingot> * 2, 4800, 48);
