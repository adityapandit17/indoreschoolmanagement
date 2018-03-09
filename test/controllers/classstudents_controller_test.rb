require 'test_helper'

class ClassstudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classstudent = classstudents(:one)
  end

  test "should get index" do
    get classstudents_url
    assert_response :success
  end

  test "should get new" do
    get new_classstudent_url
    assert_response :success
  end

  test "should create classstudent" do
    assert_difference('Classstudent.count') do
      post classstudents_url, params: { classstudent: { detail: @classstudent.detail, name: @classstudent.name, status: @classstudent.status } }
    end

    assert_redirected_to classstudent_url(Classstudent.last)
  end

  test "should show classstudent" do
    get classstudent_url(@classstudent)
    assert_response :success
  end

  test "should get edit" do
    get edit_classstudent_url(@classstudent)
    assert_response :success
  end

  test "should update classstudent" do
    patch classstudent_url(@classstudent), params: { classstudent: { detail: @classstudent.detail, name: @classstudent.name, status: @classstudent.status } }
    assert_redirected_to classstudent_url(@classstudent)
  end

  test "should destroy classstudent" do
    assert_difference('Classstudent.count', -1) do
      delete classstudent_url(@classstudent)
    end

    assert_redirected_to classstudents_url
  end
end
