class LegoSet < ActiveRecord::Base 
    belongs_to :owner
    belongs_to :genre

    def self.sort_order(arg)
        self.all.order("#{arg}": :asc)
    end

end