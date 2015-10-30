class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
    render json: @candidates
  end
  
  def show
    @candidate = Candidate.find(params[:id])
    render json: @candidate
    #hi and thank you polish sausage! :D
  end
end
