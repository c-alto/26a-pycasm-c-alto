all:
	rm -rf build/*
	mkdir -p build
	clang -fPIC -Wall -g codigo/src/bridge.c codigo/src/ops.s -shared -o build/libops.so

clean:
	rm -rf build/*
