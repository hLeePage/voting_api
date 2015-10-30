class VotesController < ApplicationController
  def index
    @votes = Vote.all
    render json: @votes
  end

  def show 
    @vote = Vote.find(params[:id])
    render json: @vote
  end
  def create
    @vote = Post.new(params[:voter_id,:candidate_id])
    if vote.save
      render json: vote
    else
      render json: vote.errors
    end
  end

  def destroy
    @vote = Vote.find(params[:voter_id])
    if @vote.destroy
      head :no_content
    else
      head :unprocessable_entity
    end
  end
end

