require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-google-maps"
  s.version      = package['version']
  s.summary      = "React Native Mapview component for iOS + Android"

  s.authors      = { "intelligibabble" => "leland.m.richardson@gmail.com" }
  s.homepage     = "https://github.com/airbnb/react-native-maps#readme"
  s.license      = "MIT"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/airbnb/react-native-maps.git" }
  s.source_files  = "lib/ios/AirGoogleMaps/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'GoogleMaps', '2.1.1'
  s.compiler_flags = '-fno-modules'
end
