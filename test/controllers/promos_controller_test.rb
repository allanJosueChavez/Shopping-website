require "test_helper"

class PromosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promo = promos(:one)
  end

  test "should get index" do
    get promos_url, as: :json
    assert_response :success
  end

  test "should create promo" do
    assert_difference("Promo.count") do
      post promos_url, params: { promo: { code: @promo.code, discount: @promo.discount, name: @promo.name } }, as: :json
    end

    assert_response :created
  end

  test "should show promo" do
    get promo_url(@promo), as: :json
    assert_response :success
  end

  test "should update promo" do
    patch promo_url(@promo), params: { promo: { code: @promo.code, discount: @promo.discount, name: @promo.name } }, as: :json
    assert_response :success
  end

  test "should destroy promo" do
    assert_difference("Promo.count", -1) do
      delete promo_url(@promo), as: :json
    end

    assert_response :no_content
  end
end
