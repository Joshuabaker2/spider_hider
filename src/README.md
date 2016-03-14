# Spider Hider

Spider Hider is a Chrome extension to download images, and using a trained image classifier, detect if there is a spider in the image. If a spider exists in the image, that image is blocked from being rendered by the browser.

## Compiling the image classifier
The image classifier uses the C++ dlib library. However, for us to have it running on a Chrome extension, it needs to be in Javascript. Therefore, we are going to compile the C++ code into Javascript, using the library Emscripten.

To compile the code, enter the `src` directory, and type the following:

```
emcc -O3 -I.. -s USE_LIBPNG=1 spider_hider.cpp -o spider_hider.js
```

- `emcc` is the Emscripten compiler, akin to gcc.
- `-O3` is the optimizing level - speeds up the code
- `-I` includes the folder that contains the dlib library. We can't include the dlib library directly, because it shares many similar names to standard libaries (like string), so we need to include the containing directory in order to be able to include files in the form `<dlib/svm_threaded.h>`.
- `-s USE_LIBPNG=1` uses the [Emscripten ports ](https://github.com/emscripten-ports) libpng library, so that we can use libpng with to import images into the C++ code.
