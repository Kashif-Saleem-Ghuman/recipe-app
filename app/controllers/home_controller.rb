class HomeController < ApplicationController
  def index
    render plain: 'Welcome to my app! This is the home page.'
    @current_user = current_user
  end
end
