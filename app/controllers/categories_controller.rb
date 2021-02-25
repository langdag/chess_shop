class CategoriesController < ApplicationController
    before_action :set_category, only: :show
    
    def show
        respond_to do |format|
            format.html
        end
    end

    private

    def set_category
        @category = Category.find_by(id: params[:id])
        render json: {"message": 'Category not found'}, status: 422 unless @category
    end
end