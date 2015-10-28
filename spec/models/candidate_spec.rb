require 'rails_helper'

RSpec.describe Candidate do
  it "checks if Candidate class exists" do
    obama = Candidate.create!(name:"Obama", hometown:"Tennessee", district:"Nashville", party:"Democrat")
    expect(obama.name).to eq("Obama")
  end
end
