class ApplicationController < ActionController::Base
  before_action :get_product_categories, :set_contact_form
  private
  def get_product_categories
    @product_categories = ProductCategory.all.order("id ASC")
  end
  def set_contact_form
    @contact_form = ContactForm.new
  end
end
