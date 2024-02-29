BUILD_DIR=../../build/x86/string
if [ ! -d $BUILD_DIR ]; then
    mkdir -p $BUILD_DIR
fi

make

./$BUILD_DIR/replace-byte
