require 'test_helper'

class TargetGroupsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:target_groups)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_target_group
    assert_difference('TargetGroup.count') do
      post :create, :target_group => { }
    end

    assert_redirected_to target_group_path(assigns(:target_group))
  end

  def test_should_show_target_group
    get :show, :id => target_groups(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => target_groups(:one).id
    assert_response :success
  end

  def test_should_update_target_group
    put :update, :id => target_groups(:one).id, :target_group => { }
    assert_redirected_to target_group_path(assigns(:target_group))
  end

  def test_should_destroy_target_group
    assert_difference('TargetGroup.count', -1) do
      delete :destroy, :id => target_groups(:one).id
    end

    assert_redirected_to target_groups_path
  end
end
