class Category < ApplicationRecord
    has_closure_tree
    has_many :products
end
