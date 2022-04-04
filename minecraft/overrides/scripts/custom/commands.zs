// TR: Sync Scripts #12 | 22/1/29

import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;
import scripts.utils.cheatingmode_password as cheatingmode_password;

val cm_data = {cheating_mode : true} as IData;

val commandCm as ZenCommand = ZenCommand.create("cheatingmode");
commandCm.getCommandUsage = function(sender) {
    return "commands.cheatingmode.usage";
};
commandCm.execute = function(command, server, sender, args) {
	val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
	if (args.length == 1) {
		if (args[0] == cheatingmode_password) {
			val custom_data = player.world.getCustomWorldData() as IData;
			if (custom_data.keys has "cheating_mode") {
				player.sendRichTextMessage(format.red("此世界已经启用过 Sync 作弊模式。"));
				return;
			}
			player.world.setCustomWorldData(cm_data);
			player.sendRichTextMessage(format.yellow("已启用所有禁用的指令！这意味着此世界无法被评价 Gnz 积分。"));
		}
	} else {
		player.sendRichTextMessage(format.red("此指令已经被 TechReborn：Sync 禁用！"));
	}
};
// commandCm.register();
# unable script.
