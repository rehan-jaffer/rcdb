class Admin::EffectsController < ApplicationController

  def new
    @drug = Drug.where(primary_name: params[:drug_id]).first
    @effect = Effect.new    
    @effects = Effect.where(drug_id: params[:drug_id]).all
  end

  def destroy
    @effect = Effect.find(params[:id])
    drug_id = @effect.drug_id
    if @effect.destroy
      @effects = Effect.where(drug_id: drug_id).all
      render :index, status: 200, layout: nil
    else
      render json: @effect.errors.full_messages.join("\r\n").to_json, status: 401
    end    
  end

  def create
    # this could be designed more efficiently, eliminate a query in the process
    @effect = Effect.new(effect_params)
    drug_id = Drug.where(primary_name: params[:drug_id]).first.id
    @effect.drug_id = drug_id
    if @effect.save
      @effects = Effect.where(drug_id: drug_id).all
      render :index, status: 200, layout: nil
    else
      render :json => @effect.errors.full_messages.join("\r\n").to_json, status: 401
    end
    return
  end

  def index
  end

  def effect_params
    params.require(:effect).permit(:description, :intended)
  end

end
