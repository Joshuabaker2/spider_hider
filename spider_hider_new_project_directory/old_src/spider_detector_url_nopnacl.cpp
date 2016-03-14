#include <dlib/svm_threaded.h>
#include <dlib/gui_widgets.h>
#include <dlib/image_processing.h>
#include <dlib/data_io.h>
#include <dlib/opencv.h>

#include <stdio.h>
#include <curl/curl.h>
#include <sstream>
#include <vector>

#include <opencv2/opencv.hpp>

#include <iostream>
#include <fstream>

using namespace std;
using namespace dlib;

// ----------------------------------------------------------------------------------------

cv::Mat curlImg();
size_t write_data(char *ptr, size_t size, size_t nmemb, void *userdata);

int main(int argc, char** argv) {

    try
    {
        cv::Mat raw_image = curlImg();

        cv_image<bgr_pixel> cimg(raw_image);

        typedef scan_fhog_pyramid<pyramid_down<10> > image_scanner_type;
        image_scanner_type scanner;

        // The sliding window detector will be 80 pixels wide and 80 pixels tall.

        scanner.set_detection_window_size(80, 80);

        object_detector<image_scanner_type> detector;
        deserialize("face_detector.svm") >> detector;

        // cout << "testing results:  " << test_object_detection_function(detector, images_test, face_boxes_test) << endl;

        image_window win;

        // Run the detector and get the face detections.
        std::vector<rectangle> dets = detector(cimg);
        if (dets.size() > 0) {
          cout << "Spider detected" << endl;
        }
        win.clear_overlay();
        win.set_image(cimg);
        win.add_overlay(dets, rgb_pixel(255,0,0));
    }
    catch (exception& e)
    {
        cout << "\nexception thrown!" << endl;
        cout << e.what() << endl;
    }
}

//curl writefunction to be passed as a parameter
size_t write_data(char *ptr, size_t size, size_t nmemb, void *userdata) {
    std::ostringstream *stream = (std::ostringstream*)userdata;
    size_t count = size * nmemb;
    stream->write(ptr, count);
    return count;
}

//function to retrieve the image as Cv::Mat data type
cv::Mat curlImg() {
	CURL *curl;
	CURLcode res;
	std::ostringstream stream;
	curl = curl_easy_init();
  curl_easy_setopt(curl, CURLOPT_URL, "https://upload.wikimedia.org/wikipedia/commons/d/d8/Lace_Webbed_Spider,_Amaurobius_Similis,_2009.jpg"); //the img url
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data); // pass the writefunction
  curl_easy_setopt(curl, CURLOPT_WRITEDATA, &stream); // pass the stream ptr when the writefunction is called
	res = curl_easy_perform(curl); // start curl
	std::string output = stream.str(); // convert the stream into a string
	curl_easy_cleanup(curl); // cleanup
	std::vector<char> data = std::vector<char>( output.begin(), output.end() ); //convert string into a vector
	cv::Mat data_mat = cv::Mat(data); // create the cv::Mat datatype from the vector
	cv::Mat image = cv::imdecode(data_mat,1); //read an image from memory buffer
  return image;
}
