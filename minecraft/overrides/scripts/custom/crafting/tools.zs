// TR: Sync Scripts #27 | 22/1/25

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.gamestages.age_one_id as age_one_id;

// Hammer

val Materials = [<ore:ingotRefinedIron>, <ore:ingotBronze>, <ore:ingotTough>] as IIngredient[];
val Hammers = [<contenttweaker:refined_iron_hammer>, <contenttweaker:bronze_hammer>,
		<contenttweaker:tough_alloy_hammer>] as IItemStack[];
val mat_od = ["refined_iron", "bronze", "tough_alloy"] as string[];
		
for i in 0 to 3 {
	mods.recipestages.Recipes.addShaped(age_one_id, Hammers[i],
			[[Materials[i], Materials[i], null],
			[Materials[i], Materials[i], <contenttweaker:plastic_rode>],
			[Materials[i], Materials[i], null]]);
}


// Mortar

recipes.addShaped("main/mortar.boron", <contenttweaker:boron_mortar>,
		[[null, <ore:ingotBoron>, null],
		 [<ore:stoneBasalt>, <ore:ingotBoron>, <ore:stoneBasalt>],
		 [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>]]);
