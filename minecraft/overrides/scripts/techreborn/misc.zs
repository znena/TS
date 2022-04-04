// TR: Sync Scripts #33 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

// Shaped

val sodium_cell as IIngredient = <techreborn:dynamiccell>.withTag(
		{Fluid: {FluidName: "fluidsodium", Amount: 1000}});

val Recipes_shaped = {
	<techreborn:dynamiccell> * 4 :
		[[null, <ore:ingotTin>, null],
		 [<ore:ingotTin>, null, <ore:ingotTin>],
		 [null, <ore:ingotTin>, null]],
	<techreborn:part:10> :
		[[<ore:plateTin>, sodium_cell, <ore:plateTin>],
		 [sodium_cell, <techreborn:part:36>, sodium_cell],
		 [<ore:plateTin>, sodium_cell, <ore:plateTin>]],
	<techreborn:machine_casing> :
		[[<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>],
		 [<techreborn:part:29>, <techreborn:machine_frame>, <techreborn:part:29>],
		 [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]],
	<techreborn:rebattery> :
		[[<techreborn:cable:1>, <techreborn:cable:1>, <techreborn:cable:1>],
		 [<ore:ingotTin>, <fluxnetworks:flux>, <ore:ingotTin>],
		 [<ore:ingotTin>, <fluxnetworks:flux>, <ore:ingotTin>]],
	<contenttweaker:rough_plastic_plate> :
		[[<techreborn:part:32>, <techreborn:part:32>, <techreborn:part:32>],
		 [<techreborn:part:32>, <minecraft:reeds>, <techreborn:part:32>],
		 [<techreborn:part:32>, <techreborn:part:32>, <techreborn:part:32>]]
} as IIngredient[][][IItemStack];


for o, r in Recipes_shaped {
	recipes.remove(o.anyAmount());
	recipes.addShaped("main/misc." ~ o.name, o, r);
}


// Shapeless

val Recipes_shapeless = {
	<techreborn:part:42> : [<ore:circuitBasic>, <techreborn:cable:6>, <ore:dustLapis>,
			<ore:plateInvar>]
} as IIngredient[][IItemStack];

for o, r in Recipes_shapeless {
	recipes.remove(o);
	recipes.addShapeless("main/misc." ~ o.name, o, r);
}


// Cables

val cable_def = <techreborn:cable>.definition as IItemDefinition;
val Recipes_cables = {
	1 : <ore:ingotTin>,
	0 : <ore:ingotBronze>,
	2 : <ore:ingotEnergeticAlloy>
} as IIngredient[int];

for i, j in Recipes_cables {
	recipes.remove(cable_def.makeStack(i));
	recipes.addShaped("main/cable_" ~ i, cable_def.makeStack(i) * 3,
			[[j, j, j]]);
}


// Only Removes

recipes.removeByRecipeName("techreborn:machine_casing_3");
recipes.removeByRecipeName("techreborn:assembling_machine");
recipes.removeByRecipeName("techreborn:lsu_storage");
recipes.removeByRecipeName("techreborn:upgrades_1");

val removed_cable_craftings as int[] = [5, 6, 7, 9, 11];
for i in removed_cable_craftings {
	recipes.removeByRecipeName("techreborn:cable_" ~ i);
}


// Others

furnace.addRecipe(<nuclearcraft:part:6>, <contenttweaker:rough_plastic_plate>, 10);
