require 'test_helper'

class GformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gform = gforms(:one)
  end

  test "should get index" do
    get gforms_url
    assert_response :success
  end

  test "should get new" do
    get new_gform_url
    assert_response :success
  end

  test "should create gform" do
    assert_difference('Gform.count') do
      post gforms_url, params: { gform: { edit_link: @gform.edit_link, name: @gform.name, sheets_link: @gform.sheets_link, view_link: @gform.view_link } }
    end

    assert_redirected_to gform_url(Gform.last)
  end

  test "should show gform" do
    get gform_url(@gform)
    assert_response :success
  end

  test "should get edit" do
    get edit_gform_url(@gform)
    assert_response :success
  end

  test "should update gform" do
    patch gform_url(@gform), params: { gform: { edit_link: @gform.edit_link, name: @gform.name, sheets_link: @gform.sheets_link, view_link: @gform.view_link } }
    assert_redirected_to gform_url(@gform)
  end

  test "should destroy gform" do
    assert_difference('Gform.count', -1) do
      delete gform_url(@gform)
    end

    assert_redirected_to gforms_url
  end
end
