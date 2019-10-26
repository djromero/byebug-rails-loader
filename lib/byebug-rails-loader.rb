require 'byebug-rails-loader/version'
require 'byebug/core'
require 'byebug-rails-loader/railtie'

module ByebugRailsLoader
  class << self
    def load_byebug
      Byebug.start

      Byebug.breakpoints.clear
      Byebug.run_init_script
    end

    def rerun_init_script
      Byebug.breakpoints.clear
      Byebug.run_init_script
      STDERR.puts("[ByeBug] 🐞 Breakpoints reloaded")
    end end
end

# Load byebug when the gem is loaded.
ByebugRailsLoader.load_byebug
