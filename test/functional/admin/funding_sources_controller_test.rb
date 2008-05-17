require 'test_helper'

class Admin::FundingSourcesControllerTest < ActionController::TestCase
  fixtures :funding_sources

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:funding_sources)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_funding_source
    assert_difference('FundingSource.count') do
      post :create, :funding_source => { :name => 'name', :name_sw => 'name_sw' }
    end

    assert_redirected_to admin_funding_source_path(assigns(:funding_source))
  end

  def test_should_show_funding_source
    get :show, :id => funding_sources(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => funding_sources(:one).id
    assert_response :success
  end

  def test_should_update_funding_source
    put :update, :id => funding_sources(:one).id, :funding_source => { :name => 'name', :name_sw => 'name_sw' }
    assert_redirected_to admin_funding_source_path(assigns(:funding_source))
  end

  def test_should_destroy_funding_source
    assert_difference('FundingSource.count', -1) do
      delete :destroy, :id => funding_sources(:one).id
    end

    assert_redirected_to admin_funding_sources_path
  end
end
