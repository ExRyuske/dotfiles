{
    inputs = {
        nixpkgs.url = github:NixOS/nixpkgs/nixos-25.05;
        nixpkgs-unstable.url = github:NixOS/nixpkgs/nixos-unstable;
        disko.url = "github:nix-community/disko/latest";
        disko.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, nixpkgs-unstable, disko, ... }@inputs: {
        nixosConfigurations.desktop = nixpkgs-unstable.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./hardware-configuration.nix
                disko.nixosModules.disko
                ./disko.nix
                { disko.devices.disk.main.device = nixpkgs-unstable.lib.mkForce "/dev/sda";}
                ./desktop
            ];
        };
    };
}