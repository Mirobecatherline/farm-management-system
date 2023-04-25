class FactoryfarmberriesController < ApplicationController
  before_action :set_factoryfarmberry, only: %i[ show edit update destroy ]

  # GET /factoryfarmberries or /factoryfarmberries.json
  def index
    @factoryfarmberries = Factoryfarmberry.all
  end

  # GET /factoryfarmberries/1 or /factoryfarmberries/1.json
  def show
  end

  # GET /factoryfarmberries/new
  def new
    @factoryfarmberry = Factoryfarmberry.new
  end

  # GET /factoryfarmberries/1/edit
  def edit
  end

  # POST /factoryfarmberries or /factoryfarmberries.json
  def create
    @factoryfarmberry = Factoryfarmberry.new(factoryfarmberry_params)

    respond_to do |format|
      if @factoryfarmberry.save
        format.html { redirect_to factoryfarmberry_url(@factoryfarmberry), notice: "Factoryfarmberry was successfully created." }
        format.json { render :show, status: :created, location: @factoryfarmberry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @factoryfarmberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factoryfarmberries/1 or /factoryfarmberries/1.json
  def update
    respond_to do |format|
      if @factoryfarmberry.update(factoryfarmberry_params)
        format.html { redirect_to factoryfarmberry_url(@factoryfarmberry), notice: "Factoryfarmberry was successfully updated." }
        format.json { render :show, status: :ok, location: @factoryfarmberry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @factoryfarmberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factoryfarmberries/1 or /factoryfarmberries/1.json
  def destroy
    @factoryfarmberry.destroy

    respond_to do |format|
      format.html { redirect_to factoryfarmberries_url, notice: "Factoryfarmberry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factoryfarmberry
      @factoryfarmberry = Factoryfarmberry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def factoryfarmberry_params
      params.require(:factoryfarmberry).permit(:kg, :season, :coffeberries_id, :factoryfarms_id)
    end
end
