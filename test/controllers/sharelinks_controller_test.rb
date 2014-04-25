require 'test_helper'

class SharelinksControllerTest < ActionController::TestCase
  setup do
    @sharelink = sharelinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sharelinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sharelink" do
    assert_difference('Sharelink.count') do
      post :create, sharelink: { comment: @sharelink.comment, link: @sharelink.link }
    end

    assert_redirected_to sharelink_path(assigns(:sharelink))
  end

  test "should show sharelink" do
    get :show, id: @sharelink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sharelink
    assert_response :success
  end

  test "should update sharelink" do
    patch :update, id: @sharelink, sharelink: { comment: @sharelink.comment, link: @sharelink.link }
    assert_redirected_to sharelink_path(assigns(:sharelink))
  end

  test "should destroy sharelink" do
    assert_difference('Sharelink.count', -1) do
      delete :destroy, id: @sharelink
    end

    assert_redirected_to sharelinks_path
  end
end
