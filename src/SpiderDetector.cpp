#include "SpiderDetector.hpp"

SpiderDetector::SpiderDetector() {
  // mount the current folder as a NODEFS instance
  // inside of emscripten
  // https://github.com/kripken/emscripten/blob/master/tests/fs/test_nodefs_rw.c
  EM_ASM(
    FS.mkdir("/working");
    FS.mount(NODEFS, { root: '.' }, "/working");
  );
};

void SpiderDetector::setDetector(std::string detectorString) {
  // deserialize our saved spider detector
  deserialize("/working/" + detectorString) >> _detector;
}

bool SpiderDetector::isSpider(std::string imgString) {
  // load the image as an array2d (dlib specific type)
  load_image(_img, "/working/" + imgString);

  // Run the detector and get the spider detections.
  std::vector<rectangle> dets = _detector(_img);

  return dets.size() > 0;
}

/**
 * Glue code
 */
extern "C" {

// Not using size_t for array indices as the values used by the javascript code are signed.
void array_bounds_check(const int array_size, const int array_idx) {
  if (array_idx < 0 || array_idx >= array_size) {
    EM_ASM_INT({
                       throw 'Array index ' + $0 + ' out of bounds: [0,' + $1 + ')';
               }, array_idx, array_size);
  }
}

// VoidPtr

void EMSCRIPTEN_KEEPALIVE emscripten_bind_VoidPtr___destroy___0(void** self) {
  delete self;
}

// SpiderDetector

SpiderDetector* EMSCRIPTEN_KEEPALIVE emscripten_bind_SpiderDetector_SpiderDetector_0() {
  return new SpiderDetector();
}

void EMSCRIPTEN_KEEPALIVE emscripten_bind_SpiderDetector_setDetector_1(SpiderDetector* self, char* arg0) {
self->setDetector(arg0);
}

bool EMSCRIPTEN_KEEPALIVE emscripten_bind_SpiderDetector_isSpider_1(SpiderDetector* self, char* arg0) {
return self->isSpider(arg0);
}

void EMSCRIPTEN_KEEPALIVE emscripten_bind_SpiderDetector___destroy___0(SpiderDetector* self) {
delete self;
}

}
/**
 * End of glue code
 */


#ifdef BROWSER
int main() {
  SpiderDetector sd;
  sd.setDetector("spider_detector.svm");
  if (sd.isSpider("brown_widow_spider_large.png")) {
    printf("SPIDER DETECTED");
  } else {
    printf("NO SPIDER");
  }
  return 0;
}
#endif