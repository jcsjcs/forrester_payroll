class PartyRolesController < ApplicationController
  # GET /party_roles
  # GET /party_roles.xml
  def index
    @party_roles = PartyRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @party_roles }
    end
  end

  # GET /party_roles/1
  # GET /party_roles/1.xml
  def show
    @party_role = PartyRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @party_role }
    end
  end

  # GET /party_roles/new
  # GET /party_roles/new.xml
  def new
    @party_role = PartyRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @party_role }
    end
  end

  # GET /party_roles/1/edit
  def edit
    @party_role = PartyRole.find(params[:id])
  end

  # POST /party_roles
  # POST /party_roles.xml
  def create
    @party_role = PartyRole.new(params[:party_role])

    respond_to do |format|
      if @party_role.save
        flash[:notice] = 'PartyRole was successfully created.'
        format.html { redirect_to(@party_role) }
        format.xml  { render :xml => @party_role, :status => :created, :location => @party_role }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @party_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /party_roles/1
  # PUT /party_roles/1.xml
  def update
    @party_role = PartyRole.find(params[:id])

    respond_to do |format|
      if @party_role.update_attributes(params[:party_role])
        flash[:notice] = 'PartyRole was successfully updated.'
        format.html { redirect_to(@party_role) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @party_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /party_roles/1
  # DELETE /party_roles/1.xml
  def destroy
    @party_role = PartyRole.find(params[:id])
    @party_role.destroy

    respond_to do |format|
      format.html { redirect_to(party_roles_url) }
      format.xml  { head :ok }
    end
  end
end
