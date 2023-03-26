class Power < ApplicationRecord
    has_many :hero
    has_many :hero, through: :hero_powers
end
