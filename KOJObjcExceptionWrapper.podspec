#
# Be sure to run `pod lib lint KOJObjcExceptionWrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KOJObjcExceptionWrapper'
  s.version          = '0.1.0'
  s.summary          = 'Objective-C exception wrapper for Swift.'

  s.description      = <<-DESC
You can catch NSException in Swift with this pod.
                       DESC

  s.homepage         = 'https://github.com/malt03/KOJObjcExceptionWrapper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Koji Murata' => 'malt.koji@gmail.com' }
  s.source           = { :git => 'https://github.com/malt03/KOJObjcExceptionWrapper.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'KOJObjcExceptionWrapper/Classes/**/*'
end
