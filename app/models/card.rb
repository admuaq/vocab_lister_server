class Card < ApplicationRecord
  has_many :card_collections
  has_many :collections, through: :card_collections
end
