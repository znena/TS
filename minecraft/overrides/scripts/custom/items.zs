// TR: Sync Scripts #18 | 22/1/16
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val creative_tab = <creativetab:materials.base>;

val item_ids as string[] = ["boron_nugget", "lithium_nugget", "magnesium_nugget",
		"rough_plastic_plate", "rough_energetic_alloy_ingot", "plastic_rode", "calcite_dust",
		"refined_iron_dust", "conductive_iron_dust", "conductive_iron_small_dust"];
val itemtool_ids as string[] = ["refined_iron_hammer", "bronze_hammer", "tough_alloy_hammer",
		"boron_mortar"];
val itemtool_maxdamage as string[] = [80, 160, 240, 100];

for i in item_ids {
	var item = VanillaFactory.createItem(i);
	item.creativeTab = creative_tab;
	item.register();
}

for i in 0 to 4 {
	var item = VanillaFactory.createItem(itemtool_ids[i]);
	item.maxDamage = itemtool_maxdamage[i];
	item.creativeTab = creative_tab;
	item.register();
}
