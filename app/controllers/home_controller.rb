class HomeController < ApplicationController

  layout "background"

  def index
    @alerts = Alert.all
    @recent = Drug.last(5)
    @posts = Post.latest(5)
  end

end
