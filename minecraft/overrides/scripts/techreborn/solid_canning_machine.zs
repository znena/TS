// TR: Sync Scripts #34 | 22/1/25

import crafttweaker.item.IItemStack;
import mods.techreborn.solidCanningMachine;

val water_cell as IItemStack = <techreborn:dynamiccell>.withTag(
		{Fluid: {FluidName: "water", Amount: 1000}});
val sodium_cell as IItemStack = <techreborn:dynamiccell>.withTag(
		{Fluid: {FluidName: "fluidsodium", Amount: 1000}});

solidCanningMachine.addRecipe(sodium_cell,
		<techreborn:dynamiccell>, <contenttweaker:calcite_dust> * 2, 1800, 32);
