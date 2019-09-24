{ pkgs ?
  import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/ab0308604b93c3e81a330aa668c33ea9ece0bf5d.tar.gz";
    sha256 = "0wmjx6v6zmd9ibsgih13wjmfhamvxgpbd779j9n1cs30mn6b373h";
  }) {}
}:

with pkgs;

stdenv.mkDerivation rec {
  name = "archiver-api";
  src = scripts/build.sh;
  buildInputs = with rustPackages;
    [
        rustup
        docker
        postgresql
    ];

  shellHook = "export RUSTC_WRAPPER=sccache";
}
