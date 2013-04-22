class IdTypesController < ApplicationController
  # GET /id_types
  # GET /id_types.json
  def index
    @id_types = IdType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @id_types }
    end
  end

  # GET /id_types/1
  # GET /id_types/1.json
  def show
    @id_type = IdType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @id_type }
    end
  end

  # GET /id_types/new
  # GET /id_types/new.json
  def new
    @id_type = IdType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @id_type }
    end
  end

  # GET /id_types/1/edit
  def edit
    @id_type = IdType.find(params[:id])
  end

  # POST /id_types
  # POST /id_types.json
  def create
    @id_type = IdType.new(params[:id_type])

    respond_to do |format|
      if @id_type.save
        format.html { redirect_to @id_type, notice: 'Id type was successfully created.' }
        format.json { render json: @id_type, status: :created, location: @id_type }
      else
        format.html { render action: "new" }
        format.json { render json: @id_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /id_types/1
  # PUT /id_types/1.json
  def update
    @id_type = IdType.find(params[:id])

    respond_to do |format|
      if @id_type.update_attributes(params[:id_type])
        format.html { redirect_to @id_type, notice: 'Id type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @id_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id_types/1
  # DELETE /id_types/1.json
  def destroy
    @id_type = IdType.find(params[:id])
    @id_type.destroy

    respond_to do |format|
      format.html { redirect_to id_types_url }
      format.json { head :no_content }
    end
  end
end
