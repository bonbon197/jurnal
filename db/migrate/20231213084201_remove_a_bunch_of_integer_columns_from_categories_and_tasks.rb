class RemoveABunchOfIntegerColumnsFromCategoriesAndTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :task_id, :integer
    remove_column :users, :category_id, :integer
  end
end
