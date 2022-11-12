class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.where(approved: true)
    @promotion = Promotion.where(is_active: true).between_dates(Date.today).last
  end
end
