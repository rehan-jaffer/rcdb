class HomeController < ApplicationController

  def index
    @alerts = Alert.all
  end

end
