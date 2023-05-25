class SourceOfSuppliesController < ApplicationController
  before_action :set_source_of_supply, only: %i[ show edit update destroy ]

  # GET /source_of_supplies or /source_of_supplies.json
  def index
    @source_of_supplies = SourceOfSupply.all
  end

  # GET /source_of_supplies/1 or /source_of_supplies/1.json
  def show
  end

  # GET /source_of_supplies/new
  def new
    @source_of_supply = SourceOfSupply.new
  end

  # GET /source_of_supplies/1/edit
  def edit
  end

  # POST /source_of_supplies or /source_of_supplies.json
  def create
    @source_of_supply = SourceOfSupply.new(source_of_supply_params)

    respond_to do |format|
      if @source_of_supply.save
        format.html { redirect_to source_of_supply_url(@source_of_supply), notice: "Source of supply was successfully created." }
        format.json { render :show, status: :created, location: @source_of_supply }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @source_of_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_of_supplies/1 or /source_of_supplies/1.json
  def update
    respond_to do |format|
      if @source_of_supply.update(source_of_supply_params)
        format.html { redirect_to source_of_supply_url(@source_of_supply), notice: "Source of supply was successfully updated." }
        format.json { render :show, status: :ok, location: @source_of_supply }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @source_of_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_of_supplies/1 or /source_of_supplies/1.json
  def destroy
    @source_of_supply.destroy

    respond_to do |format|
      format.html { redirect_to source_of_supplies_url, notice: "Source of supply was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_of_supply
      @source_of_supply = SourceOfSupply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def source_of_supply_params
      params.require(:source_of_supply).permit(:S_ID, :Fullname, :Phonenumber, :Address, :Email)
    end
end
