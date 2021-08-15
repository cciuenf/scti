with import <nixpkgs> {};

mkYarnPackage {
  name = "scti";
  src = ./.;
  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;

  nativeBuildInputs = [ nodejs-16_x ninja python39 ];

  postBuild = ''
    ${yarn} build
  '';

  meta = with lib; {
    description = "Website para a Semana Acadêmica de Ciência da Computação e Tecnologia da Informação";
    homepage = "";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ matdsoupe ];
  }
}
