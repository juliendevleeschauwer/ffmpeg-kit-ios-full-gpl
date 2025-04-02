Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-ios-full"
  s.version      = "6.0"
  s.summary      = "FFmpeg Kit iOS Full Shared Framework"
  s.description  = "Includes FFmpeg with dav1d, fontconfig, freetype, fribidi..."
  s.homepage     = "https://github.com/arthenica/ffmpeg-kit"
  s.license      = {
    :type => "LGPL-3.0",
    :file => "LICENSE"
  }
  s.authors      = {
    "ARTHENICA" => "open-source@arthenica.com"
  }

  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.libraries    = ["z", "bz2", "c++", "iconv"]

  s.source = {
    :http => "https://www.wity.jp/ffmpegkit/v6.0/ffmpeg-kit-full-6.0-ios-xcframework.zip"
  }

  s.ios.frameworks = ["AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox"]

  s.ios.vendored_frameworks = [
    "vendored_frameworks/ffmpegkit.xcframework",
    "vendored_frameworks/libavcodec.xcframework",
    "vendored_frameworks/libavdevice.xcframework",
    "vendored_frameworks/libavfilter.xcframework",
    "vendored_frameworks/libavformat.xcframework",
    "vendored_frameworks/libavutil.xcframework",
    "vendored_frameworks/libswresample.xcframework",
    "vendored_frameworks/libswscale.xcframework"
  ]
end
