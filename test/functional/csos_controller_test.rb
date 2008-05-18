require 'test_helper'

class CsosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:csos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_cso
    assert_difference('Cso.count') do
      post :create, :cso => { :name => 'name', :name_sw => 'name_sw', :region => 'region', :district => 'district', :membership_type_id => 1, :operational_area_id => 1, :annual_budget_id => 1, :urban_focus => true, :rural_focus => false }
    end

    assert_redirected_to cso_path(assigns(:cso))
  end

  def test_should_show_cso
    get :show, :id => csos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => csos(:one).id
    assert_response :success
  end

  def test_should_update_cso
    put :update, :id => csos(:one).id, :cso => { :name => 'name', :name_sw => 'name_sw', :region => 'region', :district => 'district', :membership_type_id => 1, :operational_area_id => 1, :annual_budget_id => 1, :urban_focus => true, :rural_focus => false }
    assert_redirected_to cso_path(assigns(:cso))
  end

  def test_should_destroy_cso
    assert_difference('Cso.count', -1) do
      delete :destroy, :id => csos(:one).id
    end

    assert_redirected_to csos_path
  end
end
