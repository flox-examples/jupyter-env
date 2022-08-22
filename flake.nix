rec {
  description = "Go Language Gin Framework Development Environment";

  inputs.capacitor.url = "git+ssh://git@github.com/flox/capacitor";
  inputs.capacitor.inputs.root.follows = "/";
  inputs.capacitor.inputs.nixpkgs.follows = "nixpkgs";

  inputs.nixpkgs.url = "git+ssh://git@github.com/flox/nixpkgs-flox";

  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";

  outputs = inputs:
    inputs.capacitor inputs ({auto, ...}: {
      config.extraPlugins = [
        (inputs.capacitor.plugins.allLocalResources {})
        (inputs.capacitor.plugins.nixpkgs)
      ];
    });
}
