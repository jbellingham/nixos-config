{ config, pkgs, ... }: {
    # Ensure zsh is installed and enabled as the default shell
    # command -v zsh | sudo tee -a /etc/shells
    # chsh -s $(which zsh)

    programs.zsh.enable = true;
    users.users."jesse".shell = pkgs.zsh;

    home-manager.users."jesse" = {
        programs.zsh = {
            enable = true;
            autosuggestion.enable = true;
            syntaxHighlighting.enable = true;
            autocd = true;

            shellAliases = {
                update = "(cd ~/nixos-config && make)";
                makespace = "(cd ~/nixos-config && make space)";
                ll = "ls -latr";

                cat = "bat";
                top = "btop";
                grep = "grep -iF --color=auto";
                say = "spd-say";
                pbcopy = "xsel --clipboard --input";
                pbpaste = "xsel --clipboard --output";
            };

            plugins = [
            {
                name = "fzf-tab";
                src = pkgs.fetchFromGitHub {
                    owner = "Aloxaf";
                    repo = "fzf-tab";
                    rev = "v1.1.2";
                    sha256 = "Qv8zAiMtrr67CbLRrFjGaPzFZcOiMVEFLg1Z+N6VMhg=";
                };
            }];
        };
    };
}