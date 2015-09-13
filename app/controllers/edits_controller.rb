class EditsController < ApplicationController

  respond_to :json

  def create
    @edit = Edit.new(edit_params)
    @edit.save!
    respond_to do |format|
      format.json {
        render :json => @edit.errors.to_json
      }
    end
  end

  def edit_params
    params.require(:edit).permit([:property, :drug_id, :content])
  end

end
