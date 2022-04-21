class SocialProjectsController < ApplicationController
  before_action :set_social_project, only: %i[ show edit update destroy ]

  # GET /social_projects or /social_projects.json
  def index
    @social_projects = SocialProject.all.order("id ASC")
  end

  def admin_index
    @social_projects = SocialProject.all.order("id DESC")
  end

  # GET /social_projects/1 or /social_projects/1.json
  def show
  end

  # GET /social_projects/new
  def new
    @social_project = SocialProject.new
  end

  # GET /social_projects/1/edit
  def edit
  end

  # POST /social_projects or /social_projects.json
  def create
    @social_project = SocialProject.new(social_project_params)

    respond_to do |format|
      if @social_project.save
        format.html { redirect_to admin_proiecte_sociale_path, notice: "Proiectul social a fost adaugat cu succes." }
        format.json { render :show, status: :created, location: @social_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_projects/1 or /social_projects/1.json
  def update
    respond_to do |format|
      if @social_project.update(social_project_params)
        format.html { redirect_to admin_proiecte_sociale_path, notice: "Proiectul social a fost modificat." }
        format.json { render :show, status: :ok, location: @social_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_projects/1 or /social_projects/1.json
  def destroy
    @social_project.destroy

    respond_to do |format|
      format.html { redirect_to admin_proiecte_sociale_url, notice: "Proiectul social a fost sters." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_project
      @social_project = SocialProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_project_params
      params.require(:social_project).permit(:title, :description, :main_image, images: [], youtubesps_attributes:[:id, :url, :_destroy])
    end
end
