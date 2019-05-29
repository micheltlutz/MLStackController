Pod::Spec.new do |s|
  s.name = 'MLStackController'
  s.version = '1.0.0'
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.summary = 'Create Stack Controller like a Music, Reminders, Podcast Apps'
  s.homepage = 'http://micheltlutz.me'
  s.social_media_url = 'https://twitter.com/michel_lutz'
  s.authors = { "Michel Lutz" => "michel_lutz@icloud.com" }
  s.source = { :git => "https://github.com/micheltlutz/MLStackController.git", :tag  => "v"+s.version.to_s }
  s.platforms = { :ios => "9.0", :osx => "10.10", :tvos => "9.0", :watchos => "2.0" }
  s.requires_arc = true
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.4.0'

  s.default_subspec = "Core"
  s.subspec "Core" do |ss|
    ss.source_files  = "Sources/**/*.swift"
    ss.framework  = "Foundation"
 end
end
