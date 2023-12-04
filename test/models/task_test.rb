require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test if task title is more than 5 characters
  test "task title should be more than 5 characters" do
    @task = Task.new(title: "ball")
    assert_not @task.valid?
  end

  # test if task title is not empty
  test "task title should not be empty" do
    @task = Task.new(title: "")
    assert_not @task.valid?
  end

  # test if task description is more than 5 characters
  test "task description should be more than 5 characters" do
    @task = Task.new(description: "ball")
    assert_not @task.valid?
  end

  # test if task description is not empty
  test "task description should not be empty" do
    @task = Task.new(description: "")
    assert_not @task.valid?
  end
end
