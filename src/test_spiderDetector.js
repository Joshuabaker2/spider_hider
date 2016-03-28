/**
 * Created by josh on 2016-03-27.
 */


var sd = new Module.SpiderDetector();

sd.setDetector("spider_detector.svm");
if (sd.isSpider("brown_widow_spider_large.png")) {
    console.log("SPIDER DETECTED");
} else {
    console.log("NO SPIDER");
}

