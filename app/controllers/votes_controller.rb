class VotesController < ApplicationController
  def index
    votes = Vote.all
    render json: votes
  end

  def show
    vote = Vote.find(params[:id])
    render json: vote
  end

  def create
    vote = Vote.new(vote_params)
    raise UnauthorizedError unless authenticate_user(vote.voter)
    if vote.save
      render json: vote, status: :created
    else
      render json: vote.errors, status: :unprocessable_entity
    end
  end

  def destroy
    vote = Vote.find(params[:voter_id])
    raise UnauthorizedError unless authenticate_user(vote.voter)
    if vote.destroy
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:voter_id, :candidate_id)
  end
end

