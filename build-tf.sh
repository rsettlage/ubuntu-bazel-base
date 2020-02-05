git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout v2.1.0
./configure
bazel build --config=opt //tensorflow/tools/pip_package:build_pip_package
## bazel build --config=opt --config=cuda //tensorflow/tools/pip_package:build_pip_package
./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
## pip install /tmp/tensorflow_pkg/tensorflow-version-tags.whl
## mv tensorflow-version-tags.whl /temp/
