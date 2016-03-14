chrome.runtime.onMessage.addListener(
  function(request, sender, sendResponse) {
    if (request.images)
      sendResponse({farewell: request.images});
  });
