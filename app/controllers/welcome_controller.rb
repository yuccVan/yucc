class WelcomeController < ApplicationController
  def index
    today = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    flash[:notice] = today
  end
end
