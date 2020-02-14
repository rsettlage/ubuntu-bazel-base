git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
##git checkout v2.1.0
./configure
bazel build //tensorflow/tools/pip_package:build_pip_package

## may need to softlink python3 to python in /usr/bin
./bazel-bin/tensorflow/tools/pip_package/build_pip_package /temp/tensorflow_pkg

## to install
## need to chown the whl in sudo
##pip install /temp/tensorflow_pkg/tensorflow-version-tags.whl
