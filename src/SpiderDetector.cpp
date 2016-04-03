#include "SpiderDetector.hpp"

void SpiderDetector::setDetector(std::string detectorString) {
  // deserialize our saved spider detector
  deserialize(detectorString) >> _detector;
}

bool SpiderDetector::isSpider(std::string imgString) {
  // load the image as an array2d (dlib specific type)
  load_image(_img, imgString);

  // Run the detector and get the spider detections.
  std::vector<rectangle> dets = _detector(_img);

  return dets.size() > 0;
}

/**
 * This calls the javascript function allReady(), which should contain all code you wish to run.
 * It lets the javascript code know that all modules are properly loaded. Will get module errors without it.
 */
int main() {
  EM_ASM( allReady() );
}

//#ifdef BROWSER
//int main() {
//  SpiderDetector sd;
//  sd.setDetector("spider_detector.svm");
//  if (sd.isSpider("brown_widow_spider_large.png")) {
//    printf("SPIDER DETECTED");
//  } else {
//    printf("NO SPIDER");
//  }
//  return 0;
//}
//#endif
