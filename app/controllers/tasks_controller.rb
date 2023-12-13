class TasksController < ApplicationController
    before_action :find_category
    before_action :authenticate_user!

    def create
        @task = @category.tasks.create(task_params)
        redirect_to category_path(@category)
    end

    def destroy
        @task = @category.tasks.find(params[:id])
        @task.destroy
        redirect_to category_path(@category)
    end

    def edit
        @task = @category.tasks.find(params[:id])
    end

    def update
        @task = @category.tasks.find(params[:id])
        @task.update(task_params)
        redirect_to category_path(@category)
    end

    private

    def task_params
        params.require(:task).permit(:name, :details)
    end

    def find_category
        @category = Category.find(params[:category_id])
    end
end
