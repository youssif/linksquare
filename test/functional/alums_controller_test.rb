require 'test_helper'

class AlumsControllerTest < ActionController::TestCase
  setup do
    @alum = alums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alum" do
    assert_difference('Alum.count') do
      post :create, alum: { city: @alum.city, cohort: @alum.cohort, expertise: @alum.expertise, first_name: @alum.first_name, github_link: @alum.github_link, last_name: @alum.last_name, linkedin_url: @alum.linkedin_url, picture: @alum.picture, state: @alum.state, title: @alum.title, twitter_handle: @alum.twitter_handle }
    end

    assert_redirected_to alum_path(assigns(:alum))
  end

  test "should show alum" do
    get :show, id: @alum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alum
    assert_response :success
  end

  test "should update alum" do
    put :update, id: @alum, alum: { city: @alum.city, cohort: @alum.cohort, expertise: @alum.expertise, first_name: @alum.first_name, github_link: @alum.github_link, last_name: @alum.last_name, linkedin_url: @alum.linkedin_url, picture: @alum.picture, state: @alum.state, title: @alum.title, twitter_handle: @alum.twitter_handle }
    assert_redirected_to alum_path(assigns(:alum))
  end

  test "should destroy alum" do
    assert_difference('Alum.count', -1) do
      delete :destroy, id: @alum
    end

    assert_redirected_to alums_path
  end
end
