class User < ApplicationRecord
    has_many :notes
    has_many :accounts
    has_many :categories
    has_many :saved_cards
    has_many :cards, through: :saved_cards
end
