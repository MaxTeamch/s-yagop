do local _ = {
  disabled_channels = {
  },
  disabled_plugin_on_chat = {
  },
  enabled_plugins = {
    "anti-flood",
    "antispam",
    "banhammer",
    "delmsg",
    "help",
    "id",
    "moderation",
    "mute",
    "plugins",
    "gpmod",
    "why",
    "warn",
    "invite",
    "setadmin"
  },
  moderation = {
    data = "data/moderation.json"
  },
  sudo_users = {
    INSERT_YOUR_ID_HERE
  }
}
return _
end
