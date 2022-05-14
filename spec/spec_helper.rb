# frozen_string_literal: true

require_relative "../lib/idea_fragments_jwt"
require "timecop"

RSpec.configure do |config|
  Jwt.algorithm = "HS512"
  Jwt.secret = "omg the secret"

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
