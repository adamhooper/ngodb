class CsosController < ApplicationController
  before_filter :authorize, :except => [ :index, :show ]

  # GET /csos
  # GET /csos.xml
  def index
    @csos = Cso.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @csos }
    end
  end

  # GET /csos/1
  # GET /csos/1.xml
  def show
    @cso = Cso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cso }
    end
  end

  # GET /csos/new
  # GET /csos/new.xml
  def new
    @cso = Cso.new
    @cso.past_achievements.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cso }
    end
  end

  # GET /csos/1/edit
  def edit
    @cso = Cso.find(params[:id])
  end

  # POST /csos
  # POST /csos.xml
  def create
    @cso = Cso.new(params[:cso])

    respond_to do |format|
      if @cso.save
        flash[:notice] = 'Cso was successfully created.'
        format.html { redirect_to(@cso) }
        format.xml  { render :xml => @cso, :status => :created, :location => @cso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /csos/1
  # PUT /csos/1.xml
  def update
    params[:cso][:existing_past_achievement_attributes] ||= {}
    @cso = Cso.find(params[:id])

    respond_to do |format|
      if @cso.update_attributes(params[:cso])
        flash[:notice] = 'Cso was successfully updated.'
        format.html { redirect_to(@cso) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /csos/1
  # DELETE /csos/1.xml
  def destroy
    @cso = Cso.find(params[:id])
    @cso.destroy

    respond_to do |format|
      format.html { redirect_to(csos_url) }
      format.xml  { head :ok }
    end
  end
end
