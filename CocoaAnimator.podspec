
Pod::Spec.new do |s|
  s.name             = "CocoaAnimator"
  s.version          = "1.0.0"
  s.summary          = "UIView.animationWithDuration equivalent for Cocoa"
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.homepage         = "https://github.com/Meniny/CocoaAnimator"
  s.social_media_url = 'https://meniny.cn/'
  s.license          = 'MIT'
  s.description      = <<-DESC
                        An UIView.animationWithDuration equivalent for Cocoa written in Swift.
                        DESC

  s.osx.deployment_target = '10.10'

  s.source           = { :git => "https://github.com/Meniny/CocoaAnimator.git", :tag => s.version.to_s }
  s.source_files = 'CocoaAnimator/Source/*'
  s.public_header_files = 'CocoaAnimator/Source/*.h'

  s.osx.frameworks = 'Foundation', 'AppKit'

  # s.dependency ""
end
