Pod::Spec.new do |s|
  s.name         = "BDSTTS"
  s.version      = "1.0"
  s.summary      = "BDSTTS."
  s.description  = "BDS TTS client on youshaqi"
  s.homepage     = "https://ai.baidu.com/docs#/ASR-iOS-SDK/dea30f2b"
  s.license      = "MIT"
  s.author             = { "tangjj@1391.com" => "tangjj@1391.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/GarfieldGitHub/BDSTTS.git", :tag => "1.0" }
  
  s.subspec "BDSClientLib" do |lib|
  lib.vendored_libraries = 'BDSClientLib/libBaiduSpeechSDK.a'
  lib.source_files = "BDSClientHeaders/*.h"
  lib.libraries = 'iconv.2.4.0'
  end

  s.requires_arc = true

end
