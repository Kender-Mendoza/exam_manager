# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
require 'capybara/rspec'
require 'support/authentication_helpers'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.include ViewComponent::TestHelpers, type: :component
  config.include Rails.application.routes.url_helpers
  config.include Capybara::RSpecMatchers, type: :component

  config.include DeviseRequestSpecHelpers, type: :request
  config.include DeviseRequestSpecHelpers, type: :feature
  config.include DeviseRequestSpecHelpers, type: :system
  config.include DeviseRequestSpecHelpers, type: :component

  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::IntegrationHelpers, type: :component
  config.include Devise::Test::IntegrationHelpers, type: :request

  config.fixture_paths = [
    Rails.root.join('spec/fixtures')
  ]

  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  # Database cleaner
  config.before(:suite) do
    DatabaseCleaner.strategy = [:deletion]
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # Factory bot
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.start
  ensure
    DatabaseCleaner.clean
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
