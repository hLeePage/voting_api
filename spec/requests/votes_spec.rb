require 'rails_helper'

RSpec.describe "Votes" do
  let(:token) { SecureRandom.hex 16 }
  describe "GET /votes" do
    it "works! (now write some real specs)" do
      get votes_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /votes" do
    before do
      voter = Voter.create!(password: token)
      candidate = Candidate.create!
      @payload = {
        vote: {
          voter_id: voter.id,
          candidate_id: candidate.id
        }
      }
    end

    it "casts a vote" do
      post votes_path, @payload, {'Authorization' => "Bearer #{token}" }
      expect(response).to have_http_status(:created)
    end

    it "blocks unauthenticated votes" do
      post votes_path, @payload, {'Authorization' => "Bearer #{SecureRandom.hex 8}"}
      expect(response).to have_http_status(:unauthorized)
    end

    it "blocks forbidden votes" do
      token2 = SecureRandom.hex 16
      Voter.create!(password: token2)
      post votes_path, @payload, {'Authorization' => "Bearer #{token2}"}
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
