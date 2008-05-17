require 'test_helper'

class MembershipTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:membership_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_membership_type
    assert_difference('MembershipType.count') do
      post :create, :membership_type => { }
    end

    assert_redirected_to membership_type_path(assigns(:membership_type))
  end

  def test_should_show_membership_type
    get :show, :id => membership_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => membership_types(:one).id
    assert_response :success
  end

  def test_should_update_membership_type
    put :update, :id => membership_types(:one).id, :membership_type => { }
    assert_redirected_to membership_type_path(assigns(:membership_type))
  end

  def test_should_destroy_membership_type
    assert_difference('MembershipType.count', -1) do
      delete :destroy, :id => membership_types(:one).id
    end

    assert_redirected_to membership_types_path
  end
end
