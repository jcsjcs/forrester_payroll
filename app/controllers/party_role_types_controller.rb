class PartyRoleTypesController < ApplicationController
  # GET /party_role_types
  # GET /party_role_types.xml
  def index
    @party_role_types = PartyRoleType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @party_role_types }
    end
  end

  # GET /party_role_types/1
  # GET /party_role_types/1.xml
  def show
    @party_role_type = PartyRoleType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @party_role_type }
    end
  end

  # GET /party_role_types/new
  # GET /party_role_types/new.xml
  def new
    @party_role_type = PartyRoleType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @party_role_type }
    end
  end

  # GET /party_role_types/1/edit
  def edit
    @party_role_type = PartyRoleType.find(params[:id])
  end

  # POST /party_role_types
  # POST /party_role_types.xml
  def create
    @party_role_type = PartyRoleType.new(params[:party_role_type])

    respond_to do |format|
      if @party_role_type.save
        flash[:notice] = 'PartyRoleType was successfully created.'
        format.html { redirect_to(@party_role_type) }
        format.xml  { render :xml => @party_role_type, :status => :created, :location => @party_role_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @party_role_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /party_role_types/1
  # PUT /party_role_types/1.xml
  def update
    @party_role_type = PartyRoleType.find(params[:id])

    respond_to do |format|
      if @party_role_type.update_attributes(params[:party_role_type])
        flash[:notice] = 'PartyRoleType was successfully updated.'
        format.html { redirect_to(@party_role_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @party_role_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /party_role_types/1
  # DELETE /party_role_types/1.xml
  def destroy
    @party_role_type = PartyRoleType.find(params[:id])
    @party_role_type.destroy

    respond_to do |format|
      format.html { redirect_to(party_role_types_url) }
      format.xml  { head :ok }
    end
  end
end
