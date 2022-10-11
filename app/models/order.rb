class Order < ApplicationRecord
    validates :total, numericality: true
    has_many :items, foreign_key: "matches_id", dependent: :destroy
end
