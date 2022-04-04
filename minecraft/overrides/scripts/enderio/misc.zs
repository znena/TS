// TR: Sync Scripts #36 | 22/1/15

// Conductive Alloy

recipes.addShapeless("main/conductive_iron_dust", <contenttweaker:conductive_iron_dust>,
		[<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>, <contenttweaker:conductive_iron_small_dust>,
		<contenttweaker:conductive_iron_small_dust>]);
recipes.addShapeless("main/conductive_iron_small_dust",
		<contenttweaker:conductive_iron_small_dust> * 9, [<contenttweaker:conductive_iron_dust>]);
		
furnace.addRecipe(<enderio:item_alloy_nugget:4>, <contenttweaker:conductive_iron_small_dust>);
furnace.addRecipe(<enderio:item_alloy_ingot:4>, <contenttweaker:conductive_iron_dust>);

recipes.addShapeless("main/conductive_iron_dust_alloy", <contenttweaker:conductive_iron_small_dust>,
		[<ore:dustRefinedIron>, <ore:dustRefinedIron>, <fluxnetworks:flux>, <fluxnetworks:flux>]);
