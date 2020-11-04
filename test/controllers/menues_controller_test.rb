require 'test_helper'

class MenuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menue = menues(:one)
    @name = "food#{rand(10)}"
  end

  test "should get index" do
    get menues_url
    assert_response :success
  end

  test "should get new" do
    get new_menue_url
    assert_response :success
  end

  test "should create menue" do
    assert_difference('Menue.count') do
      post menues_url, params: { menue: { description: @menue.description, image_url: @menue.image_url, ingridients: @menue.ingridients, name: @name } }
    end

    assert_redirected_to menue_url(Menue.last)
  end

  test "should show menue" do
    get menue_url(@menue)
    assert_response :success
  end

  test "should get edit" do
    get edit_menue_url(@menue)
    assert_response :success
  end

  test "should update menue" do
    patch menue_url(@menue), params: { menue: { description: @menue.description, image_url: @menue.image_url, ingridients: @menue.ingridients, name: @name } }
    assert_redirected_to menue_url(@menue)
  end

  test "should destroy menue" do
    assert_difference('Menue.count', -1) do
      delete menue_url(@menue)
    end

    assert_redirected_to menues_url
  end
end
