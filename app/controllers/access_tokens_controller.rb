class AccessTokensController < ApplicationController
  def create
    authenticator = UserAuthenticator.new(params[:code])

    begin
      authenticator.perform
    rescue UserAuthenticator::AuthenticationError
      authentication_error
    end
  end

  private

  def authentication_error
    error = {
      "status" => "401",
      "source" => { "pointer" => "/code" },
      "title" =>  "Authentication code is invalid",
      "detail" => "Yout must provide valid code in order to exchange it for token"
    }
    render json: {}, status: 401
  end
end
