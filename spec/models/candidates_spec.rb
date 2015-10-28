require 'rails_helper'

RSpec.describe "Candidates", type: :model do
  describe "candidateclass" do
    it "checks if Candidate class has attrs" do
      obama = Candidate.create!(name:"Obama", hometown:"Tennessee", district:"Nashville", party:"Democrat")
      expect(obama.name).to eq("Obama")
    end
  end
end
