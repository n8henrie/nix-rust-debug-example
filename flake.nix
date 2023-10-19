# flake.nix
{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  outputs = {nixpkgs, ...}: let
    system = "aarch64-darwin";
  in {
    packages.${system}.default = let
      pkgs = import nixpkgs {inherit system;};
    in
      pkgs.rustPlatform.buildRustPackage {
        pname = "foo";
        buildType = "debug";
        dontStrip = true;
        version = "0.0.1";
        src = ./.;
        cargoHash = "sha256-p1UJmkerUpvbkZKZYPpqMixWdL3mHSwYsiHo14AUih8=";
      };
  };
}
