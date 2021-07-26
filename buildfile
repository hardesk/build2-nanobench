
lib{nanobench}: upstream/nanobench/src/include/{hxx}{nanobench}

cxx.poptions =+ "-I$out_root" "-I$src_root"

lib{nanobench}:
{
  cxx.export.poptions = "-I$out_root" "-I$src_root"
}

lib{nanobench}: bin.lib.version = @"-$version.major.$version.minor"

{hxx ixx txx}{*}:
{
  install         = include/nanobench/
  install.subdirs = false
}
