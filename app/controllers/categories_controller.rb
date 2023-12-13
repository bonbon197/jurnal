class CategoriesController < ApplicationController
    before_action :find_category, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index
        @categories = current_user.categories
    end

    def show
    end

    def new
        @category = current_user.categories.build
    end

    def edit
    end

    def create
        @category = current_user.categories.build(category_params)

        if @category.save
            redirect_to categories_path, notice: 'Category was successfully created.'
        else
            render 'new', status: :unprocessable_entity
        end
    end

    def update
        if @category.update(category_params)
            redirect_to category_path(@category), notice: 'Category was successfully updated.', status: :ok
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def destroy
        @category.destroy

        redirect_to categories_path, notice: 'Category was successfully destroyed.'
    end

    private
        def category_params
            params.require(:category).permit(:name, :details)
        end

        def find_category
            @category = Category.find(params[:id])
        end

        
end
