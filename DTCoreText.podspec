Pod::Spec.new do |spec|
  spec.name         = 'DTCoreText'
  spec.version      = '1.6.16'
  spec.platform     = :ios, '4.3'
  spec.license      = 'BSD'
  spec.source       = { :git => 'https://github.com/ozse/DTCoreText.git'}
  spec.source_files = 'Core/Source/*.{h,m,c}'
  spec.frameworks   = 'MediaPlayer', 'QuartzCore', 'CoreText', 'CoreGraphics', 'ImageIO'
  spec.requires_arc = true
  spec.homepage     = 'https://github.com/Cocoanetics/DTCoreText'
  spec.summary      = 'Methods to allow using HTML code with CoreText.'
  spec.author       = { 'Oliver Drobnik' => 'oliver@cocoanetics.com' }
  spec.documentation_url = 'http://docs.cocoanetics.com/DTCoreText'
  spec.social_media_url = 'https://twitter.com/cocoanetics'
  spec.prefix_header_contents = '#import <CoreText/CoreText.h>'
  spec.prepare_command = <<-CMD
     cd ./Core/Source
     /usr/bin/xxd -i default.css default.css.c
  CMD
end

