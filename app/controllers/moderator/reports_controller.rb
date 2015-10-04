class Moderator::ReportsController < Moderator::ModeratorController

  def edit
  end

  def show
  end

  def index
    @reports = Report.waiting.all
  end

end
