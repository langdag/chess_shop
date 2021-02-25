class HomeController < ApplicationController
    def index
        @categories = Category.hash_tree
    end
end