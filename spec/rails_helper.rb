# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'simplecov'
require 'capybara/rspec'
require 'database_cleaner'
SimpleCov.start

ActiveRecord::Migration.maintain_test_schema!

Capybara.javascript_driver = :webkit

Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
end

RSpec.configure do |config|

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  DatabaseCleaner.strategy = :truncation

  config.filter_run_excluding :broken => true

  config.include Devise::TestHelpers, type: :controller

  config.before(:all) do

    DatabaseCleaner.clean

    Rcdb::Application::DRUG_CLASSES.each do |drug|

      controller = DrugName.to_controller_class(drug)
      model_class = DrugName.to_model_class(drug)
      model_name = DrugName.to_model_name(drug)

      model = model_class.new
      model.primary_name = "Generic #{model_name}"
      model.description = "A generic drug description"
      model.save

    end

    @admin_user = User.create(email: "admin@example.com", password: "examplepassword")
    @admin_user.save
    @admin_user.add_role :admin

  end

end

