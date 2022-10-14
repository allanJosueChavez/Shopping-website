class Product < ApplicationRecord
    validates :price, numericality: true, presence: true
    validates :name, presence: true
    # validates :code, presence: true, uniqueness: true
    validates :category, presence: true
    # validates :discounts_id, numericality: true
end
