# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-minimagick/version"

Gem::Specification.new do |s|
  s.name        = "jekyll-minimagick"
  s.version     = Jekyll::Minimagick::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Roger López"]
  s.email       = ["roger@zroger.com"]
  s.homepage    = "http://github.com/zroger/jekyll-minimagick"
  s.summary     = %q{MiniMagick integration for Jekyll}
  s.description = %q{Use MiniMagick to crop and resize images in your Jekyll project.}

  s.rubyforge_project = "jekyll-minimagick"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency('jekyll', [">= 0.10.0"])
  s.add_runtime_dependency('mini_magick', [">= 3.3"])
end
