# quake4project
put the mod folder "mods2019" into the Quake 4 folder that contains the Quake4.exe
start the mod by using the shortcut provided in the mod folder "mods2019".

if shortcut doesnt work create a new shortcut of the quake4.exe and add the following to the end of target line
 +set com_allowConsole 1 +disconnect +set fs_game mods2019 +map game/waste
