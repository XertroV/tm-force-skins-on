const string PluginName = Meta::ExecutingPlugin().Name;
const string PluginNameHash = Crypto::MD5(PluginName); // TODO: this isn't needed once you do the 2 below TODOs
const string MenuIconColor = "\\$" + PluginNameHash.SubStr(0, 3); // TODO: replace with "\\$f83" or whatever
const string PluginIcon = GetRandomIcon(PluginNameHash); // TODO: replace with a specific icon, e.g., Icons::Bath
const string MenuTitle = MenuIconColor + PluginIcon + "\\$z " + PluginName;

void Main() {
    ForceSkinsPatch.IsApplied = true;
}

/** Called when the plugin is enabled from the settings, the menu or programatically via the [`Meta` API](https://openplanet.dev/docs/api/Meta).
*/
void OnEnabled() {
    ForceSkinsPatch.IsApplied = true;
}

/** Called when the plugin is unloaded and completely removed from memory.
*/
void OnDestroyed() {
    ForceSkinsPatch.IsApplied = false;
}

/** Called when the plugin is disabled from the settings, the menu or programatically via the [`Meta` API](https://openplanet.dev/docs/api/Meta).
*/
void OnDisabled() {
    ForceSkinsPatch.IsApplied = false;
}

MemPatcher@ ForceSkinsPatch = MemPatcher("83 B8 90 01 00 00 00 74 0A B8 01 00 00 00 48 83 C4 ?? C3", {7}, {"EB"}, {"74"});
