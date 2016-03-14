#include "SpiderDetector.hpp"


SpiderDetector::SpiderDetector() {
  // mount the current folder as a NODEFS instance
  // inside of emscripten
  // https://github.com/kripken/emscripten/blob/master/tests/fs/test_nodefs_rw.c
  EM_ASM(
    FS.mkdir("/working");
    FS.mount(NODEFS, { root: '.' }, "/working");
  );

  // deserialize our saved spider detector
  deserialize("/working/spider_detector.svm") >> _detector;
};

bool SpiderDetector::isSpider(std::string imgString) {
  // load the image as an array2d (dlib specific type)
  // char* image = "/working/";
  // image += imgString;
  load_image(_img, "/working/" + imgString);

  // Run the detector and get the spider detections.
  std::vector<rectangle> dets = _detector(_img);

  return dets.size() > 0;
}

int main() {
  SpiderDetector sd;
  if (sd.isSpider("brown_widow_spider_large.png")) {
    printf("SPIDER DETECTED");
  } else {
    printf("NO SPIDER");
  }
  return 0;
}
