class AnnualBudgetsController < ApplicationController
  # GET /annual_budgets
  # GET /annual_budgets.xml
  def index
    @annual_budgets = AnnualBudget.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @annual_budgets }
    end
  end

  # GET /annual_budgets/1
  # GET /annual_budgets/1.xml
  def show
    @annual_budget = AnnualBudget.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @annual_budget }
    end
  end

  # GET /annual_budgets/new
  # GET /annual_budgets/new.xml
  def new
    @annual_budget = AnnualBudget.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @annual_budget }
    end
  end

  # GET /annual_budgets/1/edit
  def edit
    @annual_budget = AnnualBudget.find(params[:id])
  end

  # POST /annual_budgets
  # POST /annual_budgets.xml
  def create
    @annual_budget = AnnualBudget.new(params[:annual_budget])

    respond_to do |format|
      if @annual_budget.save
        flash[:notice] = 'AnnualBudget was successfully created.'
        format.html { redirect_to(@annual_budget) }
        format.xml  { render :xml => @annual_budget, :status => :created, :location => @annual_budget }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @annual_budget.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /annual_budgets/1
  # PUT /annual_budgets/1.xml
  def update
    @annual_budget = AnnualBudget.find(params[:id])

    respond_to do |format|
      if @annual_budget.update_attributes(params[:annual_budget])
        flash[:notice] = 'AnnualBudget was successfully updated.'
        format.html { redirect_to(@annual_budget) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @annual_budget.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /annual_budgets/1
  # DELETE /annual_budgets/1.xml
  def destroy
    @annual_budget = AnnualBudget.find(params[:id])
    @annual_budget.destroy

    respond_to do |format|
      format.html { redirect_to(annual_budgets_url) }
      format.xml  { head :ok }
    end
  end
end
