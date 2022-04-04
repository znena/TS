// TR: Sync Scripts #3 | 22/1/30
#priority 997

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Difinition

global age_one_id as string = "age_amina_first";
global age_two_id as string = "age_amina_second";
global age_three_id as string = "age_balta_first";
global age_four_id as string = "age_balta_second";
global age_five_id as string = "age_cyxa";

global age_creative_id as string = "age_creative";


// Change with Definition

val ages = {
	"age_amina_first" : [[<improvedextraction:cutting_table>, <improvedextraction:auto_cutting_table>],
			[<nuclearcraft:ore:5>, <minecraft:diamond>, <techreborn:ore:0>],
			[<techreborn:ore:6>, <techreborn:ore:7>]],
	"age_amina_second" : [[<techreborn:industrial_blast_furnace>, <techreborn:assembling_machine>],
			[<libvulpes:ore0:9>, <libvulpes:ore0:10>, <techreborn:ore:4>], []],
	"age_balta_first" : [[],
			[<libvulpes:ore0:0>, <libvulpes:ore0:8>, <nuclearcraft:ore:3>, <nuclearcraft:ore:4>,
			 <nuclearcraft:ore:6>, <nuclearcraft:ore:7>, <techreborn:ore:1>], [<tconstruct:ore:*>]], 
	"age_creative" : [[],
			[<nuclearcraft:ore:0>, <nuclearcraft:ore:1>, <nuclearcraft:ore:2>, <libvulpes:ore0:4>,
			 <libvulpes:ore0:5>, <libvulpes:ore0:9>, <libvulpes:ore0:10>], []]
} as IIngredient[][][string];

val Mod_item_stages = {
	"age_amina_second" : ["nuclearcraft", "tconstruct", "conarm", "ironchest", "quantumstorage"],
	"age_balta_first" : ["advancedrocketry", "fluxnetworks", "enderio", "astralsorcery"],
	"age_balta_second" : ["psi"]
} as string[][string];


// Mod Item Stages

for i, j in Mod_item_stages {
	for m in j {
		mods.ItemStages.stageModItems(i, m);
	}
}


// Item Stages & Ore Stages

for i in ages {
	for j in ages[i][0] {
		mods.ItemStages.addItemStage(i, j);
	}
	for j in ages[i][1] {
		mods.ItemStages.addItemStage(i, j);
		mods.orestages.OreStages.addReplacement(i, j);
	}
	for j in ages[i][2] {
		mods.ItemStages.addItemStage(i, j);
		mods.orestages.OreStages.addReplacement(i, j, <minecraft:netherrack>);
	}
}


// Item Stage Removes

val remove_age_items = [<tconstruct:tooltables>, <tconstruct:rack>, <tconstruct:rack:1>, <fluxnetworks:flux>,
		<enderio:item_alloy_nugget:4>, <enderio:item_alloy_ingot:4>, <nuclearcraft:part:6>,
		<advancedrocketry:satelliteprimaryfunction>] as IItemStack[];

for i in remove_age_items {
	mods.ItemStages.removeItemStage(i);
}


// Map Stages

mods.jmapstages.JMapStages.setFullscreenStage(age_one_id);
mods.jmapstages.JMapStages.setDeathpointStage(age_two_id);
mods.jmapstages.JMapStages.setWaypointStage(age_two_id);
