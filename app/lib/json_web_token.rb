# frozen_string_literal: true

# Authentication
class JsonWebToken
  JWT_SECRET = 'secret'

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, JWT_SECRET)
  end

  def self.decode(token)
    JWT.decode(token, JWT_SECRET)
  rescue JWT::DecodeError, JWT::VerificationError, JWT::ExpiredSignature => e
    raise ExceptionHandler::InvalidToken, e.message
  end
end
