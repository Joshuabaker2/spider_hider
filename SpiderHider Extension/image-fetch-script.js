chrome.runtime.onMessage.addListener(
  function(request, sender, sendResponse) {
    if (request.images)
      downloadImages(request.images);
      sendResponse({farewell: 'loaded'});
  });

function downloadImages(imageURL) {

  // chrome.downloads.download({
  //   url: imageURL,
  //   filename: cwd + "/spiderimages" // Optional
  // });
}

chrome.fileSystem.requestFileSystem
