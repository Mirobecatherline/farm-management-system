class CoffeberriesController < ApplicationController
  before_action :set_coffeberry, only: %i[ show edit update destroy ]

  # GET /coffeberries or /coffeberries.json
  def index
    @coffeberries = Coffeberry.all
  end

  # GET /coffeberries/1 or /coffeberries/1.json
  def show
  end

  # GET /coffeberries/new
  def new
    @coffeberry = Coffeberry.new
  end

  # GET /coffeberries/1/edit
  def edit
  end

  # POST /coffeberries or /coffeberries.json
  def create
    @coffeberry = Coffeberry.new(coffeberry_params)

    respond_to do |format|
      if @coffeberry.save
        format.html { redirect_to coffeberry_url(@coffeberry), notice: "Coffeberry was successfully created." }
        format.json { render :show, status: :created, location: @coffeberry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coffeberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffeberries/1 or /coffeberries/1.json
  def update
    respond_to do |format|
      if @coffeberry.update(coffeberry_params)
        format.html { redirect_to coffeberry_url(@coffeberry), notice: "Coffeberry was successfully updated." }
        format.json { render :show, status: :ok, location: @coffeberry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coffeberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffeberries/1 or /coffeberries/1.json
  def destroy
    @coffeberry.destroy

    respond_to do |format|
      format.html { redirect_to coffeberries_url, notice: "Coffeberry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffeberry
      @coffeberry = Coffeberry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coffeberry_params
      params.require(:coffeberry).permit(:name)
    end
end
