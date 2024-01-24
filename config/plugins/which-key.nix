{ config, lib, pkgs, ... }:
{
  plugins.which-key.enable = true;

  imports = [
    ./telescope.nix
    ./buffer.nix
  ];

  combinded = telescope.config.reg;

  plugins.which-key.registrations = config.combinded;
}
