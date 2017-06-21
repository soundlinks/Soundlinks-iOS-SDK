Pod::Spec.new do |s|
s.name = 'Soundlinks-iOS-SDK'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = 'Soundlinks-iOS-SDK'
s.homepage = 'https://github.com/soundlinks/Soundlinks-iOS-SDK.git'
s.authors = { 'Soundlinks' => 'dev@soundlinks.net' }
s.source = { :git => 'https://github.com/soundlinks/Soundlinks-iOS-SDK.git', :tag => s.version }
s.requires_arc = true
s.ios.deployment_target = '8.4'
s.source_files = 'SoundlinksSDK/*.h'
s.public_header_files = 'SoundlinksSDK/*.h'
s.vendored_libraries = 'SoundlinksSDK/libSoundlinksSDK.a'
end
