require "test_helper"

class NotifierMailerTest < ActionMailer::TestCase
  test "new_contact_form" do
    mail = NotifierMailer.new_contact_form
    assert_equal "New contact form", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_testimonial" do
    mail = NotifierMailer.new_testimonial
    assert_equal "New testimonial", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
