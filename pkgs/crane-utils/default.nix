{ lib
, rustPlatform
}:

rustPlatform.buildRustPackage {
  pname = "crane-utils";
  version = "0.0.1";
  useFetchCargoVendor = true;

  src = lib.sourceFilesBySuffices ./. [ ".rs" ".toml" ".lock" ];

  cargoHash = "sha256-yhq6h4dq+jg/fxgB3M/sODLNutUbx8nXRX9kps7rhFE=";
}
