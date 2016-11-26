require 'test_helper'

class NotionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notion = notions(:one)
  end

  test "should get index" do
    get notions_url
    assert_response :success
  end

  test "should get new" do
    get new_notion_url
    assert_response :success
  end

  test "should create notion" do
    assert_difference('Notion.count') do
      post notions_url, params: { notion: {  } }
    end

    assert_redirected_to notion_url(Notion.last)
  end

  test "should show notion" do
    get notion_url(@notion)
    assert_response :success
  end

  test "should get edit" do
    get edit_notion_url(@notion)
    assert_response :success
  end

  test "should update notion" do
    patch notion_url(@notion), params: { notion: {  } }
    assert_redirected_to notion_url(@notion)
  end

  test "should destroy notion" do
    assert_difference('Notion.count', -1) do
      delete notion_url(@notion)
    end

    assert_redirected_to notions_url
  end
end
