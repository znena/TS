// TR: Sync Scripts #25 | 22/1/16

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

val plate_def = <techreborn:plates>.definition as IItemDefinition;

val Ingots_od = [<ore:ingotCopper>, <ore:ingotTin>, <ore:ingotLead>, <ore:ingotSilver>,
		<ore:ingotRefinedIron>, <ore:ingotBronze>, <ore:ingotElectrum>] as IIngredient[];
val Plates_meta = [21, 30, 25, 28, 35, 19, 22] as int[];
val Dusts = [<techreborn:dust:14>, <techreborn:dust:53>, <techreborn:dust:29>, <techreborn:dust:47>,
		<contenttweaker:refined_iron_dust>, <techreborn:dust:7>, <techreborn:dust:17>] as IItemStack[];
val req_dur = [2, 2, 2, 3, 3, 3, 5] as int[];
val mat_od = ["copper", "tin", "lead", "silver", "refined_iron", "bronze", "electrum"] as string[];

for i in 0 to 7 {
	recipes.addShapeless("mat/plates." ~ mat_od[i], plate_def.makeStack(Plates_meta[i]),
			[<ore:hammer>.transformDamage(req_dur[i]), Ingots_od[i], Ingots_od[i], Ingots_od[i]]);
	recipes.addShapeless("mat/dust." ~ mat_od[i], Dusts[i],
			[<ore:mortar>.transformDamage(req_dur[i]), Ingots_od[i]]);
}
