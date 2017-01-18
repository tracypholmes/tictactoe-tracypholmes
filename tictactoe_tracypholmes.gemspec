# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tictactoe_tracypholmes/version'

Gem::Specification.new do |spec|
  spec.name          = "tictactoe_tracypholmes"
  spec.version       = TictactoeTracypholmes::VERSION
  spec.authors       = ["tracypholmes"]
  spec.email         = ["tracyholmes@gmail.com"]

  spec.summary       = %q{TictTacToe with AI}
  spec.description   = %q{TicTacToe game with somewhat unbeatable AI}
  spec.homepage      = "https://github.com/tracypholmes/tictactoe_tracypholmes"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files   = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 0'
  spec.add_development_dependency 'pry', '~> 0'
  spec.add_dependency 'colorize', '~> 0.8.1'
end
