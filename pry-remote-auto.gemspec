# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["jugyo"]
  gem.email         = ["kkohno@gmail.com"]
  gem.description   = %q{Open the Terminal and run pry-remote automatically}
  gem.summary       = %q{The pry-remote improveemnt to open the Terminal and run pry-remote automatically}
  gem.homepage      = "https://github.com/jugyo/pry-remote-auto"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pry-remote-auto"
  gem.require_paths = ["lib"]
  gem.version       = '1.1.0'

  gem.add_runtime_dependency 'pry-remote'
end
