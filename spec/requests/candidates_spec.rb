require 'rails_helper'

RSpec.describe "Candidates" do
  describe "GET /candidates" do
    it "works! (now write some real specs)" do
      get candidates_index_path
      expect(response).to have_http_status(200)
    end
  end
end
