{ ... }: {
  services.flatpak.enable = true;
  services.flatpak.packages = [
    "com.github.tchx84.Flatseal"

    # Productivity
    "md.obsidian.Obsidian"

    # Coding-related
    "org.gnome.meld"
    "com.jetbrains.IntelliJ-IDEA-Community"

    "com.spotify.Client"

    # Gaming-related
    "net.lutris.Lutris"
    # "org.winehq.Wine"

    # Miscellaneous
    "de.uni_heidelberg.zah.GaiaSky" # Explore the universe in 3D

    # Social
    "com.discordapp.Discord"
    "com.slack.Slack"

    # RSS
    "me.hyliu.fluentreader"
  ];
}