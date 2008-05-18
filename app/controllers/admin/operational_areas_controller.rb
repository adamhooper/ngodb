class Admin::OperationalAreasController < ApplicationController
  # GET /admin/operational_areas
  # GET /admin/operational_areas.xml
  def index
    @operational_areas = OperationalArea.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @operational_areas }
    end
  end

  # GET /admin/operational_areas/1
  # GET /admin/operational_areas/1.xml
  def show
    @operational_area = OperationalArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @operational_area }
    end
  end

  # GET /admin/operational_areas/new
  # GET /admin/operational_areas/new.xml
  def new
    @operational_area = OperationalArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @operational_area }
    end
  end

  # GET /admin/operational_areas/1/edit
  def edit
    @operational_area = OperationalArea.find(params[:id])
  end

  # POST /admin/operational_areas
  # POST /admin/operational_areas.xml
  def create
    @operational_area = OperationalArea.new(params[:operational_area])

    respond_to do |format|
      if @operational_area.save
        flash[:notice] = 'OperationalArea was successfully created.'
        format.html { redirect_to([:admin, @operational_area]) }
        format.xml  { render :xml => @operational_area, :status => :created, :location => @operational_area }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @operational_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/operational_areas/1
  # PUT /admin/operational_areas/1.xml
  def update
    @operational_area = OperationalArea.find(params[:id])

    respond_to do |format|
      if @operational_area.update_attributes(params[:operational_area])
        flash[:notice] = 'OperationalArea was successfully updated.'
        format.html { redirect_to([:admin, @operational_area]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @operational_area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/operational_areas/1
  # DELETE /admin/operational_areas/1.xml
  def destroy
    @operational_area = OperationalArea.find(params[:id])
    @operational_area.destroy

    respond_to do |format|
      format.html { redirect_to(admin_operational_areas_url) }
      format.xml  { head :ok }
    end
  end
end
