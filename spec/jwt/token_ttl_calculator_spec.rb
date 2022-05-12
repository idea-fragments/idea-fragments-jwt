RSpec.describe Jwt::TokenTtlCalculator do
  before { Jwt.secret = "secret" }

  it "Calculates remaining time for JWT" do
    freeze_time
    token = Jwt::Encoder.call({ exp: 2.minutes.from_now.to_i })
    travel_to(1.minute.from_now)

    expect(Jwt::TokenTtlCalculator.call(token))
      .to eq(1.minute)
  end

  context "When token is expired" do
    it "Returns 0" do
      freeze_time
      token = Jwt::Encoder.call({ exp: 2.minutes.from_now.to_i })
      travel_to(2.minute.from_now)

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
