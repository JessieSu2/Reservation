require "test_helper"

class ReservationtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservationtable = reservationtables(:one)
  end

  test "should get index" do
    get reservationtables_url
    assert_response :success
  end

  test "should get new" do
    get new_reservationtable_url
    assert_response :success
  end

  test "should create reservationtable" do
    assert_difference("Reservationtable.count") do
      post reservationtables_url, params: { reservationtable: { name: @reservationtable.name, people: @reservationtable.people, phone: @reservationtable.phone } }
    end

    assert_redirected_to reservationtable_url(Reservationtable.last)
  end

  test "should show reservationtable" do
    get reservationtable_url(@reservationtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservationtable_url(@reservationtable)
    assert_response :success
  end

  test "should update reservationtable" do
    patch reservationtable_url(@reservationtable), params: { reservationtable: { name: @reservationtable.name, people: @reservationtable.people, phone: @reservationtable.phone } }
    assert_redirected_to reservationtable_url(@reservationtable)
  end

  test "should destroy reservationtable" do
    assert_difference("Reservationtable.count", -1) do
      delete reservationtable_url(@reservationtable)
    end

    assert_redirected_to reservationtables_url
  end
end
