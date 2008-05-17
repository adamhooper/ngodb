require 'test_helper'

class Admin::RegistrationActsControllerTest < ActionController::TestCase
  fixtures :registration_acts

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_acts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_registration_act
    assert_difference('RegistrationAct.count') do
      post :create, :registration_act => { :name => 'name', :name_sw => 'name_sw' }
    end

    assert_redirected_to admin_registration_act_path(assigns(:registration_act))
  end

  def test_should_show_registration_act
    get :show, :id => registration_acts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => registration_acts(:one).id
    assert_response :success
  end

  def test_should_update_registration_act
    put :update, :id => registration_acts(:one).id, :registration_act => { :name => 'name', :name_sw => 'name_sw' }
    assert_redirected_to admin_registration_act_path(assigns(:registration_act))
  end

  def test_should_destroy_registration_act
    assert_difference('RegistrationAct.count', -1) do
      delete :destroy, :id => registration_acts(:one).id
    end

    assert_redirected_to admin_registration_acts_path
  end
end
