// TR: Sync Scripts #32 | 22/1/14
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val creative_tab = <creativetab:materials.base>;

val block_ids as string[] = ["calcite", "basalt"];
val block_property as float[][string] = {
	"calcite" : [8.0, 8.0, 1],
	"basalt" : [12.5, 15.0, 2]
};

for i in block_ids {
	var block = VanillaFactory.createBlock(i, <blockmaterial:rock>);
	block.setBlockHardness(block_property[i][0]);
	block.setBlockResistance(block_property[i][1]);
	block.setToolClass("pickaxe");
	block.setToolLevel(block_property[i][2]);
	block.setBlockSoundType(<soundtype:stone>);
	block.creativeTab = creative_tab;
	block.register();
}
