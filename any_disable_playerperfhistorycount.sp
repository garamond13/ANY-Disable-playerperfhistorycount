#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
	name = "ANY disable playerperfhistorycount",
	author = "Garamond",
	description = "Sets sv_playerperfhistorycount to 0",
	version = "1.0.0",
	url = "https://github.com/garamond13/ANY-Disable-playerperfhistorycount"
};

static const char sv_playerperfhistorycount[] = "sv_playerperfhistorycount";

public void OnPluginStart()
{
	SetConVarBounds(FindConVar(sv_playerperfhistorycount), ConVarBound_Lower, false);
}

public void OnConfigsExecuted()
{
	SetConVarInt(FindConVar(sv_playerperfhistorycount), 0);
}