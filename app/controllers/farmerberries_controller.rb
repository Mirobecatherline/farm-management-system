class FarmerberriesController < ApplicationController
  before_action :set_farmerberry, only: %i[ show edit update destroy ]

  # GET /farmerberries or /farmerberries.json
  def index
    @farmerberries = Farmerberry.all
  end

  # GET /farmerberries/1 or /farmerberries/1.json
  def show
  end

  # GET /farmerberries/new
  def new
    @farmerberry = Farmerberry.new
  end

  # GET /farmerberries/1/edit
  def edit
  end

  # POST /farmerberries or /farmerberries.json
  def create
    @farmerberry = Farmerberry.new(farmerberry_params)

    respond_to do |format|
      if @farmerberry.save
        format.html { redirect_to farmerberry_url(@farmerberry), notice: "Farmerberry was successfully created." }
        format.json { render :show, status: :created, location: @farmerberry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @farmerberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farmerberries/1 or /farmerberries/1.json
  def update
    respond_to do |format|
      if @farmerberry.update(farmerberry_params)
        format.html { redirect_to farmerberry_url(@farmerberry), notice: "Farmerberry was successfully updated." }
        format.json { render :show, status: :ok, location: @farmerberry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @farmerberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmerberries/1 or /farmerberries/1.json
  def destroy
    @farmerberry.destroy

    respond_to do |format|
      format.html { redirect_to farmerberries_url, notice: "Farmerberry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmerberry
      @farmerberry = Farmerberry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farmerberry_params
      params.require(:farmerberry).permit(:season, :kg, :farmers_id, :coffeberries_id)
    end
end
