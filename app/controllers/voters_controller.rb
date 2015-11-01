class VotersController < ApplicationController
  def index
    @voters = Voter.all
    render json: @voters
  end

  def show
    @voter = Voter.find(params[:id, :token_id])
    render json: @voter
  end

  def create
    @token = generate_token
    v = Voter.new(params[:name, :party])
    if v.save
      render json: v
    else
      render json: v.errors
    end
    @token
  end

  def update
    @v = Voter.find(params[:id])
    if @v.update(params[:name, :party])
      head :no_content
    else
      render json: @v.errors
    end
  end

  private
  def generate_token
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    string = (0...50).map { o[rand(o.length)] }.join
    return string
  end
end
