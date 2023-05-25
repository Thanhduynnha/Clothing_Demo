class SkirtsController < ApplicationController
  before_action :set_skirt, only: %i[ show edit update destroy ]

  # GET /skirts or /skirts.json
  def index
    @skirts = Skirt.all
  end

  # GET /skirts/1 or /skirts/1.json
  def show
  end

  # GET /skirts/new
  def new
    @skirt = Skirt.new
  end

  # GET /skirts/1/edit
  def edit
  end

  # POST /skirts or /skirts.json
  def create
    @skirt = Skirt.new(skirt_params)

    respond_to do |format|
      if @skirt.save
        format.html { redirect_to skirt_url(@skirt), notice: "Skirt was successfully created." }
        format.json { render :show, status: :created, location: @skirt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skirts/1 or /skirts/1.json
  def update
    respond_to do |format|
      if @skirt.update(skirt_params)
        format.html { redirect_to skirt_url(@skirt), notice: "Skirt was successfully updated." }
        format.json { render :show, status: :ok, location: @skirt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skirts/1 or /skirts/1.json
  def destroy
    @skirt.destroy

    respond_to do |format|
      format.html { redirect_to skirts_url, notice: "Skirt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skirt
      @skirt = Skirt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skirt_params
      params.require(:skirt).permit(:Fullname, :Description, :Quantity, :Price, :Url)
    end
end
