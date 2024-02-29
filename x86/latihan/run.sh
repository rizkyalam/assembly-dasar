BUILD_DIR=../../build/x86/latihan
if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

make

./$BUILD_DIR/main

echo $? # print the output
