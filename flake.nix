{
  description = "A very basic flake";

  outputs = { self, nixpkgs}: {
    packages.x86_64-linux.test = let 
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      package = { stdenv, fetchzip }: (stdenv.mkDerivation {
        name = "test";
        srcs = [
          (fetchzip { url = "http://localhost:8000/foo.zip"; sha256 = "sha256-PLeZLTrwz3B0YjiEk6XrFx6TbLJrLgX2F255bPLzUgg="; }) 
          (fetchzip { url = "http://localhost:8000/bar.zip"; sha256 = "sha256-q0GT59q6jHKTbzRQYlAX1gvFBZ9/tvjLT55AlI5J1Xk="; }) 
        ];
      });
    in pkgs.callPackage package {};

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.test;

  };
}
