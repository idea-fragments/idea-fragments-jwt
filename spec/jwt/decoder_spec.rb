# frozen_string_literal: true

RSpec.describe Jwt::Decoder do
  let(:payload) { { data: "test" } }
  let(:token) { JWT.encode(payload, Jwt.secret, Jwt.algorithm) }

  it "decodes token" do
    expect(Jwt::Decoder.call(token)).to include(payload)
  end
end
