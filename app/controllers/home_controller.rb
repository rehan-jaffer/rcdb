class HomeController < ApplicationController

  layout "background"

  def index
    @alerts = Alert.all
    @recent = Drug.last(5)
  end

end
