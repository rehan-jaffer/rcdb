class VotesController < ApplicationController

  respond_to :json

  def create

    vote = Vote.new(vote_params)
    vote.ip_address = request.ip
    if vote.save
      render :json => {:response => "OK"}, status: 201
    else
      render :json => {:response => vote.full_messages.to_json}, status: 400
    end
    return
  end

  def vote_params
    params.require(:vote).permit(:property, :quantity, :drug_id)
  end

end
