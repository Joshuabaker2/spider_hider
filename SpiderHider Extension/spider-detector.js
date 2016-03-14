// http://stackoverflow.com/questions/16112036/chrome-extensions-get-all-images-on-page

var images = [];

for(var i = 0; i < document.images.length; i++){
  images.push(document.images[i].src);
}

console.log(images);

// chrome.runtime.sendMessage({images: images}, function(response) {
//   console.log(response.farewell);
// });
