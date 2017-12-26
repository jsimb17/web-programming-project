class Schedule < ApplicationRecord
    def self.search(search)
        where("team1 || team2 Like ?", "%#{search}%")
        
    end
end
