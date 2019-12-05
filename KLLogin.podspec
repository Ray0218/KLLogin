
Pod::s.new do |s|

s.name         = "KLLogin"
s.version ="1"
s.summary      = "登录"

s.description  = <<-DESC
描述文字
DESC

s.homepage     = "https://github.com/Ray0218/KLLogin"

s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Ray0218" => "ray_ios@163.com" }
s.platform     = :ios, "8.0"

s.source       = { :git => "https://github.com/Ray0218/KLLogin.git", :tag => "#{s.version}" }

#只获取项目下Class目录中的文件
s.source_files  =   "KLLogin/Class/**/*.{h,m,swift}"
#s.exclude_files = "Classes/Exclude"

# s.public_header_files = "Classes/**/*.h"
s.requires_arc = true

s.dependency  'Masonry'

end
