class Admin::AlertsController < ApplicationController

  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)
    @alert.save
    redirect_to admin_alerts_path
  end

  def update

  end

  def index
    @alerts = Alert.all
  end

  def save

  end

  def alert_params
    params.require(:alert).permit([:title, :body, :severity, :priority])
  end

end
