require 'rails_helper'

RSpec.describe CandidatesController do
  it "if #index exists" do
    expects(CandidatesController.index).to be_true
  end
end
