class FrezarimdfsController < ApplicationController
  before_action :set_frezarimdf, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /frezarimdfs or /frezarimdfs.json
  def index
    @frezarimdf_categories = FrezarimdfCategory.all
    cate = params[:cate]
    if !cate.nil?
      @frezarimdfs = Frezarimdf.where(frezarimdf_category_id: cate).order("id DESC")
    else
      @frezarimdfs = Frezarimdf.all.order("id DESC")
    end 
  end
  
  def admin_index
    @frezarimdf_categories = FrezarimdfCategory.all
    cate = params[:cate]
    if !cate.nil?
      @frezarimdfs = Frezarimdf.where(frezarimdf_category_id: cate).order("id DESC")
    else
      @frezarimdfs = Frezarimdf.all.order("id DESC")
    end 
  end

  # GET /frezarimdfs/1 or /frezarimdfs/1.json
  def show
    @frezarimdfs = Frezarimdf.all.order("id DESC")
  end

  # GET /frezarimdfs/new
  def new
    @frezarimdf = Frezarimdf.new
  end

  # GET /frezarimdfs/1/edit
  def edit
  end

  # POST /frezarimdfs or /frezarimdfs.json
  def create
    @frezarimdf = Frezarimdf.new(frezarimdf_params)

    respond_to do |format|
      if @frezarimdf.save
        format.html { redirect_to admin_frezarimdfs_path, notice: "Frezarimdf was successfully created." }
        format.json { render :show, status: :created, location: @frezarimdf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frezarimdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frezarimdfs/1 or /frezarimdfs/1.json
  def update
    respond_to do |format|
      if @frezarimdf.update(frezarimdf_params)
        format.html { redirect_to frezarimdf_url(@frezarimdf), notice: "Frezarimdf was successfully updated." }
        format.json { render :show, status: :ok, location: @frezarimdf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frezarimdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frezarimdfs/1 or /frezarimdfs/1.json
  def destroy
    @frezarimdf.destroy

    respond_to do |format|
      format.html { redirect_to frezarimdfs_url, notice: "Frezarimdf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frezarimdf
      @frezarimdf = Frezarimdf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frezarimdf_params
      params.require(:frezarimdf).permit(:name, :image, :image_svg, :frezarimdf_category_id, :remove_image_svg)
    end
end
