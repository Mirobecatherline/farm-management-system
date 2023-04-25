class FactoryfarmsController < ApplicationController
  before_action :set_factoryfarm, only: %i[ show edit update destroy ]

  # GET /factoryfarms or /factoryfarms.json
  def index
    @factoryfarms = Factoryfarm.all
  end

  # GET /factoryfarms/1 or /factoryfarms/1.json
  def show
  end

  # GET /factoryfarms/new
  def new
    @factoryfarm = Factoryfarm.new
  end

  # GET /factoryfarms/1/edit
  def edit
  end

  # POST /factoryfarms or /factoryfarms.json
  def create
    @factoryfarm = Factoryfarm.new(factoryfarm_params)

    respond_to do |format|
      if @factoryfarm.save
        format.html { redirect_to factoryfarm_url(@factoryfarm), notice: "Factoryfarm was successfully created." }
        format.json { render :show, status: :created, location: @factoryfarm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @factoryfarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factoryfarms/1 or /factoryfarms/1.json
  def update
    respond_to do |format|
      if @factoryfarm.update(factoryfarm_params)
        format.html { redirect_to factoryfarm_url(@factoryfarm), notice: "Factoryfarm was successfully updated." }
        format.json { render :show, status: :ok, location: @factoryfarm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @factoryfarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factoryfarms/1 or /factoryfarms/1.json
  def destroy
    @factoryfarm.destroy

    respond_to do |format|
      format.html { redirect_to factoryfarms_url, notice: "Factoryfarm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factoryfarm
      @factoryfarm = Factoryfarm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def factoryfarm_params
      params.require(:factoryfarm).permit(:factory_id, :name)
    end
end
