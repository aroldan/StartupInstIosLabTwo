# GifAppYay

### Lab 2 in the iOS Learning Series

This app is a bit more complicated since it uses the network and threading to let us search the Giphy API for animated GIFs.

### Getting Started

This app has 3rd party dependencies brought in with [CocoaPods](http://cocoapods.org/). Before you begin the lab, follow the installation instructions on their website and run the command `pod install`.

This will install the dependencies we need for the project, which are specified in the Podfile and are:

 * [AFNetworking](https://github.com/AFNetworking/AFNetworking) - an asynchronous network library
 * [Mantle](https://github.com/Mantle/Mantle) - a JSON binding library

### Goals

In this lab, you should do a few things:

 1. Search the [Giphy API](https://github.com/giphy/GiphyAPI) for GIFs that match search terms.
 1. Display still thumbnails of those animated GIFs.
 1. Show a full screen version of the animated GIF when you tap on one of them.