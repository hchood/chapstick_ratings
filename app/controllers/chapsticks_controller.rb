class ChapsticksController < ApplicationController
  before_action :set_chapstick, only: [:show, :edit, :update, :destroy]

  # GET /chapsticks
  # GET /chapsticks.json
  def index
    @chapsticks = Chapstick.all
  end

  # GET /chapsticks/1
  # GET /chapsticks/1.json
  def show
  end

  # GET /chapsticks/new
  def new
    @chapstick = Chapstick.new
  end

  # GET /chapsticks/1/edit
  def edit
  end

  # POST /chapsticks
  # POST /chapsticks.json
  def create
    @chapstick = Chapstick.new(chapstick_params)

    respond_to do |format|
      if @chapstick.save
        format.html { redirect_to @chapstick, notice: 'Chapstick was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chapstick }
      else
        format.html { render action: 'new' }
        format.json { render json: @chapstick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapsticks/1
  # PATCH/PUT /chapsticks/1.json
  def update
    respond_to do |format|
      if @chapstick.update(chapstick_params)
        format.html { redirect_to @chapstick, notice: 'Chapstick was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chapstick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapsticks/1
  # DELETE /chapsticks/1.json
  def destroy
    @chapstick.destroy
    respond_to do |format|
      format.html { redirect_to chapsticks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapstick
      @chapstick = Chapstick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapstick_params
      params.require(:chapstick).permit(:brand, :flavor)
    end
end
