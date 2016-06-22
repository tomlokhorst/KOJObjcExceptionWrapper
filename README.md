# KOJObjcExceptionWrapper

[![Version](https://img.shields.io/cocoapods/v/KOJObjcExceptionWrapper.svg?style=flat)](http://cocoapods.org/pods/KOJObjcExceptionWrapper)
[![Platform](https://img.shields.io/cocoapods/p/KOJObjcExceptionWrapper.svg?style=flat)](http://cocoapods.org/pods/KOJObjcExceptionWrapper)
![License](https://img.shields.io/github/license/malt03/KOJObjcExceptionWrapper.svg?style=flat)


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

```swift
do {
  try KOJObjcExceptionWrapper.throwsBlock {
    // throw NSException
  }
} catch let e as NSError {
  e.userInfo[KOJObjcExceptionWrapperCode]
  e.userInfo[KOJObjcExceptionWrapperDomain]
  e.userInfo[KOJObjcExceptionWrapperName]
  e.userInfo[KOJObjcExceptionWrapperReason]
  e.userInfo[KOJObjcExceptionWrapperCallStackReturnAddresses]
  e.userInfo[KOJObjcExceptionWrapperCallStackSymbols]
  e.userInfo[KOJObjcExceptionWrapperUserInfo]
}
```

## Installation

KOJObjcExceptionWrapper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KOJObjcExceptionWrapper"
```

## Author

Koji Murata, koji.murata@dena.com

## License

KOJObjcExceptionWrapper is available under the MIT license. See the LICENSE file for more info.
