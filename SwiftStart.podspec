#
# Be sure to run `pod lib lint SwiftStart.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftStart'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SwiftStart.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jakekrog/SwiftStart'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jake Krog' => 'jakekrog@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/jakekrog/SwiftStart.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '9.0'

  s.dependency 'Reusable', '~> 4.1'
  s.source_files = 'SwiftStart/Classes/**/Common/**/*.swift'
  s.ios.source_files = 'SwiftStart/Classes/**/iOS/**/*.swift'
  s.osx.source_files = 'SwiftStart/Classes/**/macOS/**/*.swift'
  s.tvos.source_files = 'SwiftStart/Classes/**/tvOS/**/*.swift'
  
  # s.resource_bundles = {
  #   'SwiftStart' => ['SwiftStart/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
