require 'test_helper'

class Admin::OperationalAreasControllerTest < ActionController::TestCase
  fixtures :operational_areas

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:operational_areas)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_operational_area
    assert_difference('OperationalArea.count') do
      post :create, :operational_area => { :name => 'name', :name_sw => 'name_sw' }
    end

    assert_redirected_to admin_operational_area_path(assigns(:operational_area))
  end

  def test_should_show_operational_area
    get :show, :id => operational_areas(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => operational_areas(:one).id
    assert_response :success
  end

  def test_should_update_operational_area
    put :update, :id => operational_areas(:one).id, :operational_area => { :name => 'name', :name_sw => 'name_sw' }
    assert_redirected_to admin_operational_area_path(assigns(:operational_area))
  end

  def test_should_destroy_operational_area
    assert_difference('OperationalArea.count', -1) do
      delete :destroy, :id => operational_areas(:one).id
    end

    assert_redirected_to admin_operational_areas_path
  end
end
