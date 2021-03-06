#
# Be sure to run `pod lib lint jvcLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'jvcLib'
  s.version          = '1.0.1'
  s.summary          = 'A summary of jvcLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
   A  long description of the summary is this.
                       DESC

  s.homepage         = 'https://github.com/jvcleave/jvcLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jvcleave' => 'jvcleave@gmail.com' }
  s.source           = { :git => 'https://github.com/jvcleave/jvcLib.git', :branch => 'main' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.2'

  s.source_files = 'jvcLib/Classes/**/*'
  s.resources = 'jvcLib/Assets/Database.xcdatamodeld'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
