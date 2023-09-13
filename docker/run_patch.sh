cd ../
work_path="$PWD"
a="$(which python)"
cd "$(dirname "$(dirname "$a")")/lib/python3.8/site-packages"
 
patch -p0 < "$work_path/docker/openmm.patch"
patch -p1 < "$work_path/docker/jax_0.3.14_ROCM.patch"