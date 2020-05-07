class AccessTokensController < ApplicationController

  def create
    authenticator = UserAuthenticator.new(params[:code])
    authenticator.perform

    render json: authenticator.access_token, status: :created
  end

  def destroy
    #Safe Navigation operator - &.
    #https://ruby-doc.org/core-2.6/doc/syntax/calling_methods_rdoc.html#label-Safe+navigation+operator
    #it allow to skip method call when receiver is nil
    #it returns 'nil' and doesn't evaluate method's arguments
    #if the call is skipped
    provided_token = request.authorization&.gsub(/\ABearer\s/, '')
    access_token = AccessToken.find_by(token: provided_token)
    current_user = access_token&.user
    
    raise AuthorizationError unless current_user

    current_user.access_token.destroy
  end

end
