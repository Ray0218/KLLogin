
Pod::Spec.new do |spec|

spec.name         = "KLLogin"
spec.version      = "0.0.2"
spec.summary      = "A short description of KLLogin."

spec.description  = <<-DESC
描述文字
DESC

spec.homepage     = "https://github.com/Ray0218/KLLogin"

spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author             = { "Ray0218" => "ray_ios@163.com" }
spec.platform     = :ios, "8.0"

spec.source       = { :git => "https://github.com/Ray0218/KLLogin.git", :tag => "#{spec.version}" }

#只获取项目下Class目录中的文件
spec.source_files  =   "KLLogin/Class/**/*.{h,m,swift}"
#spec.exclude_files = "Classes/Exclude"

# spec.public_header_files = "Classes/**/*.h"
spec.requires_arc = true

spec.dependency  "Masonry"

end
