{stdenv,python3Packages,contextily,alejandra, ...}:
stdenv.mkDerivation {
name = "env";
shellHook = ''
    echo Welcome to Python Jupyter Notebook Development Environment
'';
buildInputs = [
    python3Packages.geopandas
    python3Packages.pandas
    python3Packages.numpy
    python3Packages.scipy
    python3Packages.matplotlib
    python3Packages.jupyter
    python3Packages.plotly
    python3Packages.pygeos
    python3Packages.shapely
    python3Packages.geopy
    # Custom packages
    #contextily,
  ];
}
