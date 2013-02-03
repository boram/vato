# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vato/version'

Gem::Specification.new do |gem|
  gem.name          = "vato"
  gem.version       = Vato::VERSION
  gem.authors       = ["Boram Yoon"]
  gem.email         = ["boram@me.com"]
  gem.description   = %q{SCSS button mixins}
  gem.summary       = %q{General use styled buttons for links, inputs and buttons}
  gem.homepage      = "http://github.com/boram/vato"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'railties', '>= 3.1'
  gem.add_dependency 'sass', '>= 3.2.0'
  gem.add_dependency 'font_awesome', '>= 3.2.0'
end
