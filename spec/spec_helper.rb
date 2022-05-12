# frozen_string_literal: true

require "jwt"
require "timecop"
require_relative "../lib/idea_fragments_jwt"

RSpec.configure do |config|
  Jwt.algorithm = "HS512"
  Jwt.secret = "omg the secret"

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
