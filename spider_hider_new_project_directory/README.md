g++ -o spider_detector_url -O3 -I.. ../dlib/all/source.cpp -lpthread -lX11 spider_detector_url.cpp `pkg-config --cflags --libs opencv` -lcurl


../pepper_46/toolchain/linux_pnacl/bin/pnacl-clang++ spider_detector_url.cpp -I../pepper_46/include -L../pepper_46/lib/pnacl/Release -o spider_detector_url.pexe -g -O2 -lppapi_cpp -lppapi -I.. ../dlib/all/source.cpp -lpthread -lX11 spider_detector_url.cpp `pkg-config --cflags --libs opencv` -lcurl

../pepper_46/toolchain/linux_pnacl/bin/pnacl-clang++ spider_detector_url.cpp -I../pepper_46/include -L../pepper_46/lib/pnacl/Release -o spider_detector_url.pexe -g -O2 -lppapi_cpp -lppapi


../pepper_46/toolchain/linux_pnacl/bin/pnacl-clang++ spider_detector_url.cpp -I../pepper_46/include/pnacl/sys -I.. ../dlib/all/source.cpp -lpthread -lX11 -I../pepper_46/include -L../pepper_46/lib/pnacl/Release -o spider_detector_url.pexe -g -O3 -lppapi_cpp -libnacl_io -lppapi `pkg-config --cflags --libs opencv` -lcurl

../pepper_46/toolchain/linux_pnacl/bin/pnacl-clang++ spider_detector_url.cpp -I../pepper_46/include/pnacl/sys/ -I.. ../dlib/all/source.cpp -lpthread -lX11 -I../pepper_46/include -L../pepper_46/lib/pnacl/Release -o spider_detector_url.pexe -g -O3 -lppapi_cpp -libnacl_io -lppapi `pkg-config --cflags --libs opencv` -lcurl

cd webports/src
export NACL_SDK_ROOT=/home/josh/spider_hider/pepper_46
make all
or...
make opencv
