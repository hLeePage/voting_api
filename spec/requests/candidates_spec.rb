require 'request_helper'
RSpec.describe "Candidates" do
  describe "GET /candidates" do
    describe "#index" do
      it "shows candidates" do
        Candidate.index!(name:"Obama", hometown:"Tennessee", district:"Nashville", party:"Democrat")
        get candidates_path
        binding.pry
        expect(response).to have_http_status(:success)
        expect(json.count).to eq 1
      end
    end
  end
end
