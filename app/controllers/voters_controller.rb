class VotersController < ApplicationController
  def index
    @voters = Voter.all
    render json: @voters
  end
  def show
    @voter = Voter.find(params[:id])
    render json: @voter
  end
  def create
    v = Voter.new(params[:name, :party])
    if v.save
      render json: v
    else
      render json: v.errors
    end
  end
  def update
    @v = Voter.find(params[:id])
    if v.update(params[:name, :party])
      head :no_content
    else
      render json: post.errors
    end
  end
end
