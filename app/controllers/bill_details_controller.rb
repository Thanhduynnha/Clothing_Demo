class BillDetailsController < ApplicationController
  before_action :set_bill_detail, only: %i[ show edit update destroy ]

  # GET /bill_details or /bill_details.json
  def index
    @bill_details = BillDetail.all
  end

  # GET /bill_details/1 or /bill_details/1.json
  def show
  end

  # GET /bill_details/new
  def new
    @bill_detail = BillDetail.new
  end

  # GET /bill_details/1/edit
  def edit
  end

  # POST /bill_details or /bill_details.json
  def create
    @bill_detail = BillDetail.new(bill_detail_params)

    respond_to do |format|
      if @bill_detail.save
        format.html { redirect_to bill_detail_url(@bill_detail), notice: "Bill detail was successfully created." }
        format.json { render :show, status: :created, location: @bill_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bill_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_details/1 or /bill_details/1.json
  def update
    respond_to do |format|
      if @bill_detail.update(bill_detail_params)
        format.html { redirect_to bill_detail_url(@bill_detail), notice: "Bill detail was successfully updated." }
        format.json { render :show, status: :ok, location: @bill_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bill_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_details/1 or /bill_details/1.json
  def destroy
    @bill_detail.destroy

    respond_to do |format|
      format.html { redirect_to bill_details_url, notice: "Bill detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_detail
      @bill_detail = BillDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bill_detail_params
      params.require(:bill_detail).permit(:BillID, :NameCus, :Phonenumber, :Product, :TotalBill)
    end
end
