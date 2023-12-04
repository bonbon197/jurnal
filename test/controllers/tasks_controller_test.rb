require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # test index
  test "should get index" do
    get tasks_url
    assert_response :success
  end

  # test new
  test "should get new" do
    get new_task_url
    assert_response :success
  end

  # test create
  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { title: "test", description: "test", category_id: 1 } }
    end

    assert_redirected_to task_url(Task.last)
  end

  # test show
  test "should show task" do
    get task_url(tasks(:one))
    assert_response :success
  end

  # test edit
  test "should get edit" do
    get edit_task_url(tasks(:one))
    assert_response :success
  end

  # test update
  test "should update task" do
    patch task_url(tasks(:one)), params: { task: { title: "test", description: "test", category_id: 1 } }
    assert_redirected_to task_url(tasks(:one))

  end

  # test destroy
  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(tasks(:one))
    end

    assert_redirected_to tasks_url
  end

  # test task_params
  test "should permit title, description, category_id" do
    params = ActionController::Parameters.new(title: "test", description: "test", category_id: 1)
    permitted = params.require(:task).permit(:title, :description, :category_id)
    assert_equal permitted, params
  end

  
end
