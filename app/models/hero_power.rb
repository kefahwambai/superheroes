class HeroPower < ApplicationRecord
    belongs_to :powers
    belongs_to :hero
end
