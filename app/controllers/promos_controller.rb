class PromosController < ApplicationController
  before_action :set_promo, only: %i[ show update destroy ]

  # GET /promos
  def index
    @promos = Promo.all

    render json: @promos
  end

  # GET /promos/1
  def show
    render json: @promo
  end

  # POST /promos
  def create
    @promo = Promo.new(promo_params)

    if @promo.save
      render json: @promo, status: :created, location: @promo
    else
      render json: @promo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /promos/1
  def update
    if @promo.update(promo_params)
      render json: @promo
    else
      render json: @promo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /promos/1
  def destroy
    @promo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo
      @promo = Promo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promo_params
      params.require(:promo).permit(:code, :discount, :name)
    end
end
