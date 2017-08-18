Pod::Spec.new do |s|
  s.name = 'DeviceKanriSanAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.version = '1.0.0'
  s.source = { :git => "https://github.com/kiuchikeisuke/DeviceKanriSanAPI-for-Swift.git"}
  s.authors = 'k-kiuchi'
  s.docset_url = 'https://github.com/kiuchikeisuke/DeviceKanriSanAPI-for-Swift'
  s.license = 'Apache License, Version 2.0'
  s.homepage = 'https://github.com/kiuchikeisuke/DeviceKanriSanAPI-for-Swift'
  s.summary = 'Summary Text'
  s.source_files = 'DeviceKanriSanAPI/Classes/Swaggers/**/*.swift'
  s.dependency 'RxSwift', '~> 3.0.0-beta.1'
  s.dependency 'Alamofire', '~> 4.0'
end
