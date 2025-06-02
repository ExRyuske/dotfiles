{
    inputs = {
        nixpkgs.url = github:NixOS/nixpkgs/nixos-25.05;
        nixpkgs-unstable.url = github:NixOS/nixpkgs/nixos-unstable;
        disko.url = "github:nix-community/disko/latest";
        disko.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, nixpkgs-unstable, disko, ... }@inputs: {
        nixosConfigurations.desktop = nixpkgs-unstable.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs; };
            modules = [
                disko.nixosModules.disko
                ./desktop
            ];
        };
    };
}