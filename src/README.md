# Spider Hider

Spider Hider is a Chrome extension to download images, and using a trained image classifier, detect if there is a spider in the image. If a spider exists in the image, that image is blocked from being rendered by the browser.

## Compiling the image classifier
The image classifier uses the C++ dlib library. However, for us to have it running on a Chrome extension, it needs to be in Javascript. Therefore, we are going to compile the C++ code into Javascript, using the library Emscripten.

To compile the code, enter the `src` directory, and type the following:

```
emcc -O3 -I.. -s USE_LIBPNG=1 spiderDetector.cpp -o spiderDetector.js
```

- `emcc` is the Emscripten compiler, akin to gcc.
- `-O3` is the optimizing level - speeds up the code
- `-I` includes the folder that contains the dlib library. We can't include the dlib library directly, because it shares many similar names to standard libaries (like string), so we need to include the containing directory in order to be able to include files in the form `<dlib/svm_threaded.h>`.
- `-s USE_LIBPNG=1` uses the [Emscripten ports](https://github.com/emscripten-ports) libpng library, so that we can use libpng with to import images into the C++ code.

## Passing information between compiled C++ and Javascript
Due to the nature of how Emscripen compiles the C++ code, we can't call it like we would normal Javascript functions. We have to use glue code to allow for communication between them. We use [WebIDL](https://kripken.github.io/emscripten-site/docs/porting/connecting_cpp_and_javascript/WebIDL-Binder.html#webidl-binder) to do so.

The three different ways that we could communicate files to the C++ spiderDetector code are:
1. Pass the URL, allow the C++ code to download and inspect it all by itself.
2. Download the image, save it to a temporary filesystem, send the filename to the C++ code and allow it to inspect it.
3. Download the image, convert it to a 2darray, and then pass THAT to the C++ code.

Number three seems like the best way - but it is simpler coding-wise to do number two (hopefully). We will try number two, if that doesn't work, we will attempt number three, and finally - if all hope is lost, we will go with number one. If we have to do number one, we will need to use both the cURL library and OpenCV.
