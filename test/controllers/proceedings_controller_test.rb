require "test_helper"

class ProceedingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proceeding = proceedings(:one)
  end

  test "should get index" do
    get proceedings_url
    assert_response :success
  end

  test "should get new" do
    get new_proceeding_url
    assert_response :success
  end

  test "should create proceeding" do
    assert_difference("Proceeding.count") do
      post proceedings_url, params: { proceeding: { amount: @proceeding.amount, name: @proceeding.name, user_id: @proceeding.user_id } }
    end

    assert_redirected_to proceeding_url(Proceeding.last)
  end

  test "should show proceeding" do
    get proceeding_url(@proceeding)
    assert_response :success
  end

  test "should get edit" do
    get edit_proceeding_url(@proceeding)
    assert_response :success
  end

  test "should update proceeding" do
    patch proceeding_url(@proceeding), params: { proceeding: { amount: @proceeding.amount, name: @proceeding.name, user_id: @proceeding.user_id } }
    assert_redirected_to proceeding_url(@proceeding)
  end

  test "should destroy proceeding" do
    assert_difference("Proceeding.count", -1) do
      delete proceeding_url(@proceeding)
    end

    assert_redirected_to proceedings_url
  end
end
