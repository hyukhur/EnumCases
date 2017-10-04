#
# Be sure to run `pod lib lint EnumCases.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EnumCases'
  s.version          = '0.1.0'
  s.summary          = 'List all cases at Enum'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Sometimes we need retrieve all case at a Enum. It depends on a hashcode characterized by Swift compiler.
                       DESC

  s.homepage         = 'https://github.com/hyukhur/EnumCases.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hyuk Hur' => 'hyukhur@gmail.com' }
  s.source           = { :git => 'https://github.com/hyukhur/EnumCases.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyukhur'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/EnumCases/**/*'
  
  # s.resource_bundles = {
  #   'EnumCases' => ['EnumCases/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
