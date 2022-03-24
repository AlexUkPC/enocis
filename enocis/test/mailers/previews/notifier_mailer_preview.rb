# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier_mailer/new_contact_form
  def new_contact_form
    NotifierMailer.new_contact_form
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifier_mailer/new_testimonial
  def new_testimonial
    NotifierMailer.new_testimonial
  end

end
