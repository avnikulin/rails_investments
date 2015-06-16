class HoldingsController < ApplicationController
  before_action :set_holding, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /holdings
  # GET /holdings.json
  def index
    @holdings = Holding.joins(:portfolio).where(portfolio_id: params[:portfolio_id])
  end

  # GET /holdings/1
  # GET /holdings/1.json
  def show
    @holdings = current_user.holdings.order('created_at desc')
  end

  # GET /holdings/new
  def new
    @holding = current_user.holdings.new
  end

  # GET /holdings/1/edit
  def edit
  end

  # POST /holdings
  # POST /holdings.json
  def create
    @holding = current_user.holdings.new(holding_params)

    respond_to do |format|
      if @holding.save
        format.html { redirect_to @holding, notice: 'Holding was successfully created.' }
        format.json { render :show, status: :created, location: @holding }
      else
        format.html { render :new }
        format.json { render json: @holding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holdings/1
  # PATCH/PUT /holdings/1.json
  def update    
    respond_to do |format|
      if @holding.update(holding_params)
        format.html { redirect_to @holding, notice: 'Holding was successfully updated.' }
        format.json { render :show, status: :ok, location: @holding }
      else
        format.html { render :edit }
        format.json { render json: @holding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holdings/1
  # DELETE /holdings/1.json
  def destroy
    @holding.destroy
    respond_to do |format|
      format.html { redirect_to holdings_url, notice: 'Holding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holding
      unless @holding = current_user.holdings.where(id: params[:id]).first
        flash[:alert] = 'Holding not found.'
        redirect_to root_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holding_params
      params.require(:holding).permit(:id, :user_id, :stock_id, :name, :portfolio_id, :amount)
    end
end
