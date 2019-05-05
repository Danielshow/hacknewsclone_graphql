# frozen_string_literal: true

# Exception Module
module ExceptionHander
  extend ActiveSupport::Concern

  class AuthenticationError < StandardError; end
  class MissingToken < StandardError; end
  class InvalidToken < StandardError; end

  include do
    rescue_from ExceptionHander::AuthenticationError, with: :unauthorized_request
    rescue_from ExceptionHander::MissingToken, with: :four_twenty_two
    rescue_from ExceptionHander::InvalidToken, with: :four_twenty_two
  end

  private

  def unauthorized_request(err)
    { error: { message: err.message, status: 401 } }
  end

  def four_twenty_two(err)
    { error: { message: err.messgae, status: 422 } }
  end
end
