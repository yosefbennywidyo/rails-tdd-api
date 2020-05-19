class HomeController < ApplicationController
  skip_before_action :authorize!, only: [:index]

  def index
    render json: "Welcome to Rails API by @fybwid"
  end
end
