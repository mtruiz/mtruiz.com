ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)
  fixtures :all
end

Capybara.server_host = "0.0.0.0"
Capybara.app_host    = "http://#{ENV.fetch('HOSTNAME')}:#{Capybara.server_port}"
