class DrugsController < ApplicationController

  def index
   @drugs = Drug.all
  end

  def new
  end

  def create
  end

end
