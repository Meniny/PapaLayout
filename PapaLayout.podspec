Pod::Spec.new do |s|
  s.name             = 'PapaLayout'
  s.version          = '1.0.0'
  s.summary          = 'Pure Swift AutoLayout library offers a neat way to manage constraints in code.'

  s.swift_version    = '4.1'
  s.platforms = { :ios => '9.0', :tvos => '9.0', :osx => '10.10' }
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc = true

  s.homepage         = 'https://github.com/Meniny/PapaLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Elias Abel' => 'admin@meniny.cn' }
  s.source           = { :git => 'https://github.com/Meniny/PapaLayout.git', :tag => s.version.to_s }
  s.source_files = 'PapaLayout/**/*.{swift,h}'
end
