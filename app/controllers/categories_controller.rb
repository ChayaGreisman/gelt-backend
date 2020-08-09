class CategoriesController < ApplicationController

    def create
        category=Category.create(category_params)
        render json: category, include: [:transactions]
    end

    def update
        category=Category.find(params[:id])
        category.update(category_params)
        render json: category, include: [:transactions]
    end

    def destroy
        category=Category.find(params[:id])
        category.destroy
        render json: category
    end


    private

    def category_params
        params.require(:category).permit(:user_id, :name, :budgeted_amount)
    end

end
