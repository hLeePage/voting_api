class Vote < ActiveRecord::Base
    belongs_to :comments
end
