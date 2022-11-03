cd src/lib/spconv
python3 setup.py bdist_wheel
pip3 install dist/spconv-1.0-cp38-cp38-linux_x86_64.whl
pip install spconv-cu114
cd ../pointgroup_ops
python3 setup.py develop
cd ../knn
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8
cd ../../../cpp
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8
