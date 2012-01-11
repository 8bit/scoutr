class LodgesController < ApplicationController
  # GET /lodges
  # GET /lodges.json
  def index
    @lodges = Lodge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lodges }
    end
  end

  # GET /lodges/1
  # GET /lodges/1.json
  def show
    @lodge = Lodge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lodge }
    end
  end

  # GET /lodges/new
  # GET /lodges/new.json
  def new
    @lodge = Lodge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lodge }
    end
  end

  # GET /lodges/1/edit
  def edit
    @lodge = Lodge.find(params[:id])
  end

  # POST /lodges
  # POST /lodges.json
  def create
    @lodge = Lodge.new(params[:lodge])

    respond_to do |format|
      if @lodge.save
        format.html { redirect_to @lodge, notice: 'Lodge was successfully created.' }
        format.json { render json: @lodge, status: :created, location: @lodge }
      else
        format.html { render action: "new" }
        format.json { render json: @lodge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lodges/1
  # PUT /lodges/1.json
  def update
    @lodge = Lodge.find(params[:id])

    respond_to do |format|
      if @lodge.update_attributes(params[:lodge])
        format.html { redirect_to @lodge, notice: 'Lodge was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lodge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lodges/1
  # DELETE /lodges/1.json
  def destroy
    @lodge = Lodge.find(params[:id])
    @lodge.destroy

    respond_to do |format|
      format.html { redirect_to lodges_url }
      format.json { head :ok }
    end
  end
end
