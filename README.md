# spider_hider
Chrome extension to hide spiders

In the dlib/examples folder, you can do the following:

    g++ -o spider_detector_url -O3 -I.. ../dlib/all/source.cpp -lpthread -lX11 spider_detector_url.cpp `pkg-config --cflags --libs opencv` -lcurl
