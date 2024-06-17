class WelcomeController < ApplicationController
  def index
    @user=User.new
    render layout: "mylayout"
  end
end
