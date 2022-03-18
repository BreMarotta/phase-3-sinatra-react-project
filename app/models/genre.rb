class Genre < ActiveRecord::Base  
    has_many :lego_sets
    has_many :sub_genres
    has_many :owners, through: :lego_sets
end