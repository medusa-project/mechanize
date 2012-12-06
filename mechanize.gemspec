lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "mechanize"
  gem.version       = "2.5.1"
  gem.authors       = ["Eric Hodel", "Howard Ding"]
  gem.email         = ["hding2@illinois.edu"]
  gem.description   = %q{Small mod of Eric Hodels original code for DX interaction}
  gem.summary       = %q{Small mod of Eric Hodels original code for DX interaction}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "net-http-persistent"
  gem.add_dependency "nokogiri"
  gem.add_dependency "domain_name"
  gem.add_dependency "ntlm-http"
  gem.add_dependency "webrobots"
end
