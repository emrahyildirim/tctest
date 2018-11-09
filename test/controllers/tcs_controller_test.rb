require 'test_helper'

class TcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tc = tcs(:one)
  end

  test "should get index" do
    get tcs_url
    assert_response :success
  end

  test "should get new" do
    get new_tc_url
    assert_response :success
  end

  test "should create tc" do
    assert_difference('Tc.count') do
      post tcs_url, params: { tc: { name: @tc.name, surname: @tc.surname, tc_id: @tc.tc_id, year: @tc.year } }
    end

    assert_redirected_to tc_url(Tc.last)
  end

  test "should show tc" do
    get tc_url(@tc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tc_url(@tc)
    assert_response :success
  end

  test "should update tc" do
    patch tc_url(@tc), params: { tc: { name: @tc.name, surname: @tc.surname, tc_id: @tc.tc_id, year: @tc.year } }
    assert_redirected_to tc_url(@tc)
  end

  test "should destroy tc" do
    assert_difference('Tc.count', -1) do
      delete tc_url(@tc)
    end

    assert_redirected_to tcs_url
  end
end
