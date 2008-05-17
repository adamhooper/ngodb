require 'test_helper'

class AnnualBudgetsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:annual_budgets)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_annual_budget
    assert_difference('AnnualBudget.count') do
      post :create, :annual_budget => { }
    end

    assert_redirected_to annual_budget_path(assigns(:annual_budget))
  end

  def test_should_show_annual_budget
    get :show, :id => annual_budgets(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => annual_budgets(:one).id
    assert_response :success
  end

  def test_should_update_annual_budget
    put :update, :id => annual_budgets(:one).id, :annual_budget => { }
    assert_redirected_to annual_budget_path(assigns(:annual_budget))
  end

  def test_should_destroy_annual_budget
    assert_difference('AnnualBudget.count', -1) do
      delete :destroy, :id => annual_budgets(:one).id
    end

    assert_redirected_to annual_budgets_path
  end
end
