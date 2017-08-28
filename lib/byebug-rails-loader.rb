require 'byebug-rails-loader/version'
require 'byebug'
require 'byebug-rails-loader/railtie'

module ByebugRailsLoader
  class << self
    def load_byebug
      Byebug.start

      Byebug.breakpoints.clear
      Byebug.run_init_script
    end
  end
end

# load byebug when the gem is loaded
ByebugRailsLoader.load_byebug
