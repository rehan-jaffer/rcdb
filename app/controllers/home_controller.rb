class HomeController < ApplicationController

  def index
    @alerts = Alert.all
    @recent = Drug.last(5)
  end

end
