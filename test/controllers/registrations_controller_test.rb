require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # test index
  test "should get index" do
    get registrations_url
    assert_response :success
  end

  # test new
  test "should get new" do
    get new_registration_url
    assert_response :success
  end

  # test create
  test "should create registration" do
    assert_difference('Registration.count') do
      post registrations_url, params: { registration: { name: "test" } }
    end

    assert_redirected_to registration_url(Registration.last)
  end

  # test show
  test "should show registration" do
    get registration_url(registrations(:one))
    assert_response :success
  end
  
  # test edit
  test "should get edit" do
    get edit_registration_url(registrations(:one))
    assert_response :success
  end

  # test update
  test "should update registration" do
    patch registration_url(registrations(:one)), params: { registration: { name: "test" } }
    assert_redirected_to registration_url(registrations(:one))
  end

  # test destroy
  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete registration_url(registrations(:one))
    end

    assert_redirected_to registrations_url
  end

  # test registration_params
  test "should permit name" do
    params = ActionController::Parameters.new(name: "test")
    permitted = params.require(:registration).permit(:name)
    assert permitted.permitted?
  end

  # test find_registration
  test "should find registration" do
    assert_equal registrations(:one), Registration.find(registrations(:one).id)
  end

  
end
