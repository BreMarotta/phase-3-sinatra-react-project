
class Owner < ActiveRecord::Base 
    has_many :lego_sets
    has_many :genres, through: :lego_sets
end