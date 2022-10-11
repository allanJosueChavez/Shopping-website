class Discount < ApplicationRecord
    validates :name, presence: true
    validates :percent, numericality: true, presence: true
end
