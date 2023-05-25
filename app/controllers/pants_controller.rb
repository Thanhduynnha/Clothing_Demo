class PantsController < ApplicationController
  before_action :set_pant, only: %i[ show edit update destroy ]

  # GET /pants or /pants.json
  def index
    @pants = Pant.all
  end

  # GET /pants/1 or /pants/1.json
  def show
  end

  # GET /pants/new
  def new
    @pant = Pant.new
  end

  # GET /pants/1/edit
  def edit
  end

  # POST /pants or /pants.json
  def create
    @pant = Pant.new(pant_params)

    respond_to do |format|
      if @pant.save
        format.html { redirect_to pant_url(@pant), notice: "Pant was successfully created." }
        format.json { render :show, status: :created, location: @pant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pants/1 or /pants/1.json
  def update
    respond_to do |format|
      if @pant.update(pant_params)
        format.html { redirect_to pant_url(@pant), notice: "Pant was successfully updated." }
        format.json { render :show, status: :ok, location: @pant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pants/1 or /pants/1.json
  def destroy
    @pant.destroy

    respond_to do |format|
      format.html { redirect_to pants_url, notice: "Pant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pant
      @pant = Pant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pant_params
      params.require(:pant).permit(:Fullname, :Description, :Quantity, :Price, :Url)
    end
end
