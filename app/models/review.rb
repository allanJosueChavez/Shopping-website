class Review < ApplicationRecord
    validates :rating, numericality: true
    validates :title, presence: true
end
