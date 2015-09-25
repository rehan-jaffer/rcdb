class AlertsController < ApplicationController

  def index
    @alerts = Alert.last(10)
    respond_to do |format|
      format.rss {
        render :layout => false
      } 
    end
  end

end
