class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.new_contact_form.subject
  #
  def new_contact_form(contact_form)
    @contact_form = contact_form
    mail to: "alexrogna@yahoo.com", subject: 'Formular de contact'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.new_testimonial.subject
  #
  def new_testimonial(testimonial)
    @testimonial = testimonial
    mail to: "alexrogna@yahoo.com", subject: 'Testimonial nou'
  end
end
