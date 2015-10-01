class ReportsController < ApplicationController

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      flash[:notice] = "Your report was submitted"
      redirect_to drug_path(@report.drug_id)
    else
      render :new
    end
  end

  def report_params
    report_params.require(:report).permit([:title, :report, :drug_id])
  end

end
