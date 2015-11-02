class Voter < ActiveRecord::Base
  has_many :votes
  has_secure_password validations: false
end
