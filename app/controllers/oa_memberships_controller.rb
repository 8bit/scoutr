class OA_MembershipsController < ApplicationController
  # GET /oa_memberships
  # GET /oa_memberships.json
  def index
    @oa_memberships = OA_Membership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oa_memberships }
    end
  end

  # GET /oa_memberships/1
  # GET /oa_memberships/1.json
  def show
    @oa_membership = OA_Membership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oa_membership }
    end
  end

  # GET /oa_memberships/new
  # GET /oa_memberships/new.json
  def new
    @oa_membership = OA_Membership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oa_membership }
    end
  end

  # GET /oa_memberships/1/edit
  def edit
    @oa_membership = OA_Membership.find(params[:id])
  end

  # POST /oa_memberships
  # POST /oa_memberships.json
  def create
    @oa_membership = OA_Membership.new(params[:oa_membership])

    respond_to do |format|
      if @oa_membership.save
        format.html { redirect_to @oa_membership, notice: 'Oa membership was successfully created.' }
        format.json { render json: @oa_membership, status: :created, location: @oa_membership }
      else
        format.html { render action: "new" }
        format.json { render json: @oa_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oa_memberships/1
  # PUT /oa_memberships/1.json
  def update
    @oa_membership = OA_Membership.find(params[:id])

    respond_to do |format|
      if @oa_membership.update_attributes(params[:oa_membership])
        format.html { redirect_to @oa_membership, notice: 'Oa membership was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @oa_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oa_memberships/1
  # DELETE /oa_memberships/1.json
  def destroy
    @oa_membership = OA_Membership.find(params[:id])
    @oa_membership.destroy

    respond_to do |format|
      format.html { redirect_to oa_memberships_url }
      format.json { head :ok }
    end
  end
end
