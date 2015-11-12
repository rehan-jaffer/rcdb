class Api::V1::DrugsController < ApplicationController

  def show
    @drug = Drug.where(primary_name: params[:id]).first
    respond_to do |format|
      format.json {
        render :json => @drug.as_json, status: 200
      }
    end
  end

  def index

  end

end
