class ProductCategoriesController < ApplicationController
  before_action :set_product_category, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show]
  # GET /product_categories or /product_categories.json
  def index

    @product_categories = ProductCategory.all.order("id DESC")

  end

  # GET /product_categories/1 or /product_categories/1.json
  def show
  end

  # GET /product_categories/new
  def new
    @product_category = ProductCategory.new
  end

  # GET /product_categories/1/edit
  def edit
  end

  # POST /product_categories or /product_categories.json
  def create
    @product_category = ProductCategory.new(product_category_params)

    respond_to do |format|
      if @product_category.save
        format.html { redirect_to product_categories_path, notice: "Categoria de produse a fost adaugata cu succes." }
        format.json { render :show, status: :created, location: @product_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_categories/1 or /product_categories/1.json
  def update
    respond_to do |format|
      if @product_category.update(product_category_params)
        format.html { redirect_to product_categories_path, notice: "Categoria de produse a fost modificata." }
        format.json { render :show, status: :ok, location: @product_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_categories/1 or /product_categories/1.json
  def destroy
    @product_category.destroy

    respond_to do |format|
      format.html { redirect_to product_categories_url, notice: "Categoria de produse a fost stearsa." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @product_category = ProductCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_category_params
      params.require(:product_category).permit(:name, :title, :icon_id, :description, :cover_image, :front_image, :remove_cover_image, :remove_front_image )
    end
end
