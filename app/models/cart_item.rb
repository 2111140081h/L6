class CartItem < ApplicationRecord
    has_one :product
    belongs_to :cart
end
