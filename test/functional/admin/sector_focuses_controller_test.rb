require 'test_helper'

class Admin::SectorFocusesControllerTest < ActionController::TestCase
  fixtures :sector_focuses

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sector_focuses)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sector_focus
    assert_difference('SectorFocus.count') do
      post :create, :sector_focus => { :name => 'name', :name_sw => 'name_sw' }
    end

    assert_redirected_to admin_sector_focus_path(assigns(:sector_focus))
  end

  def test_should_show_sector_focus
    get :show, :id => sector_focuses(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sector_focuses(:one).id
    assert_response :success
  end

  def test_should_update_sector_focus
    put :update, :id => sector_focuses(:one).id, :sector_focus => { :name => 'name', :name_sw => 'name_sw' }
    assert_redirected_to admin_sector_focus_path(assigns(:sector_focus))
  end

  def test_should_destroy_sector_focus
    assert_difference('SectorFocus.count', -1) do
      delete :destroy, :id => sector_focuses(:one).id
    end

    assert_redirected_to admin_sector_focuses_path
  end
end
