class Admin::RegistrationActsController < Admin::BaseController
  # GET /registration_acts
  # GET /registration_acts.xml
  def index
    @registration_acts = RegistrationAct.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @registration_acts }
    end
  end

  # GET /registration_acts/1
  # GET /registration_acts/1.xml
  def show
    @registration_act = RegistrationAct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @registration_act }
    end
  end

  # GET /registration_acts/new
  # GET /registration_acts/new.xml
  def new
    @registration_act = RegistrationAct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @registration_act }
    end
  end

  # GET /registration_acts/1/edit
  def edit
    @registration_act = RegistrationAct.find(params[:id])
  end

  # POST /registration_acts
  # POST /registration_acts.xml
  def create
    @registration_act = RegistrationAct.new(params[:registration_act])

    respond_to do |format|
      if @registration_act.save
        flash[:notice] = 'RegistrationAct was successfully created.'
        format.html { redirect_to([:admin, @registration_act]) }
        format.xml  { render :xml => @registration_act, :status => :created, :location => @registration_act }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @registration_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registration_acts/1
  # PUT /registration_acts/1.xml
  def update
    @registration_act = RegistrationAct.find(params[:id])

    respond_to do |format|
      if @registration_act.update_attributes(params[:registration_act])
        flash[:notice] = 'RegistrationAct was successfully updated.'
        format.html { redirect_to([:admin, @registration_act]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @registration_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_acts/1
  # DELETE /registration_acts/1.xml
  def destroy
    @registration_act = RegistrationAct.find(params[:id])
    @registration_act.destroy

    respond_to do |format|
      format.html { redirect_to(admin_registration_acts_url) }
      format.xml  { head :ok }
    end
  end
end
