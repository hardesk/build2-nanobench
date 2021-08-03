
lib{nanobench}: upstream/nanobench/src/include/{hxx}{nanobench}

# "-I$out_root"
cxx.poptions =+ "-I$src_root"

lib{nanobench}:
{
  # "-I$out_root"
  cxx.export.poptions = "-I$src_root/upstream/nanobench/src/include"
}

lib{nanobench}: bin.lib.version = @"-$version.major.$version.minor"

{hxx ixx txx}{*}:
{
  install         = include/nanobench/
  install.subdirs = false
}
