{pkgs ? import ./nix/pkgs.nix {}}:
[
    pkgs.bash
    pkgs.coreutils
    pkgs.mercury
    pkgs.snowflake
]
