export BASH_SRC=~/workbench/bash/src/$1
 export BASH_BUILD=~/workbench/bash/build
 mkdir -pv ~/workbench/bash
 mkdir $BASH_SRC && mkdir $BASH_BUILD
 cd $BASH_SRC

CC=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc
CC1=~/TOOLCHAINZ/ndk-android-16/bin/arm-linux-androideabi-gcc
CC2=/home/sub77/0android/kernel/arm-cortex-4.9/bin/arm-cortex_a9-linux-gnueabihf-gcc

<<< LIBICONV http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz

./configure \
--build=i686-pc-linux-gnu \
--host=arm-linux-gnueabi \
--prefix=/usr \
CC=/home/sub77/0android/kernel/arm-cortex-4.9/bin/arm-cortex_a9-linux-gnueabihf-gcc \
STRIP=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-strip \
RANLIB=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ranlib \
AR=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ar \
LD=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ld 

make install DESTDIR=/home/sub77/workbench/arm/libicon

<<< LIBGETTEXT	ftp://ftp.gnu.org/pub/gnu/gettext/gettext-latest.tar.gz

./configure \
--build=i686-pc-linux-gnu \
--host=arm-linux-gnueabi \
--prefix=/usr \
--disable-csharp --disable-java --disable-openmp --disable-c++ --disable-native-java \
--enable-static \
--with-libiconv-prefix=/home/sub77/arm/libiconv/usr \
CC=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc \
STRIP=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-strip \
RANLIB=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ranlib \
AR=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ar \
LD=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ld 

make install DESTDIR=/home/sub77/workbench/arm/libgettext

<<< LIBFFI	ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz

./configure \
--build=i686-pc-linux-gnu \
--host=arm-linux-gnueabi \
--prefix=/usr \
CC=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc \
STRIP=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-strip \
RANLIB=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ranlib \
AR=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ar \
LD=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ld 

make install DESTDIR=/home/sub77/arm/libffi

<<< GLIB

./configure \
--build=i686-pc-linux-gnu \
--host=arm-linux-gnueabi \
--cache-file=config.cache \
--prefix=/usr -C --enable-static \
CC=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc \
STRIP=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-strip \
RANLIB=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ranlib \
AR=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ar \
LD=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ld \

make install DESTDIR=/home/sub77/workbench/arm/glib

<<< SLANG	ftp://space.mit.edu/pub/davis/slang/v1.4/slang-1.4.9.tar.gz

./configure \
--build=i686-pc-linux-gnu \
--host=arm-linux-gnueabi \
--prefix=/usr \
CC=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc \
STRIP=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-strip \
RANLIB=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ranlib \
AR=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ar \
LD=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ld 

make install DESTDIR=/home/sub77/workbench/arm/slang

<<< NCURSES

 export NCURSES_SRC=~/workbench/ncurses/src
 export NCURSES_BUILD=~/workbench/ncurses/build
 mkdir -pv ~/workbench/ncurses
 mkdir $NCURSES_SRC && mkdir $NCURSES_BUILD
 cd $NCURSES_SRC

 export INSTALLDIR=~/workbench/gcc-4.8.2/arm
 export PATH=$INSTALLDIR/bin:$PATH
 export TARGETMACH=arm-none-linux-gnueabi
 export BUILDMACH=i686-pc-linux-gnu
 export CROSS=arm-none-linux-gnueabi
 export CC=${CROSS}-gcc
 export LD=${CROSS}-ld
 export AS=${CROSS}-as

 cd ..build/
 ../src/ncurses-5.9/./configure --host=arm-none-linux-gnueabi --prefix=/home/sub77/workbench/ncurses/final --with-shared --without-debug --without-ada --enable-overwrite CC=/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc 
 make
 make install

<<< MC

echo "glib_cv_stack_grows=no" >config.cache
echo "glib_cv_uscore=no" >>config.cache
echo "ac_cv_func_posix_getpwuid_r=yes" >>config.cache
echo "ac_cv_func_posix_getgrgid_r=yes" >>config.cache
PKG_CONFIG_PATH=/home/sub77/workbench/arm/glib/lib/pkgconfig \
GLIB_LIBDIR=/home/sub77/workbench/arm/glib/lib \
./configure --enable-static --host=arm-linux-gnueabi --build=i686-pc-linux-gnu --cache-file=config.cache \
--prefix=/sub/mc \
CC='/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-gcc -static -static-libgcc -fno-exceptions' \
CXX='g++ -static -static-libgcc -fno-exceptions' \
LIBS='-lc' \
STRIP='/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-strip' \
RANLIB='/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ranlib' \
AR='/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ar' \
LD='/home/sub77/Toolchain/bin/arm-architoolchain-linux-gnueabihf-ld' \
PPFLAGS='-I/home/sub77/workbench/arm/libffi/usr/lib/libffi-3.2.1/include -I/home/sub77/workbench/arm/libgettext/usr/include' \
LDFLAGS='-Wl,-static -static -lc -L/home/sub77/workbench/arm/libiconv/usr/lib -L/home/sub77/workbench/arm/libgettext/usr/lib' \
LIBFFI_CFLAGS='-I(home/sub77/workbench/arm/libffi/usr/local/lib/libffi-3.2.1/include' \
LIBFFI_LIBS='-L/home/sub77/workbench/arm/libffi/usr/lib -lffi' \

make install DESTDIR=/home/sub77/arm/mc
