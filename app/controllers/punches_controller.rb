class PunchesController < ApplicationController
  before_action :set_punch, only: [:show, :edit, :update, :destroy]

  # GET /punches
  # GET /punches.json
  def index
    @punches = Punch.all
  end

  # GET /punches/1
  # GET /punches/1.json
  def show
  end

  # GET /punches/new
  def new
    @punch = Punch.new
  end

  # GET /punches/1/edit
  def edit
  end

  # POST /punches
  # POST /punches.json
  def create
    @punch = Punch.new(punch_params)

    respond_to do |format|
      if @punch.save
        format.html { redirect_to @punch, notice: 'Punch was successfully created.' }
        format.json { render :show, status: :created, location: @punch }
      else
        format.html { render :new }
        format.json { render json: @punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /punches/1
  # PATCH/PUT /punches/1.json
  def update
    respond_to do |format|
      if @punch.update(punch_params)
        format.html { redirect_to @punch, notice: 'Punch was successfully updated.' }
        format.json { render :show, status: :ok, location: @punch }
      else
        format.html { render :edit }
        format.json { render json: @punch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punches/1
  # DELETE /punches/1.json
  def destroy
    @punch.destroy
    respond_to do |format|
      format.html { redirect_to punches_url, notice: 'Punch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_punch
      @punch = Punch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def punch_params
      params.require(:punch).permit(:time)
    end
end
