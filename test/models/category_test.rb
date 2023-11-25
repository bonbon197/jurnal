require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test if category name is more than 5 characters
  test "category name should be more than 5 characters" do
    @category = Category.new(name: "ball")
    assert_not @category.valid?
  end

  # test if category name is not empty
  test "category name should not be empty" do
    @category = Category.new(name: "")
    assert_not @category.valid?
  end

end
