class PromotionsController < ApplicationController
  before_action :set_promotion, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /promotions or /promotions.json
  def index
    @promotions = Promotion.all
  end

  # GET /promotions/1 or /promotions/1.json
  def show
  end

  # GET /promotions/new
  def new
    @promotion = Promotion.new
  end

  # GET /promotions/1/edit
  def edit
  end

  # POST /promotions or /promotions.json
  def create
    @promotion = Promotion.new(promotion_params)

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to promotion_url(@promotion), notice: "Promotion was successfully created." }
        format.json { render :show, status: :created, location: @promotion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotions/1 or /promotions/1.json
  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to promotion_url(@promotion), notice: "Promotion was successfully updated." }
        format.json { render :show, status: :ok, location: @promotion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1 or /promotions/1.json
  def destroy
    @promotion.destroy

    respond_to do |format|
      format.html { redirect_to promotions_url, notice: "Promotion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promotion_params
      params.require(:promotion).permit(:title, :title_color, :start_date, :end_date, :is_active, :btn_text, :btn_url, :bg_color, :bg_image, :remove_bg_image, :main_image_landscape, :remove_main_image_landscape, :main_image_portrait, :remove_main_image_portrait)
    end
end
