class AdminQuickAccessController < ApplicationController
  before_action :authenticate_user!
  def index
    @testimonials = Testimonial.all
    @products = Product.all
    @frezarimdfs = Frezarimdf.all
    @projects = Project.all
    @services = Service.all
    @contact_forms = ContactForm.all
  end
end