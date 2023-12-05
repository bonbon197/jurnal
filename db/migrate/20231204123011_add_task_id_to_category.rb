class AddTaskIdToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :task_id, :integer
  end
end
