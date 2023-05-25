class BlazerAndJacketsController < ApplicationController
  before_action :set_blazer_and_jacket, only: %i[ show edit update destroy ]

  # GET /blazer_and_jackets or /blazer_and_jackets.json
  def index
    @blazer_and_jackets = BlazerAndJacket.all
  end

  # GET /blazer_and_jackets/1 or /blazer_and_jackets/1.json
  def show
  end

  # GET /blazer_and_jackets/new
  def new
    @blazer_and_jacket = BlazerAndJacket.new
  end

  # GET /blazer_and_jackets/1/edit
  def edit
  end

  # POST /blazer_and_jackets or /blazer_and_jackets.json
  def create
    @blazer_and_jacket = BlazerAndJacket.new(blazer_and_jacket_params)

    respond_to do |format|
      if @blazer_and_jacket.save
        format.html { redirect_to blazer_and_jacket_url(@blazer_and_jacket), notice: "Blazer and jacket was successfully created." }
        format.json { render :show, status: :created, location: @blazer_and_jacket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blazer_and_jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blazer_and_jackets/1 or /blazer_and_jackets/1.json
  def update
    respond_to do |format|
      if @blazer_and_jacket.update(blazer_and_jacket_params)
        format.html { redirect_to blazer_and_jacket_url(@blazer_and_jacket), notice: "Blazer and jacket was successfully updated." }
        format.json { render :show, status: :ok, location: @blazer_and_jacket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blazer_and_jacket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blazer_and_jackets/1 or /blazer_and_jackets/1.json
  def destroy
    @blazer_and_jacket.destroy

    respond_to do |format|
      format.html { redirect_to blazer_and_jackets_url, notice: "Blazer and jacket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blazer_and_jacket
      @blazer_and_jacket = BlazerAndJacket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blazer_and_jacket_params
      params.require(:blazer_and_jacket).permit(:Fullname, :Description, :Quantity, :Price, :Url)
    end
end
