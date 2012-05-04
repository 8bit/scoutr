class RoundtablesController < ApplicationController
  # GET /roundtables
  # GET /roundtables.json
  before_filter :require_user
  
  def index
    @district = District.find(params[:district_id])
    @roundtables = Roundtable.where(:district_id => @district)
    
    @roundtable = Roundtable.new(:district => @district)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roundtables }
    end
  end

  # GET /roundtables/1
  # GET /roundtables/1.json
  def show
    @roundtable = Roundtable.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roundtable }
    end
  end

  # GET /roundtables/new
  # GET /roundtables/new.json
  def new
    @district = District.find(params[:district_id]) if params[:district_id].present?
    @roundtable = Roundtable.new
    @roundtable.district = @district if params[:district_id].present?
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roundtable }
    end
  end

  # GET /roundtables/1/edit
  def edit
    @roundtable = Roundtable.find(params[:id])
  end

  # POST /roundtables
  # POST /roundtables.json
  def create
    params[:roundtable][:happened_on] ||= Date.today
    @roundtable = Roundtable.new(params[:roundtable])

    respond_to do |format|
      if @roundtable.save
        format.html { redirect_to district_roundtables_path(@roundtable.district), :flash => { success: 'Roundtable was successfully created.'} }
        format.json { render json: @roundtable, status: :created, location: @roundtable }
      else
        format.html { render action: "new" }
        format.json { render json: @roundtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roundtables/1
  # PUT /roundtables/1.json
  def update
    @roundtable = Roundtable.find(params[:id])

    respond_to do |format|
      if @roundtable.update_attributes(params[:roundtable])
        format.html { redirect_to @roundtable, notice: 'Roundtable was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @roundtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roundtables/1
  # DELETE /roundtables/1.json
  def destroy
    @roundtable = Roundtable.find(params[:id])
    @roundtable.destroy

    respond_to do |format|
      format.html { redirect_to roundtables_url }
      format.json { head :ok }
    end
  end
end
