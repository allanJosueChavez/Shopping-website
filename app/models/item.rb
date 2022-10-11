class Item < ApplicationRecord
    validates :amount, presence: true, numericality: true
    validates :subtotal, numericality: true
end
