class Stat < ApplicationRecord
    def self.search(search)
        where("playername Like ?", "%#{search}%")
    end
end
