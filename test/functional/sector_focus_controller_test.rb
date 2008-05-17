require 'test_helper'

class SectorFocusControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sector_focus)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sector_focus
    assert_difference('SectorFocus.count') do
      post :create, :sector_focus => { }
    end

    assert_redirected_to sector_focus_path(assigns(:sector_focus))
  end

  def test_should_show_sector_focus
    get :show, :id => sector_focus(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sector_focus(:one).id
    assert_response :success
  end

  def test_should_update_sector_focus
    put :update, :id => sector_focus(:one).id, :sector_focus => { }
    assert_redirected_to sector_focus_path(assigns(:sector_focus))
  end

  def test_should_destroy_sector_focus
    assert_difference('SectorFocus.count', -1) do
      delete :destroy, :id => sector_focus(:one).id
    end

    assert_redirected_to sector_focus_path
  end
end
