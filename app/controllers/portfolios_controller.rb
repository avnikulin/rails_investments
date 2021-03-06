class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  autocomplete :stock, :symbol
  respond_to :html, :js
  
  # GET /portfolios
  # GET /portfolios.json
  def index
    @portfolios = current_user.portfolios.order('created_at desc')
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
    @portfolios = current_user.portfolios.where.not(id: params[:id]).order('created_at desc')
    @holdings = @portfolio.holdings.select(:stock_id).
  select(@portfolio.holdings.arel_table[:amount].sum.as("total_sum")).select(%q{
  sum(case when position = 'Buy' then amount else 0 end) as sum_buy}).select(%q{
  sum(case when position = 'Sell' then amount else 0 end) as sum_sell}).
  group(:stock_id)
  end

  # GET /portfolios/new
  def new
    @portfolio = current_user.portfolios.new
    @portfolio.holdings.build
  end

  # GET /portfolios/1/edit
  def edit
    @portfolio = current_user.portfolios.find params[:id]
    @portfolio.holdings.build
  end

  # POST /portfolios
  # POST /portfolios.json
  def create
    #@portfolios = current_user.portfolios.order('created_at desc')
    @portfolio = current_user.portfolios.new(portfolio_params)
    #@portfolio.holdings.user_id = current_user.id

    respond_to do |format|
      if @portfolio.save
        format.js
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
    
    
    
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def basic  
    @portfolio = current_user.portfolios.find params[:id]
    @holdings = @portfolio.holdings.select(:stock_id).
  select(@portfolio.holdings.arel_table[:amount].sum.as("total_sum")).select(%q{
  sum(case when position = 'Buy' then amount else 0 end) as sum_buy}).select(%q{
  sum(case when position = 'Sell' then amount else 0 end) as sum_sell}).
  group(:stock_id)
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def transactions  
    @portfolio = current_user.portfolios.find params[:id]
    @holdings = @portfolio.holdings.order('created_at desc')
    respond_to do |format|
      format.js
    end
  end
  
  def detailed  
    @portfolio = current_user.portfolios.find params[:id]
    @holdings = @portfolio.holdings.order('created_at desc')
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      unless @portfolio = current_user.portfolios.where(id: params[:id]).first
        flash[:alert] = 'Portfolio not found.'
        redirect_to root_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:user_id, :holding_id, :name, holdings_attributes: [:id, :stock, :amount, :stock_id, :user_id, :date_purchased, :traded_at])
    end
end