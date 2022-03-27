class FrezarimdfCategoriesController < ApplicationController
  before_action :set_frezarimdf_category, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /frezarimdf_categories or /frezarimdf_categories.json
  def index
      @frezarimdf_categories = FrezarimdfCategory.all

  end

  # GET /frezarimdf_categories/1 or /frezarimdf_categories/1.json
  def show
  end

  # GET /frezarimdf_categories/new
  def new
    @frezarimdf_category = FrezarimdfCategory.new
  end

  # GET /frezarimdf_categories/1/edit
  def edit
  end

  # POST /frezarimdf_categories or /frezarimdf_categories.json
  def create
    @frezarimdf_category = FrezarimdfCategory.new(frezarimdf_category_params)

    respond_to do |format|
      if @frezarimdf_category.save
        format.html { redirect_to frezarimdf_category_url(@frezarimdf_category), notice: "Frezarimdf category was successfully created." }
        format.json { render :show, status: :created, location: @frezarimdf_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frezarimdf_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frezarimdf_categories/1 or /frezarimdf_categories/1.json
  def update
    respond_to do |format|
      if @frezarimdf_category.update(frezarimdf_category_params)
        format.html { redirect_to frezarimdf_category_url(@frezarimdf_category), notice: "Frezarimdf category was successfully updated." }
        format.json { render :show, status: :ok, location: @frezarimdf_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frezarimdf_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frezarimdf_categories/1 or /frezarimdf_categories/1.json
  def destroy
    @frezarimdf_category.destroy

    respond_to do |format|
      format.html { redirect_to frezarimdf_categories_url, notice: "Frezarimdf category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frezarimdf_category
      @frezarimdf_category = FrezarimdfCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frezarimdf_category_params
      params.require(:frezarimdf_category).permit(:name, :icon_id)
    end
end
