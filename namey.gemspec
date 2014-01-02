# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "namey/version"

Gem::Specification.new do |s|
  s.name        = "namey"
  s.version     = Namey::VERSION
  s.authors     = ["Colin Mitchell"]
  s.email       = ["colin@muffinlabs.com"]
  s.homepage    = "https://github.com/muffinista/namey"
  s.summary     = %q{Simple name generator based on US Census Data}
  s.description = %q{Simple name generator, which can generate male/female names based on US Census Data}

  s.rubyforge_project = "namey"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  if RUBY_PLATFORM == "java"
    s.platform = "java"
    sqlite = "jdbc-sqlite3"
  else
    s.platform = Gem::Platform::RUBY
    sqlite = "sqlite3"
  end

  if RUBY_VERSION < "1.9"
    s.add_dependency "activesupport", "~> 3.0.11"
  end
  
  #s.specification_version = 3

  s.add_development_dependency(%q<rake>, [">= 0"])
  s.add_development_dependency(%q<rspec>, [">= 2.12.0"])
    
  s.add_runtime_dependency(%q<sequel>, [">= 0"])
  s.add_runtime_dependency(sqlite, [">= 0"])
  s.add_development_dependency(%q<shoulda>, [">= 0"])
  s.add_development_dependency(%q<yard>, [">= 0"])      
end


# http://www.census.gov/genealogy/names/
