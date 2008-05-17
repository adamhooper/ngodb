class SectorFocusController < ApplicationController
  # GET /sector_focus
  # GET /sector_focus.xml
  def index
    @sector_focus = SectorFocus.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sector_focus }
    end
  end

  # GET /sector_focus/1
  # GET /sector_focus/1.xml
  def show
    @sector_focus = SectorFocus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sector_focus }
    end
  end

  # GET /sector_focus/new
  # GET /sector_focus/new.xml
  def new
    @sector_focus = SectorFocus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sector_focus }
    end
  end

  # GET /sector_focus/1/edit
  def edit
    @sector_focus = SectorFocus.find(params[:id])
  end

  # POST /sector_focus
  # POST /sector_focus.xml
  def create
    @sector_focus = SectorFocus.new(params[:sector_focus])

    respond_to do |format|
      if @sector_focus.save
        flash[:notice] = 'SectorFocus was successfully created.'
        format.html { redirect_to(@sector_focus) }
        format.xml  { render :xml => @sector_focus, :status => :created, :location => @sector_focus }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sector_focus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sector_focus/1
  # PUT /sector_focus/1.xml
  def update
    @sector_focus = SectorFocus.find(params[:id])

    respond_to do |format|
      if @sector_focus.update_attributes(params[:sector_focus])
        flash[:notice] = 'SectorFocus was successfully updated.'
        format.html { redirect_to(@sector_focus) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sector_focus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sector_focus/1
  # DELETE /sector_focus/1.xml
  def destroy
    @sector_focus = SectorFocus.find(params[:id])
    @sector_focus.destroy

    respond_to do |format|
      format.html { redirect_to(sector_focus_url) }
      format.xml  { head :ok }
    end
  end
end
