class Candidate < ActiveRecord::Base
  object = Candidate.new(:name => "Johnwayne", :district => 7, :party => "Dem", :hometown => "hell")
  object.save

  object2 = Candidate.new(:name => "Tim", :district => 9, :party => "Rep", :hometown => "TIY")
  object2.save
end
