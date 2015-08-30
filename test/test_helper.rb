
ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'minitest/rails/capybara'
require 'minitest/reporters'
include ActionDispatch::TestProcess

CarrierWave.root = 'test/fixtures/images'

reporter_options = { color: true }
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]
