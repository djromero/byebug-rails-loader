require 'rails'

module ByebugRailsLoader 
  class Railtie < Rails::Railtie
    initializer 'byebuy-rails-loader-initialize' do |app|
      app.reloaders << ActiveSupport::FileUpdateChecker.new([Rails.root.join(".byebugrc")])
    end

    config.to_prepare do
      ByebugRailsLoader.load_byebug
    end
  end
end
