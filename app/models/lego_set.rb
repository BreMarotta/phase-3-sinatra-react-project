class LegoSet < ActiveRecord::Base 
    belongs_to :owner
    belongs_to :genre

    def self.sort_order
        self.all.order(name: :asc)
    end

end