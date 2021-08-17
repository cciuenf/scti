with import <nixpkgs> {};

mkYarnPackage {
  name = "scti";
  version = "2021.0.1";
  src = ./.;
  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;

  nativeBuildInputs = [ nodejs-16_x ninja python39 ];

  postBuild = ''
    ${yarn} build
  '';

  meta = with lib; {
    description = "Website para a Semana Acadêmica de Ciência da Computação e Tecnologia da Informação";
    homepage = "https://scti.uenf.br";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ matdsoupe ];
  };
}
