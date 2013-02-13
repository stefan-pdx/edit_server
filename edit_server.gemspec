# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'edit_server/version'

Gem::Specification.new do |gem|
  gem.name          = "edit_server"
  gem.version       = EditServer::VERSION
  gem.authors       = ["Stefan Novak"]
  gem.email         = ["stefan.louis.novak@gmail.com"]
  gem.description   = %q{This is a Sinatra app that integrates Google Chrome with GVim via the Edit with Emacs extension.}
  gem.summary       = %q{This is a Sinatra app that responds to POST requests sent via Chrome from the Edit with Emacs extension to kick off GVim. An instance of GVim is loaded up with content from the source textarea. When saving and exiting GVim, the text will loaded back into the original textarea.}
  gem.homepage      = "https://github.com/slnovak/edit_server"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "foreverb",     "~> 0.3.2"
  gem.add_dependency "pandoc-ruby",  "~> 0.6.0"
  gem.add_dependency "sinatra",      "~> 1.3.4"
  gem.add_dependency "thin",         "~> 1.5.0"
end
