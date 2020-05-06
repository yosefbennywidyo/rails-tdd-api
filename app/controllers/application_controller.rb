class ApplicationController < ActionController::API
  rescue_from UserAuthenticator::AuthenticationError, with: :authentication_error
=begin
  require 'jsonapi_errors_handler'

  JsonapiErrorsHandler.configure do |config|
    config.handle_unexpected = true
  end
=end
  private

  def authentication_error
    error = {
      "status" => "401",
      "source" => { "pointer" => "/code" },
      "title" =>  "Authentication code is invalid",
      "detail" => "Yout must provide valid code in order to exchange it for token"
    }
    render json: { "errors": [ error ] }, status: 401
  end
end
