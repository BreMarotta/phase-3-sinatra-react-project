
class Genre < ActiveRecord::Base  
    has_many :lego_sets
    has_many :owners, through: :lego_sets

    def self.sort_order
        self.all.order(name: :asc)
    end
end