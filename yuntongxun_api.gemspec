# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yuntongxun_api/version'

Gem::Specification.new do |spec|
  spec.name          = "yuntongxun_api"
  spec.version       = YunTongXun::VERSION
  spec.authors       = ["skji"]
  spec.email         = ["jishankai@qq.com"]

  spec.summary       = %q{容联·云通讯SDK Ruby版}
  spec.description   = %q{容联·云通讯SDK Ruby版 提供短信，语音验证码，电话回拨和外呼通知等功能}
  spec.homepage      = "https://github.com/skji/yuntongxun_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
