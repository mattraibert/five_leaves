# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name = 'five_leaves'
  gem.version = "0.1.0"
  gem.license = "GPLv3"
  gem.summary = "Some helpful methods"
  gem.description = "A collection of methods for creating series and iterators"
  gem.homepage = "http://github.com/mattraibert/five_leaves"
  gem.author = "Matt J Raibert"
  gem.email = 'mattraibert@gmail.com'
  gem.files = ["Rakefile", "README.md", "LICENSE.txt"]
  gem.files += Dir["lib/**/*"]
  gem.test_files = Dir["test/**/*"]
end
