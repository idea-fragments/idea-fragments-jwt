# frozen_string_literal: true

RSpec.describe Jwt do
  it "has a version number" do
    expect(Jwt::VERSION).not_to be nil
  end
end
