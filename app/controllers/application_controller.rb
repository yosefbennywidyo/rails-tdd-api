class ApplicationController < ActionController::API
  require 'jsonapi_errors_handler'

  JsonapiErrorsHandler.configure do |config|
    config.handle_unexpected = true
  end
end
