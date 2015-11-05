class HomeController < ApplicationController

  layout "background"

  def index
    @alerts = Alert.last(5)
    @recent = Drug.last(5)
    @posts = Post.latest(5)
  end

end
