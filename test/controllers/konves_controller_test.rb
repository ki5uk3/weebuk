require "test_helper"

class KonvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @konfe = konves(:one)
  end

  test "should get index" do
    get konves_url
    assert_response :success
  end

  test "should get new" do
    get new_konfe_url
    assert_response :success
  end

  test "should create konfe" do
    assert_difference('Konfe.count') do
      post konves_url, params: { konfe: { age: @konfe.age, insta_uname: @konfe.insta_uname, name: @konfe.name, quote: @konfe.quote, snap_uname: @konfe.snap_uname } }
    end

    assert_redirected_to konfe_url(Konfe.last)
  end

  test "should show konfe" do
    get konfe_url(@konfe)
    assert_response :success
  end

  test "should get edit" do
    get edit_konfe_url(@konfe)
    assert_response :success
  end

  test "should update konfe" do
    patch konfe_url(@konfe), params: { konfe: { age: @konfe.age, insta_uname: @konfe.insta_uname, name: @konfe.name, quote: @konfe.quote, snap_uname: @konfe.snap_uname } }
    assert_redirected_to konfe_url(@konfe)
  end

  test "should destroy konfe" do
    assert_difference('Konfe.count', -1) do
      delete konfe_url(@konfe)
    end

    assert_redirected_to konves_url
  end
end
