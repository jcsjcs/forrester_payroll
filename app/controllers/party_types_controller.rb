class PartyTypesController < ApplicationController
  # GET /party_types
  # GET /party_types.xml
  def index
    @party_types = PartyType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @party_types }
    end
  end

  # GET /party_types/1
  # GET /party_types/1.xml
  def show
    @party_type = PartyType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @party_type }
    end
  end

  # GET /party_types/new
  # GET /party_types/new.xml
  def new
    @party_type = PartyType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @party_type }
    end
  end

  # GET /party_types/1/edit
  def edit
    @party_type = PartyType.find(params[:id])
  end

  # POST /party_types
  # POST /party_types.xml
  def create
    @party_type = PartyType.new(params[:party_type])

    respond_to do |format|
      if @party_type.save
        flash[:notice] = 'PartyType was successfully created.'
        format.html { redirect_to(@party_type) }
        format.xml  { render :xml => @party_type, :status => :created, :location => @party_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @party_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /party_types/1
  # PUT /party_types/1.xml
  def update
    @party_type = PartyType.find(params[:id])

    respond_to do |format|
      if @party_type.update_attributes(params[:party_type])
        flash[:notice] = 'PartyType was successfully updated.'
        format.html { redirect_to(@party_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @party_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /party_types/1
  # DELETE /party_types/1.xml
  def destroy
    @party_type = PartyType.find(params[:id])
    @party_type.destroy

    respond_to do |format|
      format.html { redirect_to(party_types_url) }
      format.xml  { head :ok }
    end
  end
end
