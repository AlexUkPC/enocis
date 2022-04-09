class ApplicationController < ActionController::Base
  before_action :get_product_categories, :set_contact_form, :get_company_details
  helper_method :retrieve_last_index_page_or_default
  def store_last_index_page
    session[:last_index_page] = request.fullpath
  end

  def retrieve_last_index_page_or_default(default_path: root_path)
    session[:last_index_page] || default_path
  end
  
  private
  def get_product_categories
    @product_categories = ProductCategory.all.order("id ASC")
  end
  def get_company_details
    @company = Company.first
  end
  def set_contact_form
    @contact_form = ContactForm.new
  end
end
