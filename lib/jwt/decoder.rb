class Jwt::Decoder
  def self.call(token = "", verify_sig: true, exp_leeway: 0)
    decoded_token = JWT.decode(
      token,
      Jwt.secret,
      verify_sig,
      { exp_leeway: exp_leeway, algorithm: Jwt.algorithm }
    )
    decoded_token.reduce({}) do |map, data|
      map.merge(data)
    end.with_indifferent_access
  end
end
