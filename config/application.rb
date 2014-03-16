require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Tvde
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.locale = :pt
    config.i18n.default_locale = :pt
    config.i18n.load_path = [
      Dir[File.join(Rails.root, 'app',    'locales', '*.{rb,yml}')],
      Dir[File.join(Rails.root, 'config', 'locales', '*.{rb,yml}')]
    ].flatten

    config.encoding = "utf-8"

    config.filter_parameters += [:password]

    #assets
    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.assets.paths << "#{Rails.root}/vendor/assets/fonts"
    config.assets.precompile += %w( .svg .eot .woff .ttf )
    config.assets.precompile += %w[ *.png *.jpeg *.jpg *.gif ]
    config.assets.paths << "#{Rails.root}/vendor/assets/images"
    config.assets.paths << "#{Rails.root}/app/assets/images"
    config.assets.precompile += ['init_base.js', 'init_base.css']

    config.generators do |g|
      g.view_specs false
      g.helper_specs false
      g.stylesheets = false
      g.javascripts = false
      g.helper = false
      g.template_engine :slim
      g.test_framework  :rspec, :fixture_replacement => :factory_girl
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
  end
end