# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tictactoe_tracypholmes/version'

Gem::Specification.new do |s|
  s.name          = "tictactoe_tracypholmes"
  s.version       = TictactoeTracypholmes::VERSION
  s.authors       = ["tracypholmes"]
  s.email         = ["tracyholmes@gmail.com"]

  s.summary       = "TictTacToe with AI"
  s.description   = "TicTacToe game with somewhat unbeatable AI"
  s.homepage      = "https://github.com/tracypholmes/tictactoe_tracypholmes"
  s.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  s.files   = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|s|features)/})
  end
  s.files = Dir['lib/**/*.rb']
  s.bindir        = "exe"
  s.executables   << 'tictactoe_tracypholmes'
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.13"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency 'rspec', '~> 0'
  s.add_development_dependency 'pry', '~> 0'
  s.add_dependency 'colorize', '~> 0.8.1'
end
