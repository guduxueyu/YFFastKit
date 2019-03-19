

Pod::Spec.new do |s|

  s.name         = "YFFastKit"
  s.version      = "1.0.2"
  s.summary      = "快速创建控件"
  s.description  = <<-DESC
"快速创建控件"
                   DESC
  s.homepage     = "https://github.com/guduxueyu/YFFastKit.git"
  s.license      = "MIT"

  s.author       = { "yuanfeng" => "970165187@qq.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/guduxueyu/YFFastKit.git", :tag => "1.0.1" }
  s.source_files  = "FastKit/*.{h,m}"

end
