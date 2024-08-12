#!/bin/bash
cd /src/darknet
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8 package
dpkg -i *.deb

cd /src/DarkHelp
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8 package
dpkg -i *.deb

cd /src
cp /src/darknet/build/*.deb /out
cp /src/DarkHelp/build/*.deb /out