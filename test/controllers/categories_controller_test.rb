require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # test if a category can be created
  test "should create category" do
    assert_difference('Category.count', 1) do
      post categories_url, params: { category: { name: 'Sports' } }
    end

    assert_redirected_to category_url(Category.last)
  end

  # test if a category can be deleted
  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(categories(:one))
    end

    assert_redirected_to categories_url
  end

  # test if a category can be updated
  test "should update category" do
    patch category_url(categories(:one)), params: { category: { name: 'Sports' } }
    assert_redirected_to category_url(categories(:one))
  end

  # test if a category can be shown
  test "should show category" do
    get category_url(categories(:one))
    assert_response :success
  end

  # test if a category can be listed
  test "should get index" do
    get categories_url
    assert_response :success
  end

  # test if a category can be edited
  test "should get edit" do
    get edit_category_url(categories(:one))
    assert_response :success
  end

  # test if a category can be created
  test "should get new" do
    get new_category_url
    assert_response :success
  end

end
