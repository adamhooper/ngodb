class MembershipTypesController < ApplicationController
  # GET /membership_types
  # GET /membership_types.xml
  def index
    @membership_types = MembershipType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @membership_types }
    end
  end

  # GET /membership_types/1
  # GET /membership_types/1.xml
  def show
    @membership_type = MembershipType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @membership_type }
    end
  end

  # GET /membership_types/new
  # GET /membership_types/new.xml
  def new
    @membership_type = MembershipType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @membership_type }
    end
  end

  # GET /membership_types/1/edit
  def edit
    @membership_type = MembershipType.find(params[:id])
  end

  # POST /membership_types
  # POST /membership_types.xml
  def create
    @membership_type = MembershipType.new(params[:membership_type])

    respond_to do |format|
      if @membership_type.save
        flash[:notice] = 'MembershipType was successfully created.'
        format.html { redirect_to(@membership_type) }
        format.xml  { render :xml => @membership_type, :status => :created, :location => @membership_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @membership_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /membership_types/1
  # PUT /membership_types/1.xml
  def update
    @membership_type = MembershipType.find(params[:id])

    respond_to do |format|
      if @membership_type.update_attributes(params[:membership_type])
        flash[:notice] = 'MembershipType was successfully updated.'
        format.html { redirect_to(@membership_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @membership_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /membership_types/1
  # DELETE /membership_types/1.xml
  def destroy
    @membership_type = MembershipType.find(params[:id])
    @membership_type.destroy

    respond_to do |format|
      format.html { redirect_to(membership_types_url) }
      format.xml  { head :ok }
    end
  end
end
