class StaticController < ApplicationController

  def show

    if page_exists?(params[:id])
      render params[:id].downcase.to_sym
    else
      render nil, :status => 404
    end

  end

  private

  def page_exists?(page_name)
    page_name.gsub!(/[^\w\d\-_]/, "")
    return File.exists?("#{Rails.root}/app/views/static/#{page_name}.html.haml")
  end


end
