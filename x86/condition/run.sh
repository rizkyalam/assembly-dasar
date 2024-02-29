BUILD_DIR=../../build/x86/condition
if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

make

./$BUILD_DIR/main
