class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.new_contact_form.subject
  #
  def new_contact_form(contact_form)
    @company = Company.first
    @contact_form = contact_form
    mail to: @company.email_notice_contact, bcc: "vlad.rogna@gmail.com", subject: 'Formular de contact'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.new_testimonial.subject
  #
  def new_testimonial(testimonial)
    @company = Company.first
    @testimonial = testimonial
    mail to: @company.email_notice_contact, bcc: "vlad.rogna@gmail.com", subject: 'Testimonial nou'
  end
end
