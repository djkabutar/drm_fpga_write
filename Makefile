FLAGS=`pkg-config --cflags --libs libdrm`
FLAGS+=-Wall -O3
FLAGS+=-D_FILE_OFFSET_BITS=64

all:
	clang -o modeset-double-buffered modeset-double-buffered.c $(FLAGS)
	clang -o modeset modeset.c $(FLAGS)
	clang -o custom custom.c $(FLAGS)
	clang -o modeset-vsync modeset-vsync.c $(FLAGS)
	clang -o modeset-atomic modeset-atomic.c $(FLAGS)
