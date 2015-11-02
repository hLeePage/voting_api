require 'rails_helper'

RSpec.describe Voter do
  let(:token) { SecureRandom.hex 16 }

  it "takes a token" do
    voter = Voter.create(password: token)
    expect(voter.password_digest).to_not eq token
  end

  it "authenticates a voter by token" do
    voter = Voter.create(password: token)

    expect(voter.authenticate(token)).to eq voter
    expect(voter.authenticate("wrong")).to eq false
  end
end
