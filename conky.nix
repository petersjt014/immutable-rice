{ pkgs }:
let
  colors = import ./i3config/colors.nix;
  textcolor = builtins.replaceStrings ["#"] [""] colors.dark;

  conky-config = 
    import ./dotfiles/conky.nix { inherit textcolor; };

  conky-config-file =
    pkgs.writeTextFile {
      name = "technomancer-conky.conf";
      text = conky-config;
    };
in
  pkgs.writeScript 
    "svarog-conky" 
    "${pkgs.conky}/bin/conky -c ${conky-config-file}"