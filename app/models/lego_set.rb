class LegoSet < ActiveRecord::Base 
    belongs_to :owner
    belongs_to :genre
end