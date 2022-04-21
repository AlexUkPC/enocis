class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company, only: %i[ show edit update destroy ]

  # GET /companies or /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1 or /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end
  
  def edit_photos
  end

  # POST /companies or /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to company_url(@company), notice: "Company was successfully created." }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1 or /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to admin_panel_path, notice: "Company was successfully updated." }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1 or /companies/1.json
  def destroy
    @company.destroy

    respond_to do |format|
      format.html { redirect_to companies_url, notice: "Company was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_params
      params.require(:company).permit(:address, :phone, :phone_name,:phone2, :phone2_name,:phone3, :phone3_name, :email1, :email2, :facebook, :instagram, :url_google_maps, :email_notice_contact, :frezari_mdf_cover_image, :frezari_mdf_front_image, :projects_cover_image, :projects_front_image, :social_projects_cover_image, :social_projects_front_image, :services_cover_image, :services_front_image, :contact_cover_image, :politica_de_confidentialitate_cover_image, :politica_cookies_cover_image, :remove_frezari_mdf_cover_image, :remove_frezari_mdf_front_image, :remove_projects_cover_image, :remove_projects_front_image, :remove_social_projects_cover_image, :remove_social_projects_front_image, :remove_services_cover_image, :remove_services_front_image, :remove_contact_cover_image, :remove_politica_de_confidentialitate_cover_image, :remove_politica_cookies_cover_image)
    end
end
