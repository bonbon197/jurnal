require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  # test index
  test "should get index" do
    get categories_url
    assert_response :success
  end

  # test new
  test "should get new" do
    get new_category_url
    assert_response :success
  end

  # test create
  test "should create category" do
    assert_difference('Category.count') do
      post categories_url, params: { category: { name: "test" } }
    end

    assert_redirected_to category_url(Category.last)
  end

  # test show
  test "should show category" do
    get category_url(categories(:one))
    assert_response :success
  end

  # test edit
  test "should get edit" do
    get edit_category_url(categories(:one))
    assert_response :success
  end

  # test update
  test "should update category" do
    patch category_url(categories(:one)), params: { category: { name: "test" } }
    assert_redirected_to category_url(categories(:one))
  end

  # test destroy
  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(categories(:one))
    end

    assert_redirected_to categories_url
  end

  # test category_params
  test "should permit name" do
    params = ActionController::Parameters.new(name: "test")
    permitted = params.require(:category).permit(:name)
    assert_equal permitted, {"name" => "test"}
  end




end
