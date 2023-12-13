require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # test task creation
  test "should create task" do
    assert_difference('Task.count') do
      post category_tasks_url(categories(:one)), params: { task: { name: "test", details: "test" } }
    end

    assert_redirected_to category_url(categories(:one))
  end

  # test task deletion
  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete category_task_url(categories(:one), tasks(:one))
    end

    assert_redirected_to category_url(categories(:one))
  end

  # test task edit
  test "should get edit" do
    get edit_category_task_url(categories(:one), tasks(:one))
    assert_response :success
  end

  # test task update
  test "should update task" do
    patch category_task_url(categories(:one), tasks(:one)), params: { task: { name: "test", details: "test" } }
    assert_redirected_to category_url(categories(:one))
  end
end
