class BlazersController < ApplicationController
  before_action :set_blazer, only: %i[ show edit update destroy ]

  # GET /blazers or /blazers.json
  def index
    @blazers = Blazer.all
  end

  # GET /blazers/1 or /blazers/1.json
  def show
  end

  # GET /blazers/new
  def new
    @blazer = Blazer.new
  end

  # GET /blazers/1/edit
  def edit
  end

  # POST /blazers or /blazers.json
  def create
    @blazer = Blazer.new(blazer_params)

    respond_to do |format|
      if @blazer.save
        format.html { redirect_to blazer_url(@blazer), notice: "Blazer was successfully created." }
        format.json { render :show, status: :created, location: @blazer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blazer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blazers/1 or /blazers/1.json
  def update
    respond_to do |format|
      if @blazer.update(blazer_params)
        format.html { redirect_to blazer_url(@blazer), notice: "Blazer was successfully updated." }
        format.json { render :show, status: :ok, location: @blazer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blazer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blazers/1 or /blazers/1.json
  def destroy
    @blazer.destroy

    respond_to do |format|
      format.html { redirect_to blazers_url, notice: "Blazer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blazer
      @blazer = Blazer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blazer_params
      params.fetch(:blazer, {})
    end
end
