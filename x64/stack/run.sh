BUILD_DIR=../../build/x64/stack
if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

make

./$BUILD_DIR/main
