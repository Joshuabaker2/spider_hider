#define DLIB_NO_GUI_SUPPORT
// #define DLIB_JPEG_SUPPORT
#define DLIB_PNG_SUPPORT
#define NO_MAKEFILE

#include <dlib/svm_threaded.h>
#include <dlib/image_processing.h>
#include <dlib/data_io.h>

#include <stdio.h>
#include <string>
#include <emscripten.h>

using namespace dlib;

class SpiderDetector {
public:
    SpiderDetector();
    bool isSpider(std::string imgString);
    void setDetector(std::string detectorString);
private:
    array2d<rgb_pixel> _img;
    typedef scan_fhog_pyramid<pyramid_down<10> > _image_scanner_type;
    object_detector<_image_scanner_type> _detector;
};
