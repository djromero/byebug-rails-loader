# frozen_string_literal: true

require 'rails'

module ByebugRailsLoader
  class Railtie < Rails::Railtie
    initializer 'byebug-rails-loader-initializer' do |app|
      paths = [Rails.root.join('.byebugrc')]
      byebug_reloader = ActiveSupport::FileUpdateChecker.new(paths) do
        ByebugRailsLoader.rerun_init_script
      end

      app.reloaders << byebug_reloader

      config.to_prepare do
        byebug_reloader.execute_if_updated
      end
    end
  end
end
