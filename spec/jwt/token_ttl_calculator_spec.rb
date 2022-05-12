# frozen_string_literal: true

RSpec.describe Jwt::TokenTtlCalculator do
  before { Jwt.secret = "secret" }

  it "Calculates remaining time for JWT" do
    Timecop.freeze
    token = Jwt::Encoder.call({ exp: (Time.now + 60 * 2).to_i })
    Timecop.freeze(Time.now + 60)

    expect(Jwt::TokenTtlCalculator.call(token))
      .to eq(60)
  end

  context "When token is expired" do
    it "Returns 0" do
      Timecop.freeze
      token = Jwt::Encoder.call({ exp: (Time.now + 60 * 2).to_i })
      Timecop.freeze((Time.now + 60 * 2))

      expect(Jwt::TokenTtlCalculator.call(token))
        .to eq(0)
    end
  end

  context "When token has no expiration" do
    it "Raises error" do
      token = Jwt::Encoder.call({ other: "payload" })
      expect { Jwt::TokenTtlCalculator.call(token) }
        .to raise_error(Jwt::NoExpirationError)
    end
  end
end
