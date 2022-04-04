// TR: Sync Scripts #20 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<techreborn:grinder> :
		[[<minecraft:flint>, <minecraft:diamond>, <minecraft:flint>],
		 [<ore:stone>, <techreborn:machine_frame>, <ore:stone>],
		 [null, <techreborn:part:40>, null]],
	<techreborn:plate_bending_machine> :
		[[<ore:craftingPiston>, <techreborn:part:29>, <ore:craftingPiston>],
		 [<techreborn:machine_frame>, <techreborn:machine_frame>, <techreborn:machine_frame>],
		 [<ore:craftingPiston>, <techreborn:part:29>, <ore:craftingPiston>]],
	<techreborn:machine_casing> :
		[[<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>],
		 [<techreborn:part:29>, <techreborn:machine_frame>, <techreborn:part:29>],
		 [<techreborn:plates:35>, <techreborn:plates:35>, <techreborn:plates:35>]],
	<techreborn:iron_furnace> :
		[[null, <techreborn:ingot:19>, null],
		 [<techreborn:ingot:19>, <minecraft:furnace>, <techreborn:ingot:19>],
		 [null, <techreborn:ingot:19>, null]],
	<techreborn:water_mill> :
		[[<techreborn:plates>, <libvulpes:productrod:1>, <techreborn:plates>],
		 [<libvulpes:productrod:1>, <techreborn:solid_fuel_generator>, <libvulpes:productrod:1>],
		 [<techreborn:plates>, <libvulpes:productrod:1>, <techreborn:plates>]]
} as IIngredient[][][IItemStack];


for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("machine/lv." ~ o.name, o, r);
}


// Only Removes

recipes.removeByRecipeName("techreborn:semi_fluid_generator");
