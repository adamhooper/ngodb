class Admin::SectorFocusesController < Admin::BaseController
  # GET /sector_focuses
  # GET /sector_focuses.xml
  def index
    @sector_focuses = SectorFocus.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sector_focuses }
    end
  end

  # GET /sector_focuses/1
  # GET /sector_focuses/1.xml
  def show
    @sector_focus = SectorFocus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sector_focus }
    end
  end

  # GET /sector_focuses/new
  # GET /sector_focuses/new.xml
  def new
    @sector_focus = SectorFocus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sector_focus }
    end
  end

  # GET /sector_focuses/1/edit
  def edit
    @sector_focus = SectorFocus.find(params[:id])
  end

  # POST /sector_focuses
  # POST /sector_focuses.xml
  def create
    @sector_focus = SectorFocus.new(params[:sector_focus])

    respond_to do |format|
      if @sector_focus.save
        flash[:notice] = 'SectorFocus was successfully created.'
        format.html { redirect_to([:admin, @sector_focus]) }
        format.xml  { render :xml => @sector_focus, :status => :created, :location => @sector_focus }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sector_focus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sector_focuses/1
  # PUT /sector_focuses/1.xml
  def update
    @sector_focus = SectorFocus.find(params[:id])

    respond_to do |format|
      if @sector_focus.update_attributes(params[:sector_focus])
        flash[:notice] = 'SectorFocus was successfully updated.'
        format.html { redirect_to([:admin, @sector_focus]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sector_focus.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sector_focuses/1
  # DELETE /sector_focuses/1.xml
  def destroy
    @sector_focus = SectorFocus.find(params[:id])
    @sector_focus.destroy

    respond_to do |format|
      format.html { redirect_to(admin_sector_focuses_url) }
      format.xml  { head :ok }
    end
  end
end
