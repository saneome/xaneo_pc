{ stdenv }:

stdenv.mkDerivation rec {
  pname = "xaneo-pc";
  version = "1.0.0";

  src = ./bundle;

  installPhase = ''
    mkdir -p $out/bin
    cp -r . $out/bin/
    chmod +x $out/bin/xaneo_pc_new
  '';

  meta = with stdenv.lib; {
    description = "Xaneo PC - Desktop application with onboarding";
    license = licenses.mit; # или другой
    platforms = platforms.linux;
  };
}