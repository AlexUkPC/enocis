class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.where(approved: true)
  end
end
