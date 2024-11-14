{ pkgs, ... }: {
  packages = [];
  bootstrap = ''
    mkdir "$out"
    cp -rf ${./.}/* "$out"
    mkdir "$out/.idx"
    cp -rf ${./.}/.idx "$out"
    cp -rf ${./.}/.gitignore "$out"
    cp -rf ${./.}/.editorconfig "$out"
    cp -rf ${./.}/.nojekyll "$out"
    cp -rf ${./.}/.nvmrc "$out"
    rm "$out/idx-template.nix"
    rm "$out/idx-template.json"
    chmod -R u+w "$out"
  '';
}