class Collection < ApplicationRecord
  has_many :card_collections
  has_many :cards, through: :card_collections
end
