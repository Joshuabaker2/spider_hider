#define DLIB_NO_GUI_SUPPORT
// #define DLIB_JPEG_SUPPORT
#define DLIB_PNG_SUPPORT
#define NO_MAKEFILE

#include <dlib/svm_threaded.h>
#include <dlib/image_processing.h>
#include <dlib/data_io.h>

#include <stdio.h>
#include <emscripten.h>

using namespace std;
using namespace dlib;

// ----------------------------------------------------------------------------------------
// g++ -o spider_hider -O3 -I.. spider_hider.cpp -lpng
// emcc -I.. -s USE_LIBPNG=1 spider_hider.cpp
// emcc -O3 -I.. -s USE_LIBPNG=1 spider_hider.cpp -o spider_hider.js
int main(int argc, char** argv) {
    try {

        // mount the current folder as a NODEFS instance
        // inside of emscripten
        // https://github.com/kripken/emscripten/blob/master/tests/fs/test_nodefs_rw.c
        EM_ASM(
          FS.mkdir('/working');
          FS.mount(NODEFS, { root: '.' }, '/working');
        );

        array2d<rgb_pixel> img;
        // load the image as an array2d (dlib specific type)
        load_image(img, "/working/brown_widow_spider_large.png");

        typedef scan_fhog_pyramid<pyramid_down<10> > image_scanner_type;

        object_detector<image_scanner_type> detector;

        // deserialize our saved spider detector
        deserialize("/working/spider_detector.svm") >> detector;

        // Run the detector and get the spider detections.
        std::vector<rectangle> dets = detector(img);
        if (dets.size() > 0) {
          printf("Spider detected");
        } else {
          printf("Spider not detected");
        }
    }
    catch (exception& e)
    {
        cout << "\nexception thrown!" << endl;
        cout << e.what() << endl;
    }
}
