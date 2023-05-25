class InforCustomersController < ApplicationController
  before_action :set_infor_customer, only: %i[ show edit update destroy ]

  # GET /infor_customers or /infor_customers.json
  def index
    @infor_customers = InforCustomer.all
  end

  # GET /infor_customers/1 or /infor_customers/1.json
  def show
  end

  # GET /infor_customers/new
  def new
    @infor_customer = InforCustomer.new
  end

  # GET /infor_customers/1/edit
  def edit
  end

  # POST /infor_customers or /infor_customers.json
  def create
    @infor_customer = InforCustomer.new(infor_customer_params)

    respond_to do |format|
      if @infor_customer.save
        format.html { redirect_to infor_customer_url(@infor_customer), notice: "Infor customer was successfully created." }
        format.json { render :show, status: :created, location: @infor_customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @infor_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infor_customers/1 or /infor_customers/1.json
  def update
    respond_to do |format|
      if @infor_customer.update(infor_customer_params)
        format.html { redirect_to infor_customer_url(@infor_customer), notice: "Infor customer was successfully updated." }
        format.json { render :show, status: :ok, location: @infor_customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @infor_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infor_customers/1 or /infor_customers/1.json
  def destroy
    @infor_customer.destroy

    respond_to do |format|
      format.html { redirect_to infor_customers_url, notice: "Infor customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infor_customer
      @infor_customer = InforCustomer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infor_customer_params
      params.require(:infor_customer).permit(:Name_cus, :Dob, :Phonenumber, :Address, :Point)
    end
end
