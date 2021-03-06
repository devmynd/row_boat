# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "row_boat/version"

Gem::Specification.new do |spec|
  spec.name          = "row_boat"
  spec.version       = RowBoat::VERSION
  spec.authors       = ["Michael Crismali"]
  spec.email         = ["michael@crismali.com"]

  spec.summary       = "Turn the rows of your CSV into rows in your database"
  spec.description   = "Turn the rows of your CSV into rows in your database"
  spec.homepage      = "https://github.com/devmynd/row_boat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 5.0.0"
  spec.add_dependency "activerecord-import", "~> 0.18.2"
  spec.add_dependency "smarter_csv", "~> 1.1"

  spec.add_development_dependency "appraisal", "~> 2.2.0"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "database_cleaner", "~> 1.6.0"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-doc"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.48.1"
  spec.add_development_dependency "standalone_migrations", "~> 5.2.0"
  spec.add_development_dependency "yard", "~> 0.9.9"
end
