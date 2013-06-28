class AlumsController < ApplicationController
  # GET /alums
  # GET /alums.json
  def index
    @alums = Alum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alums }
    end
  end

  # GET /alums/1
  # GET /alums/1.json
  def show
    @alum = Alum.find(params[:id])

    flash[:notice] = 'Testing the flash message.'

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alum }
    end
  end

  # GET /alums/new
  # GET /alums/new.json
  def new
    @alum = Alum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alum }
    end
  end

  # GET /alums/1/edit
  def edit
    @alum = Alum.find(params[:id])
  end

  # POST /alums
  # POST /alums.json
  def create
    @alum = Alum.new(params[:alum])

    respond_to do |format|
      if @alum.save
        format.html { redirect_to @alum, notice: 'Alum was successfully created.' }
        format.json { render json: @alum, status: :created, location: @alum }
      else
        format.html { render action: "new" }
        format.json { render json: @alum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alums/1
  # PUT /alums/1.json
  def update
    @alum = Alum.find(params[:id])

    respond_to do |format|
      if @alum.update_attributes(params[:alum])
        format.html { redirect_to @alum, notice: 'Alum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alums/1
  # DELETE /alums/1.json
  def destroy
    @alum = Alum.find(params[:id])
    @alum.destroy

    respond_to do |format|
      format.html { redirect_to alums_url }
      format.json { head :no_content }
    end
  end
end
