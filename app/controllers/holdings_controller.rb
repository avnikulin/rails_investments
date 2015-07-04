class HoldingsController < ApplicationController
  before_action :set_holding, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  autocomplete :stock, :name, { :display_value => 'symbol_with_name', :full_model=>true }
  respond_to :html, :js
  
 # def get_autocomplete_items(parameters)
 #   items = Stock.select("DISTINCT CONCAT(' ', symbol, name) AS full_name, symbol, name").where(["CONCAT_WS(' ', symbol, name) LIKE ?", "%#{parameters[:term]}%"])
 # end

  # GET /holdings
  # GET /holdings.json
  def index
    @holdings = Holding.joins(:portfolio).where(portfolio_id: params[:portfolio_id])
    @portfolio = Portfolio.find(params[:portfolio_id])
  end

  # GET /holdings/1
  # GET /holdings/1.json
  def show
    #@holdings = current_user.holdings.order('created_at desc')
    #@holdings = current_user.portfolios.find params[:portfolio_id]
    #@holding = @holding.
    @holding = Holding.find_by_id(params[:id])
    @portfolio = Portfolio.find_by_id(params[:portfolio_id])
  end

  # GET /holdings/new
  def new
    @portfolio = current_user.portfolios.find params[:portfolio_id]
    @holding = @portfolio.holdings.build
  end

  # GET /holdings/1/edit
  def edit
    @holding = Holding.find_by_id(params[:id])
    @portfolio = Portfolio.find_by_id(params[:portfolio_id])
  end

  # POST /holdings
  # POST /holdings.json
  def create
    @portfolio = current_user.portfolios.find(params[:portfolio_id])
    #@holding = @portfolio.holdings.new(params[:id])
    @holding = @portfolio.holdings.new(holding_params)
    #@holding = Holding.find(params[:id])
    respond_to do |format|
      if @holding.save
        format.js
        format.html { redirect_to portfolio_path(@portfolio), notice: 'Holding was successfully created.' }
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
    @holding = Holding.find(params[:id])
    @portfolio = Portfolio.find(params[:portfolio_id])
    respond_to do |format|
      if @holding.update(holding_params)
        format.html { redirect_to portfolio_path(@portfolio), notice: 'Holding was successfully updated.' }
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
    @holding = Holding.find(params[:id])
    @holding.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_holdings_url, notice: 'Holding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_all
    @holding = Holding.joins(:portfolio).where(portfolio_id: params[:portfolio_id])
    @portfolio = Portfolio.find_by_id(params[:portfolio_id])
    @holding_add_stock = @portfolio.holdings.build
  end
  
  def update_all
    @portfolio = Portfolio.find(params[:portfolio_id])
    result = Holding.update(params[:holding].keys, params[:holding].values).reject { |p| p.errors.empty? }
    if result.empty?
      flash[:notice] = "Holdings updated"
      redirect_to portfolio_path(@portfolio)
    else
      holding_ids = result.collect {|i| i.id}
      flash[:error] = "Error(s) occurred updating holding(s): #{holding_ids.join ', '}"
      redirect_to portfolio_edit_all_path(@portfolio)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holding
      unless @holding = current_user.portfolios.where(id: params[:id])
        flash[:alert] = 'Holding not found.'
        #redirect_to root_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holding_params
      params.require(:holding).permit(:id, :user_id, :stock_id, :name, :portfolio_id, :amount, :position)
    end
end
