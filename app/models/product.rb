class Product < ApplicationRecord
    enum status: { draft: 0, published: 1, archived: 2 }
    validates_numericality_of :quantity, :only_interger => true, :greater_than_or_equal_to => 0
    validates_numericality_of :price, :only_decimal => true, :greater_than_or_equal_to => 1.0
    has_many :product_category, dependent: :destroy
    has_many :category, through: :product_category
end
