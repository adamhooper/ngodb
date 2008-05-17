class TargetGroupsController < ApplicationController
  # GET /target_groups
  # GET /target_groups.xml
  def index
    @target_groups = TargetGroup.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @target_groups }
    end
  end

  # GET /target_groups/1
  # GET /target_groups/1.xml
  def show
    @target_group = TargetGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @target_group }
    end
  end

  # GET /target_groups/new
  # GET /target_groups/new.xml
  def new
    @target_group = TargetGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @target_group }
    end
  end

  # GET /target_groups/1/edit
  def edit
    @target_group = TargetGroup.find(params[:id])
  end

  # POST /target_groups
  # POST /target_groups.xml
  def create
    @target_group = TargetGroup.new(params[:target_group])

    respond_to do |format|
      if @target_group.save
        flash[:notice] = 'TargetGroup was successfully created.'
        format.html { redirect_to(@target_group) }
        format.xml  { render :xml => @target_group, :status => :created, :location => @target_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @target_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /target_groups/1
  # PUT /target_groups/1.xml
  def update
    @target_group = TargetGroup.find(params[:id])

    respond_to do |format|
      if @target_group.update_attributes(params[:target_group])
        flash[:notice] = 'TargetGroup was successfully updated.'
        format.html { redirect_to(@target_group) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @target_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /target_groups/1
  # DELETE /target_groups/1.xml
  def destroy
    @target_group = TargetGroup.find(params[:id])
    @target_group.destroy

    respond_to do |format|
      format.html { redirect_to(target_groups_url) }
      format.xml  { head :ok }
    end
  end
end
